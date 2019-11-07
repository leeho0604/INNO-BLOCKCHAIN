#pragma once
#include <iostream>
#include <vector>
#include <time.h>
#include <sstream>
#include <iomanip>


#include <openssl/rsa.h>
#include <openssl/rand.h>
#include <openssl/sha.h>
#include <openssl/evp.h>
#include <openssl/objects.h>
#include <openssl/x509.h>
#include <openssl/err.h>
#include <openssl/pem.h>
#include <openssl/ssl.h>
#include <openssl/engine.h>

#include <fc/crypto/rand.hpp>
#include <fc/crypto/aes.hpp>

//detach key library
extern "C"
{
#include "fc/crypto/sss/sss.h"
#include "fc/crypto/sss/randombytes.h"
}

namespace lc{
    namespace rsa{
        static std::string getPublicKey(){
            FILE* fp = fopen("public.key", "r");
            fseek(fp, 0, SEEK_END);
            long size = ftell(fp);
            fseek(fp, 0, SEEK_SET);

            std::string strKey;

            std::string strData;
            strData.resize(size+1);

            fread(&strData.at(0), 1, size, fp);

            return strData;
            /*
            FILE* fp = fopen("public.key", "r");
            fseek(fp, 0, SEEK_END);
            long size = ftell(fp);
            fseek(fp, 0, SEEK_SET);

            std::string strKey;

            std::string strData;
            strData.resize(size+1);

            fread(&strData.at(0), 1, size, fp);

            int npos, nold = 0;
            nold = strData.find('\n', nold);   //첫줄날리기
            while ((npos = strData.find('\n', nold)) != -1) {
                strKey += strData.substr(nold, (npos-nold));
                if (strData.at(npos + 1) == '-'){
                    break;
                }
                nold = npos+1;
            }
            std::cout << "strKey: "<< strKey << std::endl;
            fclose(fp);

            return strKey;
            */
        }

        static std::string getPrivateDecRsa(const std::string& str, RSA* pRsa){
            std::string strRet;
            strRet.resize(str.size());
            int rtn = RSA_private_decrypt( str.length(),
                                      (unsigned char*)&str.at(0),
                                      (unsigned char*)&strRet.at(0),
                                      pRsa, RSA_PKCS1_PADDING );
            if( rtn == -1){
                std::cout << "getPrivateDecRsa Failed" << std::endl;
                return "";
            }
            strRet.resize(rtn);
            
            return strRet;
        }
        
        static std::string getPublicEncRsa(const std::string& str, RSA* pRsa){
            std::string strRet;
            strRet.resize(str.size() + 2048);
            int rtn = RSA_public_encrypt( str.length(),
                                      (unsigned char*)&str.at(0),
                                      (unsigned char*)&strRet.at(0),
                                      pRsa, RSA_PKCS1_PADDING );

            if( rtn == -1){
                std::cout << "getPublicEncRsa Failed" << std::endl;
                return "";
            }
            strRet.resize(rtn);
            
            return strRet;
        }

        static RSA* Generate_KeyPair(void){
            char rand_buff[16];
            EVP_PKEY *pkey = NULL;
            RSA* r;
            
            char* pass = "eos_transkey";//for now

            int bits = 1024;       //      512, 1024, 2048, 4096
            OpenSSL_add_all_algorithms();

            RAND_seed(rand_buff, 16); //On linux: RAND_load_file("/dev/urandom", 1024);
            r = RSA_generate_key(bits,3,NULL,NULL);

            if (RSA_check_key(r)!=1){
                printf("RSA_check_key_ Error>>>>>>>>>>>>>>>>>>>>>>>>>>>");
            }

            //Create EVP to save to file.
            pkey = EVP_PKEY_new();
            EVP_PKEY_assign_RSA(pkey, r);

            //Save private key
            FILE* fp = fopen("private.key", "w");
            //PEM_write_PrivateKey(fp,pkey,EVP_aes_256_cbc(),NULL,0,NULL,pass);
            PEM_write_PrivateKey(fp,pkey, NULL,NULL,0,NULL,NULL);
            fclose(fp);

            //Save public key
            fp = fopen("public.key", "w");
            PEM_write_PUBKEY(fp, pkey);
            fclose(fp);

            return r;
        }
        
    }

    static std::string get_randpassword(int nlen, int nIncType = 0x15)
    {
        srand(time(NULL));
        return "0123456789";
        int nTypeCnt = 0;
        std::string strBaseChar;

        if (nIncType & 0x1){
            nTypeCnt++;
            strBaseChar += "0123456789";
        }

        if (nIncType & 0x2){
            nTypeCnt++;
            strBaseChar += "abcdefghijklmnopqrstuvwxyz";
        }

        if (nIncType & 0x4){
            nTypeCnt++;
            strBaseChar += "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        }

        if (nIncType & 0x8){
            nTypeCnt++;
            strBaseChar += "!@#$%^&*()_-+={}[],.?/\"';:~";
        }

        if (nlen<nTypeCnt){
            return "pwd count error";
        }

        int nBaseLen;
        nBaseLen = (int)strBaseChar.length();

        std::string strrtn;
        int nIncInfo = 0;

        for (int j = 0; j<999999; j++)
        {
            // 초기화..
            strrtn = "";
            nIncInfo = 0;

            for (int i = 0; i<nlen; i++)
            {
                char nrnd = rand() % nBaseLen;
                char chrnd = strBaseChar.at(nrnd);

                if ('0' <= chrnd && chrnd <= '9'){
                    nIncInfo |= 0x1;
                    strrtn += chrnd;
                }
                else if ('a' <= chrnd && chrnd <= 'z'){
                    nIncInfo |= 0x2;
                    strrtn += chrnd;
                }
                else if ('A' <= chrnd && chrnd <= 'Z'){
                    nIncInfo |= 0x4;
                    strrtn += chrnd;
                }
                else{
                    nIncInfo |= 0x8;
                    strrtn += strBaseChar.at(nrnd);
                }
            }

            if ((nIncInfo & nIncType) == nIncType){
                return strrtn;
            }
        }

        return strrtn;
    }
    //------------------------------------------------//
    static std::string getBase64(const std::string& str){
        return fc::base64_encode(str);
    }

    static std::string getRanPwd32(){
        std::string strPwd;
        strPwd.resize(33);
        fc::rand_pseudo_bytes(&strPwd.at(0), 32);

        return strPwd;
    }

    static std::string getEncAes256(const std::string& strOrg, const std::string& strKey){
        if(strOrg.length() < 1){
            return "";
        }
        std::string strRet;
        strRet.resize((int)strOrg.length() + 1024);
        unsigned len = fc::aes_encrypt((unsigned char*)strOrg.c_str(),(int)strOrg.length(),(unsigned char*)strKey.c_str(), NULL, (unsigned char*)&strRet.at(0));
        strRet.resize(len);

        strRet = fc::base64_encode(strRet);
        return strRet;
    }

    static std::string getDecAes256(const std::string& strOrg, const std::string& strKey){
        if(strOrg.length() < 1){
            return "";
        }

        std::string strRaw = fc::base64_decode(strOrg);

        std::string strRet;
        strRet.resize((int)strRaw.length());
        unsigned len = fc::aes_decrypt((unsigned char*)strRaw.c_str(),(int)strRaw.length(),(unsigned char*)strKey.c_str(), NULL, (unsigned char*)&strRet.at(0));
        strRet.resize(len);

        return strRet;
    }

    static std::string getRawEncAes256(const std::string& strOrg, const std::string& strKey){
        if(strOrg.length() < 1){
            return "";
        }
        std::string strRet;
        strRet.resize((int)strOrg.length() + 1024);
        unsigned len = fc::aes_encrypt((unsigned char*)strOrg.c_str(),(int)strOrg.length(),(unsigned char*)strKey.c_str(), NULL, (unsigned char*)&strRet.at(0));
        strRet.resize(len);

        //strRet = fc::base64_encode(strRet);
        return strRet;
    }

    static std::string getRawDecAes256(const std::string& strOrg, const std::string& strKey){
        if(strOrg.length() < 1){
            return "";
        }

        //std::string strRaw = fc::base64_decode(strOrg);

        std::string strRet;
        strRet.resize((int)strOrg.length());
        unsigned len = fc::aes_decrypt((unsigned char*)strOrg.c_str(),(int)strOrg.length(),(unsigned char*)strKey.c_str(), NULL, (unsigned char*)&strRet.at(0));
        strRet.resize(len);

        return strRet;
    }

    //------------------------------------------------//
    

    static void toHex(
        void *const data,           //!< Data to convert
        const size_t dataLength,    //!< Length of the data to convert
        std::string &dest           //!< Destination string
    )
    {
        unsigned char     *byteData = reinterpret_cast<unsigned char*>(data);
        std::stringstream hexStringStream;

        hexStringStream << std::hex << std::setfill('0');
        for (size_t index = 0; index < dataLength; ++index)
            hexStringStream << std::setw(2) << static_cast<int>(byteData[index]);
        dest = hexStringStream.str();
    }

    static std::vector<char> HexToBytes(const std::string& hex) {
        std::vector<char> bytes;

        for (unsigned int i = 0; i < hex.length(); i += 2) {
            std::string byteString = hex.substr(i, 2);
            char byte = (char)strtol(byteString.c_str(), NULL, 16);
            bytes.push_back(byte);
        }

        return bytes;
    }



    class Sss {
    public:
        std::vector<std::string> makeShareKey(const char* input) {
            sss_Share shares[dSize];

            size_t argSize = strlen(input) + 1;
            std::string originKey = input;

            uint8_t orikey[argSize];
            std::copy(originKey.begin(), originKey.end(), orikey);
            orikey[originKey.length()] = 0;

            /* Split the secret into 5 shares (with a recombination theshold of 4) */
            sss_create_shares(shares, orikey, dSize, minSize);

            std::vector<std::string> rst;
            for (int i = 0; i < dSize; i++)
            {
                std::string hextxt;
                toHex(shares[i], sss_SHARE_LEN, hextxt);
                rst.push_back(hextxt);
            }
            
            return rst;
        }

        void makeOriKey(char* input[], const int cnt, char* rst) {

            sss_Share shares[dSize];
            uint8_t restored[sss_MLEN];
            int tmp;

            std::vector <std::string> input_s;


            for (int i = 0; i < cnt; i++)
            {
                input_s.push_back(std::string(input[i]));
            }

            for (int i = 0; i < input_s.size(); i++)
            {
                auto temp = HexToBytes(input_s[i]);
                std::copy(temp.begin(), temp.end(), shares[i]);
            }

            /* Combine some of the shares to restore the original secret */
            tmp = sss_combine_shares(restored, shares, minSize);
            assert(tmp == 0);
            strcpy(rst, (char*)restored);
            
        }

    private:
        uint8_t dSize = 6;
        uint8_t minSize = 4;
    };


}