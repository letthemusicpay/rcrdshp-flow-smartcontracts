import NonFungibleToken from NonFungibleTokenADDRESS
import RCRDSHPNFT from RCRDSHPNFTADDRESS

// This transaction gets the length of an account's nft collection

pub fun main(account: Address): Int {
    let collectionRef = getAccount(account)
        .getCapability(/public/%s)
        .borrow<&{NonFungibleToken.CollectionPublic}>()
        ?? panic("Could not borrow capability from public collection")

    return collectionRef.getIDs().length
}
