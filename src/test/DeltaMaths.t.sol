// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

import "../Test.sol";

contract DeltaMathsTest is Test
{
    int256 constant MIN_INT = -0x8000000000000000000000000000000000000000000000000000000000000000;

    function testGetDelta_Uint() external {
        assertEq(deltaMaths.getDelta(uint256(0),        uint256(0)),        0);
        assertEq(deltaMaths.getDelta(uint256(0),        uint256(1337)),     1337);
        assertEq(deltaMaths.getDelta(uint256(0),        type(uint64).max),  type(uint64).max);
        assertEq(deltaMaths.getDelta(uint256(0),        type(uint128).max), type(uint128).max);
        assertEq(deltaMaths.getDelta(uint256(0),        type(uint256).max), type(uint256).max);

        assertEq(deltaMaths.getDelta(0,                 uint256(0)),        0);
        assertEq(deltaMaths.getDelta(1337,              uint256(0)),        1337);
        assertEq(deltaMaths.getDelta(type(uint64).max,  uint256(0)),        type(uint64).max);
        assertEq(deltaMaths.getDelta(type(uint128).max, uint256(0)),        type(uint128).max);
        assertEq(deltaMaths.getDelta(type(uint256).max, uint256(0)),        type(uint256).max);

        assertEq(deltaMaths.getDelta(1337,              uint256(1337)),     0);
        assertEq(deltaMaths.getDelta(type(uint256).max, type(uint256).max), 0);
        assertEq(deltaMaths.getDelta(5000,              uint256(1250)),     3750);
    }

    function testGetDelta_Uint_Fuzz(uint256 a, uint256 b) external {
        uint256 manualDelta;
        if (a > b) {
            manualDelta = a - b;
        } else {
            manualDelta = b - a;
        }

        uint256 delta = deltaMaths.getDelta(a, b);

        assertEq(delta, manualDelta);
    }

    function testGetDelta_Int2() external {
        assertEq(deltaMaths.getDelta(int256(0),         int256(0)),         0);
        assertEq(deltaMaths.getDelta(int256(0),         int256(1337)),      1337);
        assertEq(deltaMaths.getDelta(int256(0),         type(int64).max),   type(uint64).max >> 1);
        assertEq(deltaMaths.getDelta(int256(0),         type(int128).max),  type(uint128).max >> 1);
        assertEq(deltaMaths.getDelta(int256(0),         type(int256).max),  type(uint256).max >> 1);

        assertEq(deltaMaths.getDelta(0,                 int256(0)),         0);
        assertEq(deltaMaths.getDelta(1337,              int256(0)),         1337);
        assertEq(deltaMaths.getDelta(type(int64).max,   int256(0)),         type(uint64).max >> 1);
        assertEq(deltaMaths.getDelta(type(int128).max,  int256(0)),         type(uint128).max >> 1);
        assertEq(deltaMaths.getDelta(type(int256).max,  int256(0)),         type(uint256).max >> 1);

        assertEq(deltaMaths.getDelta(-0,                int256(0)),         0);
        assertEq(deltaMaths.getDelta(-1337,             int256(0)),         1337);
        assertEq(deltaMaths.getDelta(type(int64).min,   int256(0)),         (type(uint64).max >> 1) + 1);
        assertEq(deltaMaths.getDelta(type(int128).min,  int256(0)),         (type(uint128).max >> 1) + 1);
        assertEq(deltaMaths.getDelta(type(int256).min,  int256(0)),         (type(uint256).max >> 1) + 1);

        assertEq(deltaMaths.getDelta(int256(0),         -0),                0);
        assertEq(deltaMaths.getDelta(int256(0),         -1337),             1337);
        assertEq(deltaMaths.getDelta(int256(0),         type(int64).min),   (type(uint64).max >> 1) + 1);
        assertEq(deltaMaths.getDelta(int256(0),         type(int128).min),  (type(uint128).max >> 1) + 1);
        assertEq(deltaMaths.getDelta(int256(0),         type(int256).min),  (type(uint256).max >> 1) + 1);

        assertEq(deltaMaths.getDelta(1337,              int256(1337)),      0);
        assertEq(deltaMaths.getDelta(type(int256).max,  type(int256).max),  0);
        assertEq(deltaMaths.getDelta(type(int256).min,  type(int256).min),  0);
        assertEq(deltaMaths.getDelta(type(int256).min,  type(int256).max),  type(uint256).max);
        assertEq(deltaMaths.getDelta(5000,              int256(1250)),      3750);
    }

    function testGetDelta_Int_Fuzz(int256 a, int256 b) external {
        vm.assume(
            a != 0
            && b != 0
            && a > MIN_INT
            && b > MIN_INT
        );

        uint256 clampA;
        uint256 clampB;
        if (a > 0) {
            clampA = uint256(a);
        }
        if (b > 0) {
            clampB = uint256(b);
        }

        uint256 clampDelta = deltaMaths.getDelta(clampA, clampB);
        uint256 manualDelta;
        if (a >= 0 && b >= 0) {
            console.log(0);
            console.log(uint256(a));
            console.log(uint256(b));
            console.log(clampDelta);

            manualDelta = clampDelta;
        }
        else if (a >= 0 && b < 0) {
            console.log(1);
            console.log(uint256(a));
            console.log(uint256(-b));
            console.log(clampDelta);

            manualDelta = clampDelta + uint256(-b);
        }
        else if (a < 0 && b >= 0) {
            console.log(2);
            console.log(uint256(-a));
            console.log(uint256(b));
            console.log(clampDelta);

            manualDelta = clampDelta + uint256(-a);
        }
        else {
            manualDelta = deltaMaths.getDelta(uint256(-a), uint256(-b));
        }

        // 0x0000000000000000000000000000000000000000000000000000000000000000

        uint256 delta = deltaMaths.getDelta(a, b);

        assertEq(delta, manualDelta);
    }
}
