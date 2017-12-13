pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract JaguarDoll is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function JaguarDoll(address _owner)  UpgradeableToken(_owner) {
    name = "JaguarDoll";
    symbol = "MYT";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}