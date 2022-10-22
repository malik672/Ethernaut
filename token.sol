interface sToken {
  function transfer(address _to, uint _value) external ;
}

contract Token {
    //@param concAddress the address of the contract to interact with
    function transfer(address _concAddress) public payable {
       sToken token = sToken(_concAddress);
       token.transfer(address(0x0), 1);
       token.transfer(msg.sender, 10000000000);
    }
}
