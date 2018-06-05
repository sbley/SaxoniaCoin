pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "openzeppelin-solidity/contracts/lifecycle/Destructible.sol";

/**
 * @title SaxoniaCoin
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract SaxoniaCoin is StandardToken, Destructible {

    string public constant name = "SaxoniaCoin"; // solium-disable-line uppercase
    string public constant symbol = "SAX"; // solium-disable-line uppercase
    uint8 public constant decimals = 3; // solium-disable-line uppercase

    uint256 public constant INITIAL_SUPPLY = 1000000 * (10 ** uint256(decimals));

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }

}
