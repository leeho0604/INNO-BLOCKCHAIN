
#include <string>
#include <vector>
#include <iostream>
#include "fc/crypto/keccak.h"


// convert from hex to binary
std::vector<unsigned char> hex2bin(const std::string& hex)
{
	std::vector<unsigned char> result;
	for (size_t i = 0; i < hex.size(); i++)
	{
		unsigned char high = hex[i] >= 'a' ? hex[i] - 'a' + 10 : hex[i] - '0';
		i++;
		unsigned char low = hex[i] >= 'a' ? hex[i] - 'a' + 10 : hex[i] - '0';
		result.push_back(high * 16 + low);
	}
	return result;
}


// // here we go !
// int main(int argc, char** argv)
// {
// 	int errors = 0;

// 	// http://csrc.nist.gov/groups/ST/toolkit/documents/Examples/SHA_All.pdf
// 	// or more compact overview: http://www.di-mgt.com.au/sha_testvectors.html


// 	Keccak keccak;
// 	std::string myHash = keccak("");     // std::string
// 	std::cout << "keccak " << myHash << std::endl;
// 	// c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470

// 	return 0;
// }