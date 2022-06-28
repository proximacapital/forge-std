// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// The original console.sol uses `int` and `uint` for computing function selectors, but it should
// use `int256` and `uint256`. This modified version fixes that. This version is recommended
// over `console.sol` if you don't need compatibility with Hardhat as the logs will show up in
// forge stack traces. If you do need compatibility with Hardhat, you must use `console.sol`.
// Reference: https://github.com/NomicFoundation/hardhat/issues/2178

library console2 {
    address constant CONSOLE_ADDRESS = address(0x000000000000000000636F6e736F6c652e6c6f67);

    function _sendLogPayload(bytes memory payload) private view {
        uint256 payloadLength = payload.length;
        address consoleAddress = CONSOLE_ADDRESS;
        assembly {
            let payloadStart := add(payload, 32)
            let r := staticcall(gas(), consoleAddress, payloadStart, payloadLength, 0, 0)
        }
    }

    function log() internal view {
        _sendLogPayload(abi.encodeWithSignature("log()"));
    }

    function logInt(int256 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int256)", p0));
    }

    function logUint(uint256 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256)", p0));
    }

    function logString(string memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function logBool(bool p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function logAddress(address p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function logBytes(bytes memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes)", p0));
    }

    function logBytes1(bytes1 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes1)", p0));
    }

    function logBytes2(bytes2 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes2)", p0));
    }

    function logBytes3(bytes3 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes3)", p0));
    }

    function logBytes4(bytes4 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes4)", p0));
    }

    function logBytes5(bytes5 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes5)", p0));
    }

    function logBytes6(bytes6 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes6)", p0));
    }

    function logBytes7(bytes7 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes7)", p0));
    }

    function logBytes8(bytes8 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes8)", p0));
    }

    function logBytes9(bytes9 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes9)", p0));
    }

    function logBytes10(bytes10 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes10)", p0));
    }

    function logBytes11(bytes11 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes11)", p0));
    }

    function logBytes12(bytes12 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes12)", p0));
    }

    function logBytes13(bytes13 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes13)", p0));
    }

    function logBytes14(bytes14 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes14)", p0));
    }

    function logBytes15(bytes15 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes15)", p0));
    }

    function logBytes16(bytes16 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes16)", p0));
    }

    function logBytes17(bytes17 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes17)", p0));
    }

    function logBytes18(bytes18 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes18)", p0));
    }

    function logBytes19(bytes19 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes19)", p0));
    }

    function logBytes20(bytes20 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes20)", p0));
    }

    function logBytes21(bytes21 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes21)", p0));
    }

    function logBytes22(bytes22 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes22)", p0));
    }

    function logBytes23(bytes23 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes23)", p0));
    }

    function logBytes24(bytes24 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes24)", p0));
    }

    function logBytes25(bytes25 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes25)", p0));
    }

    function logBytes26(bytes26 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes26)", p0));
    }

    function logBytes27(bytes27 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes27)", p0));
    }

    function logBytes28(bytes28 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes28)", p0));
    }

    function logBytes29(bytes29 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes29)", p0));
    }

    function logBytes30(bytes30 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes30)", p0));
    }

    function logBytes31(bytes31 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes31)", p0));
    }

    function logBytes32(bytes32 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes32)", p0));
    }

    function log(uint256 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256)", p0));
    }

    function log(string memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function log(bool p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function log(address p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function log(uint256 p0, uint256 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256)", p0, p1));
    }

    function log(uint256 p0, string memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string)", p0, p1));
    }

    function log(uint256 p0, bool p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool)", p0, p1));
    }

    function log(uint256 p0, address p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address)", p0, p1));
    }

    function log(string memory p0, uint256 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256)", p0, p1));
    }

    function log(string memory p0, string memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string)", p0, p1));
    }

    function log(string memory p0, bool p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool)", p0, p1));
    }

    function log(string memory p0, address p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address)", p0, p1));
    }

    function log(bool p0, uint256 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256)", p0, p1));
    }

    function log(bool p0, string memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string)", p0, p1));
    }

    function log(bool p0, bool p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool)", p0, p1));
    }

    function log(bool p0, address p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address)", p0, p1));
    }

    function log(address p0, uint256 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256)", p0, p1));
    }

    function log(address p0, string memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string)", p0, p1));
    }

    function log(address p0, bool p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool)", p0, p1));
    }

    function log(address p0, address p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address)", p0, p1));
    }

    function log(uint256 p0, uint256 p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address)", p0, p1, p2));
    }

    function log(string memory p0, address p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256)", p0, p1, p2));
    }

    function log(string memory p0, address p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string)", p0, p1, p2));
    }

    function log(string memory p0, address p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool)", p0, p1, p2));
    }

    function log(string memory p0, address p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address)", p0, p1, p2));
    }

    function log(bool p0, bool p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256)", p0, p1, p2));
    }

    function log(bool p0, bool p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string)", p0, p1, p2));
    }

    function log(bool p0, bool p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool)", p0, p1, p2));
    }

    function log(bool p0, bool p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address)", p0, p1, p2));
    }

    function log(bool p0, address p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256)", p0, p1, p2));
    }

    function log(bool p0, address p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string)", p0, p1, p2));
    }

    function log(bool p0, address p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool)", p0, p1, p2));
    }

    function log(bool p0, address p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address)", p0, p1, p2));
    }

    function log(address p0, string memory p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256)", p0, p1, p2));
    }

    function log(address p0, string memory p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string)", p0, p1, p2));
    }

    function log(address p0, string memory p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool)", p0, p1, p2));
    }

    function log(address p0, string memory p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address)", p0, p1, p2));
    }

    function log(address p0, bool p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256)", p0, p1, p2));
    }

    function log(address p0, bool p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string)", p0, p1, p2));
    }

    function log(address p0, bool p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool)", p0, p1, p2));
    }

    function log(address p0, bool p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address)", p0, p1, p2));
    }

    function log(address p0, address p1, uint256 p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256)", p0, p1, p2));
    }

    function log(address p0, address p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string)", p0, p1, p2));
    }

    function log(address p0, address p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool)", p0, p1, p2));
    }

    function log(address p0, address p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, uint256 p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,address)", p0, p1, p2, p3));
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    (STRING,INT{N})
    //////////////////////////////////////////////////////////////////////////*/

    function log(string memory p0, int8 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int8)", p0, p1));
    }

    function log(int8 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int8)", p0));
    }

    function log(string memory p0, int8[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int8[])", p0, p1));
    }

    function log(int8[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int8[])", p0));
    }

    function log(string memory p0, int16 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int16)", p0, p1));
    }

    function log(int16 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int16)", p0));
    }

    function log(string memory p0, int16[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int16[])", p0, p1));
    }

    function log(int16[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int16[])", p0));
    }

    function log(string memory p0, int24 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int24)", p0, p1));
    }

    function log(int24 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int24)", p0));
    }

    function log(string memory p0, int24[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int24[])", p0, p1));
    }

    function log(int24[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int24[])", p0));
    }

    function log(string memory p0, int32 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int32)", p0, p1));
    }

    function log(int32 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int32)", p0));
    }

    function log(string memory p0, int32[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int32[])", p0, p1));
    }

    function log(int32[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int32[])", p0));
    }

    function log(string memory p0, int40 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int40)", p0, p1));
    }

    function log(int40 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int40)", p0));
    }

    function log(string memory p0, int40[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int40[])", p0, p1));
    }

    function log(int40[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int40[])", p0));
    }

    function log(string memory p0, int48 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int48)", p0, p1));
    }

    function log(int48 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int48)", p0));
    }

    function log(string memory p0, int48[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int48[])", p0, p1));
    }

    function log(int48[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int48[])", p0));
    }

    function log(string memory p0, int56 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int56)", p0, p1));
    }

    function log(int56 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int56)", p0));
    }

    function log(string memory p0, int56[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int56[])", p0, p1));
    }

    function log(int56[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int56[])", p0));
    }

    function log(string memory p0, int64 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int64)", p0, p1));
    }

    function log(int64 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int64)", p0));
    }

    function log(string memory p0, int64[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int64[])", p0, p1));
    }

    function log(int64[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int64[])", p0));
    }

    function log(string memory p0, int72 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int72)", p0, p1));
    }

    function log(int72 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int72)", p0));
    }

    function log(string memory p0, int72[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int72[])", p0, p1));
    }

    function log(int72[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int72[])", p0));
    }

    function log(string memory p0, int80 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int80)", p0, p1));
    }

    function log(int80 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int80)", p0));
    }

    function log(string memory p0, int80[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int80[])", p0, p1));
    }

    function log(int80[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int80[])", p0));
    }

    function log(string memory p0, int88 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int88)", p0, p1));
    }

    function log(int88 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int88)", p0));
    }

    function log(string memory p0, int88[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int88[])", p0, p1));
    }

    function log(int88[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int88[])", p0));
    }

    function log(string memory p0, int96 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int96)", p0, p1));
    }

    function log(int96 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int96)", p0));
    }

    function log(string memory p0, int96[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int96[])", p0, p1));
    }

    function log(int96[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int96[])", p0));
    }

    function log(string memory p0, int104 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int104)", p0, p1));
    }

    function log(int104 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int104)", p0));
    }

    function log(string memory p0, int104[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int104[])", p0, p1));
    }

    function log(int104[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int104[])", p0));
    }

    function log(string memory p0, int112 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int112)", p0, p1));
    }

    function log(int112 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int112)", p0));
    }

    function log(string memory p0, int112[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int112[])", p0, p1));
    }

    function log(int112[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int112[])", p0));
    }

    function log(string memory p0, int120 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int120)", p0, p1));
    }

    function log(int120 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int120)", p0));
    }

    function log(string memory p0, int120[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int120[])", p0, p1));
    }

    function log(int120[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int120[])", p0));
    }

    function log(string memory p0, int128 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int128)", p0, p1));
    }

    function log(int128 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int128)", p0));
    }

    function log(string memory p0, int128[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int128[])", p0, p1));
    }

    function log(int128[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int128[])", p0));
    }

    function log(string memory p0, int136 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int136)", p0, p1));
    }

    function log(int136 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int136)", p0));
    }

    function log(string memory p0, int136[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int136[])", p0, p1));
    }

    function log(int136[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int136[])", p0));
    }

    function log(string memory p0, int144 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int144)", p0, p1));
    }

    function log(int144 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int144)", p0));
    }

    function log(string memory p0, int144[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int144[])", p0, p1));
    }

    function log(int144[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int144[])", p0));
    }

    function log(string memory p0, int152 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int152)", p0, p1));
    }

    function log(int152 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int152)", p0));
    }

    function log(string memory p0, int152[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int152[])", p0, p1));
    }

    function log(int152[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int152[])", p0));
    }

    function log(string memory p0, int160 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int160)", p0, p1));
    }

    function log(int160 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int160)", p0));
    }

    function log(string memory p0, int160[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int160[])", p0, p1));
    }

    function log(int160[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int160[])", p0));
    }

    function log(string memory p0, int168 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int168)", p0, p1));
    }

    function log(int168 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int168)", p0));
    }

    function log(string memory p0, int168[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int168[])", p0, p1));
    }

    function log(int168[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int168[])", p0));
    }

    function log(string memory p0, int176 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int176)", p0, p1));
    }

    function log(int176 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int176)", p0));
    }

    function log(string memory p0, int176[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int176[])", p0, p1));
    }

    function log(int176[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int176[])", p0));
    }

    function log(string memory p0, int184 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int184)", p0, p1));
    }

    function log(int184 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int184)", p0));
    }

    function log(string memory p0, int184[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int184[])", p0, p1));
    }

    function log(int184[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int184[])", p0));
    }

    function log(string memory p0, int192 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int192)", p0, p1));
    }

    function log(int192 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int192)", p0));
    }

    function log(string memory p0, int192[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int192[])", p0, p1));
    }

    function log(int192[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int192[])", p0));
    }

    function log(string memory p0, int200 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int200)", p0, p1));
    }

    function log(int200 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int200)", p0));
    }

    function log(string memory p0, int200[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int200[])", p0, p1));
    }

    function log(int200[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int200[])", p0));
    }

    function log(string memory p0, int208 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int208)", p0, p1));
    }

    function log(int208 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int208)", p0));
    }

    function log(string memory p0, int208[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int208[])", p0, p1));
    }

    function log(int208[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int208[])", p0));
    }

    function log(string memory p0, int216 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int216)", p0, p1));
    }

    function log(int216 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int216)", p0));
    }

    function log(string memory p0, int216[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int216[])", p0, p1));
    }

    function log(int216[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int216[])", p0));
    }

    function log(string memory p0, int224 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int224)", p0, p1));
    }

    function log(int224 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int224)", p0));
    }

    function log(string memory p0, int224[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int224[])", p0, p1));
    }

    function log(int224[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int224[])", p0));
    }

    function log(string memory p0, int232 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int232)", p0, p1));
    }

    function log(int232 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int232)", p0));
    }

    function log(string memory p0, int232[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int232[])", p0, p1));
    }

    function log(int232[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int232[])", p0));
    }

    function log(string memory p0, int240 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int240)", p0, p1));
    }

    function log(int240 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int240)", p0));
    }

    function log(string memory p0, int240[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int240[])", p0, p1));
    }

    function log(int240[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int240[])", p0));
    }

    function log(string memory p0, int248 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int248)", p0, p1));
    }

    function log(int248 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int248)", p0));
    }

    function log(string memory p0, int248[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int248[])", p0, p1));
    }

    function log(int248[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int248[])", p0));
    }

    // nb: (string,int256) already covered

    function log(string memory p0, int256[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,int256[])", p0, p1));
    }

    function log(int256[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int256[])", p0));
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    (STRING,UINT{N})
    //////////////////////////////////////////////////////////////////////////*/

    function log(string memory p0, uint8 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint8)", p0, p1));
    }

    function log(uint8 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint8)", p0));
    }

    function log(string memory p0, uint8[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint8[])", p0, p1));
    }

    function log(uint8[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint8[])", p0));
    }

    function log(string memory p0, uint16 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint16)", p0, p1));
    }

    function log(uint16 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint16)", p0));
    }

    function log(string memory p0, uint16[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint16[])", p0, p1));
    }

    function log(uint16[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint16[])", p0));
    }

    function log(string memory p0, uint24 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint24)", p0, p1));
    }

    function log(uint24 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint24)", p0));
    }

    function log(string memory p0, uint24[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint24[])", p0, p1));
    }

    function log(uint24[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint24[])", p0));
    }

    function log(string memory p0, uint32 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint32)", p0, p1));
    }

    function log(uint32 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint32)", p0));
    }

    function log(string memory p0, uint32[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint32[])", p0, p1));
    }

    function log(uint32[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint32[])", p0));
    }

    function log(string memory p0, uint40 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint40)", p0, p1));
    }

    function log(uint40 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint40)", p0));
    }

    function log(string memory p0, uint40[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint40[])", p0, p1));
    }

    function log(uint40[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint40[])", p0));
    }

    function log(string memory p0, uint48 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint48)", p0, p1));
    }

    function log(uint48 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint48)", p0));
    }

    function log(string memory p0, uint48[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint48[])", p0, p1));
    }

    function log(uint48[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint48[])", p0));
    }

    function log(string memory p0, uint56 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint56)", p0, p1));
    }

    function log(uint56 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint56)", p0));
    }

    function log(string memory p0, uint56[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint56[])", p0, p1));
    }

    function log(uint56[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint56[])", p0));
    }

    function log(string memory p0, uint64 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint64)", p0, p1));
    }

    function log(uint64 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint64)", p0));
    }

    function log(string memory p0, uint64[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint64[])", p0, p1));
    }

    function log(uint64[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint64[])", p0));
    }

    function log(string memory p0, uint72 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint72)", p0, p1));
    }

    function log(uint72 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint72)", p0));
    }

    function log(string memory p0, uint72[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint72[])", p0, p1));
    }

    function log(uint72[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint72[])", p0));
    }

    function log(string memory p0, uint80 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint80)", p0, p1));
    }

    function log(uint80 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint80)", p0));
    }

    function log(string memory p0, uint80[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint80[])", p0, p1));
    }

    function log(uint80[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint80[])", p0));
    }

    function log(string memory p0, uint88 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint88)", p0, p1));
    }

    function log(uint88 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint88)", p0));
    }

    function log(string memory p0, uint88[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint88[])", p0, p1));
    }

    function log(uint88[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint88[])", p0));
    }

    function log(string memory p0, uint96 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint96)", p0, p1));
    }

    function log(uint96 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint96)", p0));
    }

    function log(string memory p0, uint96[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint96[])", p0, p1));
    }

    function log(uint96[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint96[])", p0));
    }

    function log(string memory p0, uint104 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint104)", p0, p1));
    }

    function log(uint104 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint104)", p0));
    }

    function log(string memory p0, uint104[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint104[])", p0, p1));
    }

    function log(uint104[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint104[])", p0));
    }

    function log(string memory p0, uint112 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint112)", p0, p1));
    }

    function log(uint112 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint112)", p0));
    }

    function log(string memory p0, uint112[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint112[])", p0, p1));
    }

    function log(uint112[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint112[])", p0));
    }

    function log(string memory p0, uint120 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint120)", p0, p1));
    }

    function log(uint120 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint120)", p0));
    }

    function log(string memory p0, uint120[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint120[])", p0, p1));
    }

    function log(uint120[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint120[])", p0));
    }

    function log(string memory p0, uint128 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint128)", p0, p1));
    }

    function log(uint128 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint128)", p0));
    }

    function log(string memory p0, uint128[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint128[])", p0, p1));
    }

    function log(uint128[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint128[])", p0));
    }

    function log(string memory p0, uint136 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint136)", p0, p1));
    }

    function log(uint136 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint136)", p0));
    }

    function log(string memory p0, uint136[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint136[])", p0, p1));
    }

    function log(uint136[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint136[])", p0));
    }

    function log(string memory p0, uint144 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint144)", p0, p1));
    }

    function log(uint144 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint144)", p0));
    }

    function log(string memory p0, uint144[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint144[])", p0, p1));
    }

    function log(uint144[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint144[])", p0));
    }

    function log(string memory p0, uint152 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint152)", p0, p1));
    }

    function log(uint152 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint152)", p0));
    }

    function log(string memory p0, uint152[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint152[])", p0, p1));
    }

    function log(uint152[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint152[])", p0));
    }

    function log(string memory p0, uint160 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint160)", p0, p1));
    }

    function log(uint160 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint160)", p0));
    }

    function log(string memory p0, uint160[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint160[])", p0, p1));
    }

    function log(uint160[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint160[])", p0));
    }

    function log(string memory p0, uint168 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint168)", p0, p1));
    }

    function log(uint168 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint168)", p0));
    }

    function log(string memory p0, uint168[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint168[])", p0, p1));
    }

    function log(uint168[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint168[])", p0));
    }

    function log(string memory p0, uint176 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint176)", p0, p1));
    }

    function log(uint176 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint176)", p0));
    }

    function log(string memory p0, uint176[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint176[])", p0, p1));
    }

    function log(uint176[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint176[])", p0));
    }

    function log(string memory p0, uint184 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint184)", p0, p1));
    }

    function log(uint184 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint184)", p0));
    }

    function log(string memory p0, uint184[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint184[])", p0, p1));
    }

    function log(uint184[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint184[])", p0));
    }

    function log(string memory p0, uint192 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint192)", p0, p1));
    }

    function log(uint192 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint192)", p0));
    }

    function log(string memory p0, uint192[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint192[])", p0, p1));
    }

    function log(uint192[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint192[])", p0));
    }

    function log(string memory p0, uint200 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint200)", p0, p1));
    }

    function log(uint200 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint200)", p0));
    }

    function log(string memory p0, uint200[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint200[])", p0, p1));
    }

    function log(uint200[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint200[])", p0));
    }

    function log(string memory p0, uint208 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint208)", p0, p1));
    }

    function log(uint208 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint208)", p0));
    }

    function log(string memory p0, uint208[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint208[])", p0, p1));
    }

    function log(uint208[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint208[])", p0));
    }

    function log(string memory p0, uint216 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint216)", p0, p1));
    }

    function log(uint216 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint216)", p0));
    }

    function log(string memory p0, uint216[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint216[])", p0, p1));
    }

    function log(uint216[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint216[])", p0));
    }

    function log(string memory p0, uint224 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint224)", p0, p1));
    }

    function log(uint224 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint224)", p0));
    }

    function log(string memory p0, uint224[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint224[])", p0, p1));
    }

    function log(uint224[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint224[])", p0));
    }

    function log(string memory p0, uint232 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint232)", p0, p1));
    }

    function log(uint232 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint232)", p0));
    }

    function log(string memory p0, uint232[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint232[])", p0, p1));
    }

    function log(uint232[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint232[])", p0));
    }

    function log(string memory p0, uint240 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint240)", p0, p1));
    }

    function log(uint240 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint240)", p0));
    }

    function log(string memory p0, uint240[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint240[])", p0, p1));
    }

    function log(uint240[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint240[])", p0));
    }

    function log(string memory p0, uint248 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint248)", p0, p1));
    }

    function log(uint248 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint248)", p0));
    }

    function log(string memory p0, uint248[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint248[])", p0, p1));
    }

    function log(uint248[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint248[])", p0));
    }

    // nb: (string,uint256) already covered

    function log(string memory p0, uint256[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256[])", p0, p1));
    }

    function log(uint256[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint256[])", p0));
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    (STRING,BYTE{N})
    //////////////////////////////////////////////////////////////////////////*/

    function log(string memory p0, bytes1 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes1)", p0, p1));
    }

    function log(bytes1 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes1)", p0));
    }

    function log(string memory p0, bytes1[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes1[])", p0, p1));
    }

    function log(bytes1[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes1[])", p0));
    }

    function log(string memory p0, bytes2 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes2)", p0, p1));
    }

    function log(bytes2 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes2)", p0));
    }

    function log(string memory p0, bytes2[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes2[])", p0, p1));
    }

    function log(bytes2[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes2[])", p0));
    }

    function log(string memory p0, bytes3 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes3)", p0, p1));
    }

    function log(bytes3 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes3)", p0));
    }

    function log(string memory p0, bytes3[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes3[])", p0, p1));
    }

    function log(bytes3[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes3[])", p0));
    }

    function log(string memory p0, bytes4 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes4)", p0, p1));
    }

    function log(bytes4 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes4)", p0));
    }

    function log(string memory p0, bytes4[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes4[])", p0, p1));
    }

    function log(bytes4[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes4[])", p0));
    }

    function log(string memory p0, bytes5 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes5)", p0, p1));
    }

    function log(bytes5 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes5)", p0));
    }

    function log(string memory p0, bytes5[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes5[])", p0, p1));
    }

    function log(bytes5[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes5[])", p0));
    }

    function log(string memory p0, bytes6 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes6)", p0, p1));
    }

    function log(bytes6 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes6)", p0));
    }

    function log(string memory p0, bytes6[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes6[])", p0, p1));
    }

    function log(bytes6[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes6[])", p0));
    }

    function log(string memory p0, bytes7 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes7)", p0, p1));
    }

    function log(bytes7 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes7)", p0));
    }

    function log(string memory p0, bytes7[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes7[])", p0, p1));
    }

    function log(bytes7[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes7[])", p0));
    }

    function log(string memory p0, bytes8 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes8)", p0, p1));
    }

    function log(bytes8 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes8)", p0));
    }

    function log(string memory p0, bytes8[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes8[])", p0, p1));
    }

    function log(bytes8[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes8[])", p0));
    }

    function log(string memory p0, bytes9 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes9)", p0, p1));
    }

    function log(bytes9 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes9)", p0));
    }

    function log(string memory p0, bytes9[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes9[])", p0, p1));
    }

    function log(bytes9[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes9[])", p0));
    }

    function log(string memory p0, bytes10 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes10)", p0, p1));
    }

    function log(bytes10 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes10)", p0));
    }

    function log(string memory p0, bytes10[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes10[])", p0, p1));
    }

    function log(bytes10[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes10[])", p0));
    }

    function log(string memory p0, bytes11 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes11)", p0, p1));
    }

    function log(bytes11 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes11)", p0));
    }

    function log(string memory p0, bytes11[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes11[])", p0, p1));
    }

    function log(bytes11[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes11[])", p0));
    }

    function log(string memory p0, bytes12 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes12)", p0, p1));
    }

    function log(bytes12 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes12)", p0));
    }

    function log(string memory p0, bytes12[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes12[])", p0, p1));
    }

    function log(bytes12[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes12[])", p0));
    }

    function log(string memory p0, bytes13 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes13)", p0, p1));
    }

    function log(bytes13 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes13)", p0));
    }

    function log(string memory p0, bytes13[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes13[])", p0, p1));
    }

    function log(bytes13[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes13[])", p0));
    }

    function log(string memory p0, bytes14 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes14)", p0, p1));
    }

    function log(bytes14 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes14)", p0));
    }

    function log(string memory p0, bytes14[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes14[])", p0, p1));
    }

    function log(bytes14[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes14[])", p0));
    }

    function log(string memory p0, bytes15 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes15)", p0, p1));
    }

    function log(bytes15 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes15)", p0));
    }

    function log(string memory p0, bytes15[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes15[])", p0, p1));
    }

    function log(bytes15[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes15[])", p0));
    }

    function log(string memory p0, bytes16 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes16)", p0, p1));
    }

    function log(bytes16 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes16)", p0));
    }

    function log(string memory p0, bytes16[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes16[])", p0, p1));
    }

    function log(bytes16[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes16[])", p0));
    }

    function log(string memory p0, bytes17 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes17)", p0, p1));
    }

    function log(bytes17 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes17)", p0));
    }

    function log(string memory p0, bytes17[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes17[])", p0, p1));
    }

    function log(bytes17[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes17[])", p0));
    }

    function log(string memory p0, bytes18 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes18)", p0, p1));
    }

    function log(bytes18 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes18)", p0));
    }

    function log(string memory p0, bytes18[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes18[])", p0, p1));
    }

    function log(bytes18[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes18[])", p0));
    }

    function log(string memory p0, bytes19 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes19)", p0, p1));
    }

    function log(bytes19 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes19)", p0));
    }

    function log(string memory p0, bytes19[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes19[])", p0, p1));
    }

    function log(bytes19[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes19[])", p0));
    }

    function log(string memory p0, bytes20 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes20)", p0, p1));
    }

    function log(bytes20 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes20)", p0));
    }

    function log(string memory p0, bytes20[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes20[])", p0, p1));
    }

    function log(bytes20[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes20[])", p0));
    }

    function log(string memory p0, bytes21 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes21)", p0, p1));
    }

    function log(bytes21 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes21)", p0));
    }

    function log(string memory p0, bytes21[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes21[])", p0, p1));
    }

    function log(bytes21[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes21[])", p0));
    }

    function log(string memory p0, bytes22 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes22)", p0, p1));
    }

    function log(bytes22 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes22)", p0));
    }

    function log(string memory p0, bytes22[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes22[])", p0, p1));
    }

    function log(bytes22[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes22[])", p0));
    }

    function log(string memory p0, bytes23 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes23)", p0, p1));
    }

    function log(bytes23 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes23)", p0));
    }

    function log(string memory p0, bytes23[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes23[])", p0, p1));
    }

    function log(bytes23[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes23[])", p0));
    }

    function log(string memory p0, bytes24 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes24)", p0, p1));
    }

    function log(bytes24 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes24)", p0));
    }

    function log(string memory p0, bytes24[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes24[])", p0, p1));
    }

    function log(bytes24[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes24[])", p0));
    }

    function log(string memory p0, bytes25 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes25)", p0, p1));
    }

    function log(bytes25 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes25)", p0));
    }

    function log(string memory p0, bytes25[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes25[])", p0, p1));
    }

    function log(bytes25[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes25[])", p0));
    }

    function log(string memory p0, bytes26 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes26)", p0, p1));
    }

    function log(bytes26 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes26)", p0));
    }

    function log(string memory p0, bytes26[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes26[])", p0, p1));
    }

    function log(bytes26[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes26[])", p0));
    }

    function log(string memory p0, bytes27 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes27)", p0, p1));
    }

    function log(bytes27 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes27)", p0));
    }

    function log(string memory p0, bytes27[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes27[])", p0, p1));
    }

    function log(bytes27[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes27[])", p0));
    }

    function log(string memory p0, bytes28 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes28)", p0, p1));
    }

    function log(bytes28 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes28)", p0));
    }

    function log(string memory p0, bytes28[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes28[])", p0, p1));
    }

    function log(bytes28[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes28[])", p0));
    }

    function log(string memory p0, bytes29 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes29)", p0, p1));
    }

    function log(bytes29 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes29)", p0));
    }

    function log(string memory p0, bytes29[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes29[])", p0, p1));
    }

    function log(bytes29[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes29[])", p0));
    }

    function log(string memory p0, bytes30 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes30)", p0, p1));
    }

    function log(bytes30 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes30)", p0));
    }

    function log(string memory p0, bytes30[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes30[])", p0, p1));
    }

    function log(bytes30[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes30[])", p0));
    }

    function log(string memory p0, bytes31 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes31)", p0, p1));
    }

    function log(bytes31 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes31)", p0));
    }

    function log(string memory p0, bytes31[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes31[])", p0, p1));
    }

    function log(bytes31[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes31[])", p0));
    }

    function log(string memory p0, bytes32 p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes32)", p0, p1));
    }

    function log(bytes32 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes32)", p0));
    }

    function log(string memory p0, bytes32[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes32[])", p0, p1));
    }

    function log(bytes32[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes32[])", p0));
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    (STRING,ADDRESS)
    //////////////////////////////////////////////////////////////////////////*/

    // nb: (string,address) already covered

    function log(string memory p0, address[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address[])", p0, p1));
    }

    function log(address[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address[])", p0));
    }

    function log(string memory p0, address payable p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address)", p0, p1));
    }

    function log(address payable p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function log(string memory p0, address payable[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address[])", p0, p1));
    }

    function log(address payable[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address[])", p0));
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    (STRING,BYTES)
    //////////////////////////////////////////////////////////////////////////*/

    function log(string memory p0, bytes memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes)", p0, p1));
    }

    function log(bytes memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes)", p0));
    }

    function log(string memory p0, bytes[] memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bytes)", p0, p1));
    }

    function log(bytes[] memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes)", p0));
    }
}
