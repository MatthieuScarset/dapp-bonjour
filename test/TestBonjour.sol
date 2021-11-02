pragma solidity >=0.4.21 <0.9.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Bonjour.sol";

contract TestBonjour {
    function testDefaultGreeting() public {
        Bonjour bjr = Bonjour(DeployedAddresses.Bonjour());

        string expected = "Bonjour";

        Assert.equal(
            bjr.defaultGreeting(),
            expected,
            "It should have another default greeting word."
        );
    }

    function testUserDefaultGreeting() public {
        Bonjour bjr = Bonjour(DeployedAddresses.Bonjour());

        string expected = bjr.getDefault();

        Assert.equal(
            bjr.bonjour(),
            expected,
            "It should use the default greeting word."
        );
    }

    function testUserCustomGreeting() public {
        Bonjour bjr = Bonjour(DeployedAddresses.Bonjour());

        string custom = "Salut";

        bjr.set(custom);

        Assert.equal(
            bjr.bonjour(),
            custom,
            "It should use the custom greeting word."
        );
    }
}
