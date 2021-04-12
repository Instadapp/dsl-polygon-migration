pragma solidity >=0.7.0;
pragma experimental ABIEncoderV2;

contract Events {
    event LogDeposit(
        address owner,
        address[] tokens,
        uint[] amts
    );

    event LogWithdraw(
        address owner,
        address[] tokens,
        uint[] amts
    );

    event LogUpdateSafeRatioGap(
        uint256 oldSafeRatioGap,
        uint256 newSafeRatioGap
    );

    event LogAddSupportedTokens(
        uint256[] tokens
    );

    event LogSettle();

    event LogAaveV2Migrate(
        address indexed user,
        address[] supplyTokens,
        address[] borrowTokens,
        uint256[] supplyAmts,
        uint256[] borrowAmts
    );

    event LogStateSync(
        uint256 indexed stateId,
        bytes data
    );
}