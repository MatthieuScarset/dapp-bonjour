

struct Funder {
  address addr;
  uint amount;
}

struct Campaign {
  address beneficiary;
  uint fundingGoal;
  uint numFunders;
  uint amount;
  mapping (uint => Funder) funders;
}

uint public numCampaigns;

mapping (uint => Campaign) public campaigns;

function newCampaign(address beneficiary, uint goal) public returns (uint campaignID) {
  campaignID = numCampaigns++;
  campaigns[campaignID] = Campaign(beneficiary, goal, 0, 0);
}
