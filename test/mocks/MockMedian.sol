/// median.sol

// Copyright (C) 2017-2020 Maker Ecosystem Growth Holdings, INC.

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

pragma solidity ^0.8.21;

contract MockMedian {

    uint128 val;

    constructor(uint256 initialVal) {
        val = uint128(initialVal);
    }

    function read() external view returns (uint256) {
        require(val > 0, "Median/invalid-price-feed");
        return val;
    }

    function peek() external view returns (uint256,bool) {
        return (val, val > 0);
    }

    function setval(uint256 val_) external {
        val = uint128(val_);
    }
}