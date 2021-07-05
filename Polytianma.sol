// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.6.2;

import "./SafeMath.sol";
import "./Ownable.sol";
import "./IUniswapV2Pair.sol";
import "./IUniswapV2Factory.sol";
import "./IUniswapV2Router.sol";
import "./ERC20.sol";
import "./Address.sol";
import "./IERC20.sol";


contract Polytianma is ERC20, Ownable {
    constructor() public ERC20("Polytianma", "Polytianma", 2000000000){

    }


    function _transfer(
        address sender,
        address recipient,
        uint256 amount
    ) internal virtua overridel {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");
        _balances[sender] = _balances[sender].sub(amount, "ERC20: transfer amount exceeds balance");
        _balances[recipient] = _balances[recipient].add(amount);
        emit Transfer(sender, recipient, amount);
    }
}
