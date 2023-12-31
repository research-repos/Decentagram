// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


library OIDs {

    // AlgorithmIdentifier
    bytes32 constant OID_ALG_RSA_SHA_256 =
        0x2a864886f70d01010b0000000000000000000000000000000000000000000000;
    bytes32 constant OID_ALG_ECDSA_SHA_256 =
        0x2A8648CE3D040302000000000000000000000000000000000000000000000000;

    // Keys
    bytes32 constant OID_KEY_EC_PUBLIC =
        0x2A8648CE3D020100000000000000000000000000000000000000000000000000;
    bytes32 constant OID_KEY_EC_SECP256K1 =
        0x2B8104000A000000000000000000000000000000000000000000000000000000;

    // Name
    bytes32 constant OID_NAME_CN =
        0x5504030000000000000000000000000000000000000000000000000000000000;
    bytes32 constant OID_NAME_COUNTRY =
        0x5504060000000000000000000000000000000000000000000000000000000000;
    bytes32 constant OID_NAME_LOCAL =
        0x5504070000000000000000000000000000000000000000000000000000000000;
    bytes32 constant OID_NAME_STATE =
        0x5504080000000000000000000000000000000000000000000000000000000000;
    bytes32 constant OID_NAME_ORG =
        0x55040A0000000000000000000000000000000000000000000000000000000000;
    bytes32 constant OID_NAME_ORG_UNIT =
        0x55040B0000000000000000000000000000000000000000000000000000000000;

    // Decent OIDs
    //   Root OIDs
    bytes32 constant OID_DECENT_EXT_VER =
        0x6982f5c89a94ffdfaaab8591c1b5f7c2f782b01e010000000000000000000000;
    bytes32 constant OID_DECENT_PLATFORM_ID  =
        0x6982f5c89a94ffdfaaab8591c1b5f7c2f782b01e020000000000000000000000;
    bytes32 constant OID_DECENT_HASHED_KEYS  =
        0x6982f5c89a94ffdfaaab8591c1b5f7c2f782b01e040000000000000000000000;
    bytes32 constant OID_DECENT_APP_HASH  =
        0x6982f5c89a94ffdfaaab8591c1b5f7c2f782b01e050000000000000000000000;
    bytes32 constant OID_DECENT_AUTH_LIST  =
        0x6982f5c89a94ffdfaaab8591c1b5f7c2f782b01e060000000000000000000000;
    //   Platform specific OIDs
    bytes32 constant OID_DECENT_STD_REP_DATA =
        0x6982f5c89a94ffdfaaab8591c1b5f7c2f782b01e030101000000000000000000;
    bytes32 constant OID_DECENT_ATTESTATION  =
        0x6982f5c89a94ffdfaaab8591c1b5f7c2f782b01e030102000000000000000000;
}

library Names {

    string constant IAS_ROOT_CERT_CN = "Intel SGX Attestation Report Signing CA";
    bytes32 constant HASH_IAS_ROOT_CERT_CN = keccak256(bytes(IAS_ROOT_CERT_CN));

    bytes constant DECENT_PLATFORM_EPID = "SGX_EPID";

}

library Curves {

    // SECP256K1
    uint256 constant SECP256K1_N =
        0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141;

}
