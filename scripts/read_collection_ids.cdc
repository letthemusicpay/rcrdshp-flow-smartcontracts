import NonFungibleToken from NonFungibleTokenADDRESS
import RCRDSHPNFT from RCRDSHPNFTADDRESS

// This transaction returns an array of all the nft ids in the collection

pub fun main(account: Address): [UInt64] {
    let collectionRef = getAccount(account)
        .getCapability(/public/%s)
        .borrow<&{NonFungibleToken.CollectionPublic}>()
        ?? panic("Could not borrow capability from public collection")

    return collectionRef.getIDs()
}
