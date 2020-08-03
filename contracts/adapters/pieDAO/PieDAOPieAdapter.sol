// Copyright (C) 2020 Zerion Inc. <https://zerion.io>
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <https://www.gnu.org/licenses/>.
//
// SPDX-License-Identifier: LGPL-3.0-only

pragma solidity 0.6.11;
pragma experimental ABIEncoderV2;

import { ERC20 } from "../../shared/ERC20.sol";
import { ProtocolAdapter } from "../ProtocolAdapter.sol";


/**
 * @title Adapter for PieDAO pools.
 * @dev Implementation of ProtocolAdapter abstract contract.
 * @author Mick de Graaf <mick@dexlab.io>
 */
contract PieDAOPieAdapter is ProtocolAdapter {

    /**
     * @return Amount of PieDAO pool tokens held by the given account.
     * @param token Address of the pool!
     * @dev Implementation of ProtocolAdapter interface function.
     */
    function getBalance(
        address token,
        address account
    )
        public
        view
        override
        returns (uint256, bytes32)
    {
        return (ERC20(token).balanceOf(account), "PieDAO Pie");
    }
}