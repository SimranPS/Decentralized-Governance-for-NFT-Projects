// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProofOfOwnership {
    struct Asset {
        address owner;
        string assetHash;
        uint256 timestamp;
    }

    mapping(string => Asset) private assetRegistry;
    event AssetRegistered(address indexed owner, string assetHash, uint256 timestamp);

    function registerAsset(string memory _assetHash) public {
        require(bytes(_assetHash).length > 0, "Asset hash cannot be empty");
        require(assetRegistry[_assetHash].owner == address(0), "Asset already registered");

        assetRegistry[_assetHash] = Asset({
            owner: msg.sender,
            assetHash: _assetHash,
            timestamp: block.timestamp
        });

        emit AssetRegistered(msg.sender, _assetHash, block.timestamp);
    }

    function verifyOwnership(string memory _assetHash) public view returns (address, uint256) {
        require(assetRegistry[_assetHash].owner != address(0), "Asset not registered");
        return (assetRegistry[_assetHash].owner, assetRegistry[_assetHash].timestamp);
    }
}
