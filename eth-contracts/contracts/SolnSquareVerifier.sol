pragma solidity >=0.4.21 <0.6.0;

// TODO define a contract call to the zokrates generated solidity contract <Verifier> or <renamedVerifier>
import "./ERC721Mintable.sol";
import "./SquareVerifier.sol";


// TODO define another contract named SolnSquareVerifier that inherits from your ERC721Mintable class
contract SolnSquareVerifier is CustomERC721Token {
  SquareVerifier private verifier;

  constructor (address verifierContract) public {
      verifier = SquareVerifier(verifierContract);
  }

// TODO define a solutions struct that can hold an index & an address
  struct Solution{
      uint _index;
      address _address;
  }

// TODO define an array of the above struct
  Solution[] private solutions;

// TODO define a mapping to store unique solutions submitted
  mapping(bytes32 => bool) private uniqueSolutions;

// TODO Create an event to emit when a solution is added
  event SolutionAdded(address submitter);

// TODO Create a function to add the solutions to the array and emit the event
  function addSolution(uint256 index, address submitter, bytes32 solutionKey)public {
    Solution memory newSolution = Solution(index, submitter);
    solutions.push(newSolution);
    uniqueSolutions[solutionKey] = true;
    emit SolutionAdded(submitter);
  }

    modifier verifySolution(
        uint[2] memory a,
        uint[2][2] memory b,
        uint[2] memory c,
        uint[2] memory input
    ) {
        require(verifier.verifyTx(a, b, c, input),
            "SolnSquareVerifier: Solution has invalid proof"
        );
        _;
    }

// TODO Create a function to mint new NFT only after the solution has been verified
//  - make sure the solution is unique (has not been used before)
//  - make sure you handle metadata as well as tokenSuplly
  function mintWithVerification(
      address to,
      uint256 id,
      uint[2] memory a,
      uint[2][2] memory b,
      uint[2] memory c,
      uint[2] memory input
  )
      public
      verifySolution(a, b, c, input)
      returns(bool)
  {
      bytes32 solutionKey = keccak256(abi.encodePacked(a, b, c, input));
      require(
          uniqueSolutions[solutionKey] == false,
          "SolnSquareVerifier: solution is not unique"
      );
      addSolution(id, to, solutionKey);
      return mint(to, id);
  }
}


























