contract fallbacks {
    //@param _to is the address of the smart contract
    function contrib(address payable _to) public payable{
        //call the contribute function 
       (bool success,bytes memory data ) = _to.call{value: msg.value}("");
    } 

    function contribute(address payable _to) public payable{
        //when you call a contract that dont exist it triggers the fallback function
       (bool success,bytes memory data ) = _to.call{value: msg.value, gas: 20000000000}(
        abi.encodeWithSignature("contribute()")
       );
    }
}


//ethernaut 1 - fallbacks
