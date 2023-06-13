# Degen Gaming

This project demonstrates the creation of Degen token and deploying it on hardhat.

## Description

In this project, we have created degen token where the user is able to mint, burn , transfer, redeem and check the balance of the token . This contract is deployed on the avalanche fuji test network with the chain id 43113. We have also verified it on snowtrace explorer.

### Executing program

To run the smart contract present in contracts, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Degen.sol). Copy and paste the following code into the file

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js --network fuji
npx hardhat verify <contract address> --network fuji
```

## Authors

Rajiv C Gowda

@rajivgowda17@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
