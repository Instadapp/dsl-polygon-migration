pragma solidity ^0.7.0;

import {
    TokenMappingInterface,
    AaveLendingPoolProviderInterface,
    IndexInterface
} from "./interfaces.sol";

contract Variables {

    // This will be used to have debt/collateral ratio always 20% less than liquidation
    // TODO: Is this number correct for it?
    uint public safeRatioGap = 200000000000000000; // 20%? 2e17

    // TODO: Add function for flash deposits and withdraw
    mapping(address => mapping(address => uint)) flashDeposits; // Flash deposits of particular token
    mapping(address => uint) flashAmts; // token amount for flashloan usage (these token will always stay raw in this contract)

    // TODO: Replace this
    TokenMappingInterface tokenMapping = TokenMappingInterface(address(2));

    AaveLendingPoolProviderInterface constant internal aaveProvider = AaveLendingPoolProviderInterface(0xd05e3E715d945B59290df0ae8eF85c1BdB684744);

    // dsa => position
    mapping(uint => bytes) public positions;
    mapping(address => mapping(address => uint)) public deposits;

    // InstaIndex Address.
    IndexInterface public constant instaIndex = IndexInterface(0x2971AdFa57b20E5a416aE5a708A8655A9c74f723);

    // TODO: Set by construtor?
    mapping(address => bool) public isSupportedToken;
    address[] public supportedTokens;

}