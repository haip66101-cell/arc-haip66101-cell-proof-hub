// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "../src/ArcHaip66101CellProofHub.sol";
contract ArcHaip66101CellProofHubTest {
    function testOpenTask() public {
        ArcHaip66101CellProofHub app = new ArcHaip66101CellProofHub();
        uint256 id = app.openTask(1000000, keccak256("arc-agent"), "arc proof");
        require(id == 1, "bad id");
    }
}
