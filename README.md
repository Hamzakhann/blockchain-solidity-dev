
# Ethers | Hardhat | Solidity Guide...

## Ethers/Solc Deployment...
***Compile:***
``
solcjs --bin --include-path node_modules/ --base-path . MainContract.sol``

***Deploy:***
"To deploy a smart contract, connect to a blockchain node provider like Infura/Alchemy/Moralis, have a wallet like metask or ganache with a private key for transaction signing, and ensure sufficient funds to cover gas fees. Use libraries such as `web3.js` or `ethers.js` to interact with the blockchain and deploy the contract."
```
let  provider  =  new  ethers.JsonRpcProvider(process.env.RPC_URL)
let  wallet  =  new  ethers.Wallet(process.env.PRIVATE_KEY, provider)
const  abi  = fs.readFileSync("./contract.abi", "utf8")
const  binary  =  fs.readFileSync("./contract.bin","utf8")
const  contractFactory  =  new  ethers.ContractFactory(abi, binary, wallet)
const  contract  =  await  contractFactory.deploy()
let  currentFavoriteNumber  =  await  contract.retrieve()
```

## Harhat Deployment...
**Basic Commands**
```
yarn add --dev hardhat
yarn hardhat init
yarn hardhat compile
```
**Basic Folder Structure**
```
contracts
scripts
tasks
test
hardhat.config.js
```
These are basic files and folders where we have to write scripts and code for smart contract compilation and deployement.
**scripts vs tasks:** 
In a Hardhat project, the `scripts` folder holds ad-hoc execution scripts, while the `tasks` folder is designed for creating organized and reusable tasks integrated into the development workflow.

**Useful Packages**
```
hardhat-gas-reporter
solidity-coverage
hardhat-deploy
hardhat-deploy-ethers
@chainlink/contracts
```
***Deployment***
```
const { ethers, run, network } =  require("hardhat")
const  SimpleStorageFactory  =  await  ethers.getContractFactory("SimpleStorage")
const  simpleStorage  =  await  SimpleStorageFactory.deploy()
const  currentValue  =  await  simpleStorage.retrieve()
```
***Basic Tasks***
  - **verify:** Verifies a contract on Etherscan or Sourcify
  - **typechain:** Generate Typechain typings for compiled contracts
  - **test:**          Runs mocha tests
  - **run:**           Runs a user-defined script after compiling the project
  - **node :**     Starts a JSON-RPC server on top of Hardhat Network
  
  ***hardhat-deploy***
  This plugin adds a mechanism to deploy contracts to any network, keeping track of them and replicating the same environment for testing.
Install using
```
yarn add --dev hardhat-deploy
```
You will have to install some more dependencies.
```
yarn add --dev @nomiclabs/hardhat-ethers hardhat-deploy-ethers ethers
```
After that add this in hardhat.config.js
```
require("hardhat-deploy")
```
**NOTE: hre--->hardhat runtime environment**
If you are using hardhat-deploy you are not going to use scripts folder to write your deploy script instead you will create new folder named deploy and in this you will create files with convention like 01-deploy-fund-me.js.

# Ethers | Hardhat | Solidity Guide...

## Ethers/Solc Deployment...
***Compile:***
``
solcjs --bin --include-path node_modules/ --base-path . MainContract.sol``

***Deploy:***
"To deploy a smart contract, connect to a blockchain node provider like Infura/Alchemy/Moralis, have a wallet like metask or ganache with a private key for transaction signing, and ensure sufficient funds to cover gas fees. Use libraries such as `web3.js` or `ethers.js` to interact with the blockchain and deploy the contract."
```
let  provider  =  new  ethers.JsonRpcProvider(process.env.RPC_URL)
let  wallet  =  new  ethers.Wallet(process.env.PRIVATE_KEY, provider)
const  abi  = fs.readFileSync("./contract.abi", "utf8")
const  binary  =  fs.readFileSync("./contract.bin","utf8")
const  contractFactory  =  new  ethers.ContractFactory(abi, binary, wallet)
const  contract  =  await  contractFactory.deploy()
let  currentFavoriteNumber  =  await  contract.retrieve()
```

## Harhat Deployment...
**Basic Commands**
```
yarn add --dev hardhat
yarn hardhat init
yarn hardhat compile
```
**Basic Folder Structure**
```
contracts
scripts
tasks
test
hardhat.config.js
```
These are basic files and folders where we have to write scripts and code for smart contract compilation and deployement.
**scripts vs tasks:** 
In a Hardhat project, the `scripts` folder holds ad-hoc execution scripts, while the `tasks` folder is designed for creating organized and reusable tasks integrated into the development workflow.

**Useful Packages**
```
hardhat-gas-reporter
solidity-coverage
hardhat-deploy
hardhat-deploy-ethers
@chainlink/contracts
```
***Deployment***
```
const { ethers, run, network } =  require("hardhat")
const  SimpleStorageFactory  =  await  ethers.getContractFactory("SimpleStorage")
const  simpleStorage  =  await  SimpleStorageFactory.deploy()
const  currentValue  =  await  simpleStorage.retrieve()
```
***Basic Tasks***
  - **verify:** Verifies a contract on Etherscan or Sourcify
  - **typechain:** Generate Typechain typings for compiled contracts
  - **test:**          Runs mocha tests
  - **run:**           Runs a user-defined script after compiling the project
  - **node :**     Starts a JSON-RPC server on top of Hardhat Network
  
  ***hardhat-deploy***
  This plugin adds a mechanism to deploy contracts to any network, keeping track of them and replicating the same environment for testing.
Install using
```
yarn add --dev hardhat-deploy
```
You will have to install some more dependencies.
```
yarn add --dev @nomiclabs/hardhat-ethers hardhat-deploy-ethers ethers
```
After that add this in hardhat.config.js
```
require("hardhat-deploy")
```
**NOTE: hre--->hardhat runtime environment**
If you are using hardhat-deploy you are not going to use scripts folder to write your deploy script instead you will create new folder named deploy and in this you will create files with convention like 01-deploy-fund-me.js.

# Ethers | Hardhat | Solidity Guide...

## Ethers/Solc Deployment...
***Compile:***
``
solcjs --bin --include-path node_modules/ --base-path . MainContract.sol``

***Deploy:***
"To deploy a smart contract, connect to a blockchain node provider like Infura/Alchemy/Moralis, have a wallet like metask or ganache with a private key for transaction signing, and ensure sufficient funds to cover gas fees. Use libraries such as `web3.js` or `ethers.js` to interact with the blockchain and deploy the contract."
```
let  provider  =  new  ethers.JsonRpcProvider(process.env.RPC_URL)
let  wallet  =  new  ethers.Wallet(process.env.PRIVATE_KEY, provider)
const  abi  = fs.readFileSync("./contract.abi", "utf8")
const  binary  =  fs.readFileSync("./contract.bin","utf8")
const  contractFactory  =  new  ethers.ContractFactory(abi, binary, wallet)
const  contract  =  await  contractFactory.deploy()
let  currentFavoriteNumber  =  await  contract.retrieve()
```

## Harhat Deployment...
**Basic Commands**
```
yarn add --dev hardhat
yarn hardhat init
yarn hardhat compile
```
**Basic Folder Structure**
```
contracts
scripts
tasks
test
hardhat.config.js
```
These are basic files and folders where we have to write scripts and code for smart contract compilation and deployement.
**scripts vs tasks:** 
In a Hardhat project, the `scripts` folder holds ad-hoc execution scripts, while the `tasks` folder is designed for creating organized and reusable tasks integrated into the development workflow.

**Useful Packages**
```
hardhat-gas-reporter
solidity-coverage
hardhat-deploy
hardhat-deploy-ethers
@chainlink/contracts
```
***Deployment***
```
const { ethers, run, network } =  require("hardhat")
const  SimpleStorageFactory  =  await  ethers.getContractFactory("SimpleStorage")
const  simpleStorage  =  await  SimpleStorageFactory.deploy()
const  currentValue  =  await  simpleStorage.retrieve()
```
***Basic Tasks***
  - **verify:** Verifies a contract on Etherscan or Sourcify
  - **typechain:** Generate Typechain typings for compiled contracts
  - **test:**          Runs mocha tests
  - **run:**           Runs a user-defined script after compiling the project
  - **node :**     Starts a JSON-RPC server on top of Hardhat Network
  
  ***hardhat-deploy***
  This plugin adds a mechanism to deploy contracts to any network, keeping track of them and replicating the same environment for testing.
Install using
```
yarn add --dev hardhat-deploy
```
You will have to install some more dependencies.
```
yarn add --dev @nomiclabs/hardhat-ethers hardhat-deploy-ethers ethers
```
After that add this in hardhat.config.js
```
require("hardhat-deploy")
```
**NOTE: hre--->hardhat runtime environment**
If you are using hardhat-deploy you are not going to use scripts folder to write your deploy script instead you will create new folder named deploy and in this you will create files with convention like 01-deploy-fund-me.js.

[Eth Opcodes](https://github.com/crytic/evm-opcodes) use this website to see different data structures gas 



### Interfaces
When you declare a variable with a type of an interface, you are essentially saying that the variable can hold any contract address that implements that interface. In other words, the variable can interact with any contract that provides the functions defined in the interface.

### Events
In Solidity, events are a way to log and notify external entities (such as user interfaces or other smart contracts) about specific occurrences within a smart contract. They serve as a mechanism for emitting and recording data onto the blockchain, making it transparent and easily accessible. Emits, on the other hand, are used to trigger or emit events within the smart contract code.

```
event storedNum(
  uint256 indexed oldNumber,
  address sender
)
emit storedNum(
  7,
  msg.sender
)
```
when we emit these events there are two kinds of parameters.
1. Index Parameters
2. Non Index Parameters

***INDEX PARAMETERS***
We can have up to 3 index parameters and they are also known as **topics** .
Index parameter makes it easier and quicker for applications to filter and fetch specific logs from the massive pile of data on the blockchain.

***NON INDEX PARAMETERS***
Non index one are harder to search because they get ABI encoded and you have to know the ABI in order to decode them.


