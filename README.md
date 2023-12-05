# sui_graphql_swift_sdk
sui graphql swift sdk 


# Sui GraphQL Examples
### [Address](#0)
#### &emsp;&emsp;[Address](#0)
#### &emsp;&emsp;[Transaction Block Connection](#1)
### [Balance Connection](#1)
#### &emsp;&emsp;[Balance Connection](#65535)
### [Chain Id](#2)
#### &emsp;&emsp;[Chain Id](#131070)
### [Checkpoint](#3)
#### &emsp;&emsp;[At Digest](#196605)
#### &emsp;&emsp;[At Seq Num](#196606)
#### &emsp;&emsp;[First Two Tx Blocks For Checkpoint](#196607)
#### &emsp;&emsp;[Latest Checkpoint](#196608)
#### &emsp;&emsp;[Multiple Selections](#196609)
#### &emsp;&emsp;[With Timestamp Tx Block Live Objects](#196610)
#### &emsp;&emsp;[With Tx Sent Addr Filter](#196611)
### [Checkpoint Connection](#4)
#### &emsp;&emsp;[Ascending Fetch](#262140)
#### &emsp;&emsp;[First Ten After Checkpoint](#262141)
#### &emsp;&emsp;[Last Ten After Checkpoint](#262142)
### [Coin Connection](#5)
#### &emsp;&emsp;[Coin Connection](#327675)
### [Coin Metadata](#6)
#### &emsp;&emsp;[Coin Metadata](#393210)
### [Epoch](#7)
#### &emsp;&emsp;[Latest Epoch](#458745)
#### &emsp;&emsp;[Specific Epoch](#458746)
#### &emsp;&emsp;[With Checkpoint Connection](#458747)
#### &emsp;&emsp;[With Tx Block Connection](#458748)
#### &emsp;&emsp;[With Tx Block Connection Latest Epoch](#458749)
### [Event Connection](#8)
#### &emsp;&emsp;[Event Connection](#524280)
### [Name Service](#9)
#### &emsp;&emsp;[Name Service](#589815)
### [Object](#10)
#### &emsp;&emsp;[Object](#655350)
### [Object Connection](#11)
#### &emsp;&emsp;[Filter Object Ids](#720885)
#### &emsp;&emsp;[Filter Owner](#720886)
#### &emsp;&emsp;[Object Connection](#720887)
### [Owner](#12)
#### &emsp;&emsp;[Dynamic Field](#786420)
#### &emsp;&emsp;[Dynamic Field Connection](#786421)
#### &emsp;&emsp;[Dynamic Object Field](#786422)
#### &emsp;&emsp;[Owner](#786423)
### [Protocol Configs](#13)
#### &emsp;&emsp;[Key Value](#851955)
#### &emsp;&emsp;[Key Value Feature Flag](#851956)
#### &emsp;&emsp;[Specific Config](#851957)
#### &emsp;&emsp;[Specific Feature Flag](#851958)
### [Service Config](#14)
#### &emsp;&emsp;[Service Config](#917490)
### [Stake Connection](#15)
#### &emsp;&emsp;[Stake Connection](#983025)
### [Sui System State Summary](#16)
#### &emsp;&emsp;[Sui System State Summary](#1048560)
### [Transaction Block](#17)
#### &emsp;&emsp;[Transaction Block](#1114095)
#### &emsp;&emsp;[Transaction Block Kind](#1114096)
### [Transaction Block Connection](#18)
#### &emsp;&emsp;[Before After Checkpoint](#1179630)
#### &emsp;&emsp;[Changed Object Filter](#1179631)
#### &emsp;&emsp;[Input Object Filter](#1179632)
#### &emsp;&emsp;[Input Object Sent Addr Filter](#1179633)
#### &emsp;&emsp;[Package Filter](#1179634)
#### &emsp;&emsp;[Package Module Filter](#1179635)
#### &emsp;&emsp;[Package Module Func Filter](#1179636)
#### &emsp;&emsp;[Recv Addr Filter](#1179637)
#### &emsp;&emsp;[Sent Addr Filter](#1179638)
#### &emsp;&emsp;[Tx Ids Filter](#1179639)
#### &emsp;&emsp;[Tx Kind Filter](#1179640)
#### &emsp;&emsp;[With Defaults Ascending](#1179641)
### [Transaction Block Effects](#19)
#### &emsp;&emsp;[Transaction Block Effects](#1245165)
## <a id=0></a>
## Address
### <a id=0></a>
### Address
####  Get the address' balance and its coins' id and type
```
query address($address: SuiAddress!) {
  address(
    address: $address
  ) {
    location
    balance {
      coinType {
        repr
      }
      coinObjectCount
      totalBalance
    }
    coinConnection {
      nodes {
        asMoveObject {
          contents {
            type {
              repr
            }
          }
        }

      }
    }
  }
}


```

```
Network.shared.apollo.fetch(query: AddressQuery(address: "0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9")) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: \(graphQLResult)")
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
```
```
Success! Result: GraphQLResult<Data>(data: Optional(SUIAPI.AddressQuery.Data(__data: ApolloAPI.DataDict(_storage: ApolloAPI.DataDict._Storage))), errors: nil, extensions: nil, source: Apollo.GraphQLResult<SUIAPI.AddressQuery.Data>.Source.server, dependentKeys: Optional(Set(["QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance.coinObjectCount", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance.coinType.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9)", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject.contents.type.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject.contents.type.repr", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).location", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject.contents.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance.coinType", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance.coinType.repr", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance.totalBalance", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject.contents", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject.contents.type"])))
```





[创建工程并集成Apollo graphql](https://github.com/cczufish/sui_graphql_swift_sdk/blob/main/createproject.md)

[Write your first query](https://github.com/cczufish/sui_graphql_swift_sdk/blob/main/WriteYourFirstSuiQuery.md)

