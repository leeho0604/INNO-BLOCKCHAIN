#pragma once

#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <iostream>
#include <string>
#include <vector>
#include <sstream>
#include <iomanip>


extern "C"
{
#include "fc/crypto/sss/sss.h"
#include "fc/crypto/sss/randombytes.h"
}


using namespace std;

static void toHex(
	void *const data,           //!< Data to convert
	const size_t dataLength,    //!< Length of the data to convert
	std::string &dest           //!< Destination string
)
{
	unsigned char *byteData = reinterpret_cast<unsigned char*>(data);
	std::stringstream hexStringStream;

	hexStringStream << std::hex << std::setfill('0');
	for (size_t index = 0; index < dataLength; ++index)
		hexStringStream << std::setw(2) << static_cast<int>(byteData[index]);

	dest = hexStringStream.str();
}

static unsigned char getHex(const char *s, char **endptr) 
{
	assert(s);
	while (isspace(*s)) s++;
	assert(*s);
	return strtoul(s, endptr, 16);
}

static std::vector<char> hexToBytes(const std::string &hex)
{
	std::vector<char> bytes;

	for (unsigned int i = 0; i < hex.length(); i += 2) 
	{
		std::string byteString = hex.substr(i, 2);
		char byte = (char)strtol(byteString.c_str(), NULL, 16);
		bytes.push_back(byte);
	}

	return bytes;
}



class Sss {
public:
	std::vector<std::string> makeShareKey(const char* input) 
	{
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
			auto temp = hexToBytes(input_s[i]);
			std::copy(temp.begin(), temp.end(), shares[i]);
		}

		/* Combine some of the shares to restore the original secret */
		tmp = sss_combine_shares(restored, shares, minSize);
		assert(tmp == 0);
		//assert(memcmp(restored, data, sss_MLEN) == 0);

		strcpy(rst, (char*)restored);
		
	}

private:
	uint8_t dSize = 6;
	uint8_t minSize = 4;
};


extern "C" {
	//https://hashcode.co.kr/questions/243/python%EC%97%90%EC%84%9C-cc%EB%B6%80%EB%A5%B4%EA%B8%B0
	Sss* Sss_new() { return new Sss(); }
	// void test1(Sss* s) { s->test1(); }
	// void test2(Sss* s, char* input) { s->test2(input); }

	void Sss_makeShareKey(Sss* s, char* input, std::vector<std::string>* v) {
		std::cout << "Sss_makeShareKey::" << input << std::endl;
		std::vector<std::string> tmp = s->makeShareKey(input);
		std::cout << "shared keys::" << tmp.size() << std::endl;
		for (vector<std::string>::size_type i = 0; i < tmp.size(); ++i)
		{
			std::cout << "==> " << tmp[i] << std::endl;
			v->push_back(tmp[i]);
		}
	}
	void Sss_makeOriKey(Sss* s, char* input[], const int cnt, char* rst) { s->makeOriKey(input, cnt, rst); }
}


extern "C" {
	//https://stackoverflow.com/questions/16885344/how-to-handle-c-return-type-stdvectorint-in-python-ctypes
	std::vector<std::string>* new_vector() {
		cout << "new vector " << endl;
		return new std::vector<std::string>;
	}
	void delete_vector(vector<std::string>* v) {
		cout << "destructor called in C++ for " << v << endl;
		delete v;
	}
	int vector_size(vector<std::string>* v) {
		return v->size();
	}
	std::string vector_get(vector<std::string>* v, int i) {
		return v->at(i);
	}
	void vector_push_back(vector<std::string>* v, std::string i) {
		v->push_back(i);
	}
}

// int main(int argc, char **argv)
// {
// 	if (argc < 2)
// 	{
// 		std::cout << "Usage: " << argv[0] << " -d ORIGINAL_KEY" << std::endl;
// 		std::cout << "Usage: " << argv[0] << " -r SHARE_KEY_1 SHARE_KEY_2 ..." << std::endl;
// 		return 1;
// 	}

// 	if (std::string(argv[1]) == "-d")
// 	{
// 		char* input = argv[2];
// 		Sss s = Sss();
// 		std::vector<std::string> sk = s.makeShareKey(input);
// 		std::cout << "rst size = " << sk.size() << std::endl;

// 		std::cout << "shared keys::" << std::endl;
// 		for (vector<std::string>::size_type i = 0; i < sk.size(); ++i)
// 		{
// 			std::cout << "#" << sk[i] << "#"  << std::endl;
// 		}
// 	}
// 	else if (std::string(argv[1]) == "-r")
// 	{
// 		int cnt = argc - 2;
// 		char *input[cnt];
// 		for (int i = 0; i < cnt; i++)
// 		{
// 			input[i] = argv[i+2];
// 		}
// 		Sss s = Sss();
// 		char rst[sss_MLEN];
// 		s.makeOriKey(input, cnt, rst);
// 		std::cout << "#" << rst << "#" << std::endl;
// 	}
	   	 
// 	return 0;

// }