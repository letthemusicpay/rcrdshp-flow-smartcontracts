# RCRDSHP Flow NFT contracts

## Introduction

This repository contains the smart contracts and transactions that implement the core functionality of RCRDSHP The smart contracts are written in Cadence.

## What is RCRDSHP

RCRDSHP is a community platform, bringing the next format and “third wave” of the digital music revolution by securely trading music & related digital collectibles. Players collect and trade digital collectibles that represent live moments, tracks and albums from the best musical artists in the world. 

## Non Fungible Token Standard

RCRDSHP contracts utilize the Flow NFT standard (https://github.com/onflow/flow-nft)

## Directory Structure
The directories here are organized into contracts, scripts, and transactions.

Contracts contain the source code for the RCRDSHP contracts that are deployed to Flow.

Scripts contain read-only transactions to get information about the state of the NFTs

Transactions contain the transactions that various admins and users can use to perform actions in the smart contract like minting, transfering and burning.

## RCRDSHPNFT Contract Overview

``` 
pub resource NFT: NonFungibleToken.INFT {

  // Global unique collectible id
  pub let id: UInt64

  // metadata containing the nft name, description and uri
  pub var metadata: {String: String}
}
```










