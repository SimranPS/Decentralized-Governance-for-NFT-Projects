# Proof-of-Ownership Tracker for Digital Assets

## Description
The **Proof-of-Ownership Tracker** is a smart contract built on Ethereum that allows users to register and verify the ownership of digital assets using blockchain technology. Each digital asset is uniquely identified by a cryptographic hash, ensuring authenticity and security.

## Features
- **Asset Registration**: Users can register a digital asset by submitting its unique hash.
- **Ownership Verification**: Allows anyone to verify the ownership of a registered asset.
- **Timestamping**: Records the exact time an asset was registered.
- **Decentralized & Immutable**: Ensures transparency and security through Ethereum blockchain.

## Installation
To deploy and interact with this contract, follow these steps:

1. **Clone the Repository**
   ```sh
   git clone https://github.com/your-repo/proof-of-ownership.git
   cd proof-of-ownership
   ```

2. **Install Dependencies** (Optional, if using Hardhat/Truffle)
   ```sh
   npm install
   ```

3. **Compile the Smart Contract**
   ```sh
   npx hardhat compile
   ```

4. **Deploy the Contract** (Replace with your preferred network)
   ```sh
   npx hardhat run scripts/deploy.js --network goerli
   ```

## Usage

### Register an Asset
Call the `registerAsset(string memory _assetHash)` function from your smart contract interface.

### Verify Ownership
Call the `verifyOwnership(string memory _assetHash)` function to get the owner's address and registration timestamp.

## Smart Contract Overview
```solidity
contract ProofOfOwnership {
    struct Asset {
        address owner;
        string assetHash;
        uint256 timestamp;
    }

    mapping(string => Asset) private assetRegistry;
    event AssetRegistered(address indexed owner, string assetHash, uint256 timestamp);
}
```

## Contract Address
Address: 0x23f47746F5ed571d0C72792C4261d960a05cdAa8
![image](https://github.com/user-attachments/assets/673ff60d-7bce-435f-949f-556d7df884ec)

