// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;


import {BokkyPooBahsDateTimeLibrary} from "../../libs/DateTimeLibrary/contracts/BokkyPooBahsDateTimeLibrary.sol";


library X509Parser {


    function toTimestamp(bytes memory x509Time)
        internal
        pure
        returns (uint256)
    {
        uint16 yrs;  uint8 mnths;
        uint8  dys;  uint8 hrs;
        uint8  mins; uint8 secs;
        uint8  offset;

        if (x509Time.length == 13) {
            if (uint8(x509Time[0])-48 < 5) yrs = 2000;
            else yrs = 1900;
        }
        else if (x509Time.length == 15) {
            yrs = (uint8(x509Time[0])-48) * 1000 + (uint8(x509Time[1])-48) * 100;
            offset = 2;
        }
        else {
            require(false, "Invalid x509Time");
        }

        yrs  += (uint8(x509Time[offset+0])-48)*10 + uint8(x509Time[offset+1])-48;
        mnths = (uint8(x509Time[offset+2])-48)*10 + uint8(x509Time[offset+3])-48;
        dys   = (uint8(x509Time[offset+4])-48)*10 + uint8(x509Time[offset+5])-48;
        hrs   = (uint8(x509Time[offset+6])-48)*10 + uint8(x509Time[offset+7])-48;
        mins  = (uint8(x509Time[offset+8])-48)*10 + uint8(x509Time[offset+9])-48;
        secs  = (uint8(x509Time[offset+10])-48)*10 + uint8(x509Time[offset+11])-48;

        return BokkyPooBahsDateTimeLibrary.timestampFromDateTime(
            yrs,
            mnths,
            dys,
            hrs,
            mins,
            secs
        );
    }

}
