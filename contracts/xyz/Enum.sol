pragma solidity ^0.8.0;

contract State {
    enum Stage {
        amatuer,
        advanced
    }

    Stage public stage;

    // Default stage for all user
    constructor() {
        // Default stage
        stage = Stage.amatuer;
    }

    // advanced stage for users
    function setUserToAdvancedStage() public {
        // When advanced conditions are met
        stage = Stage.advanced;
    }

    function checkStage() public view returns (string memory) {
        require(stage == Stage.advanced, "User is still amatuer");
        return "advanced user";
    }
}
