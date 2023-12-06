# sui_graphql_swift_sdk
sui graphql swift sdk 

## 集成sui_graphql_swift_sdk

Install With Swift Package Manager

use the Xcode project configuration UI to add the sui_graphql_swift_sdk iOS package.

In the dialog that appears, paste the URL of the sui_graphql_swift_sdk iOS GitHub repo (https://github.com/cczufish/sui_graphql_swift_sdk.git) into the search bar, then select the apollo-ios package that appears:

Select which version you want to use , then click Add Package.

Select which packages you want to use. If you're getting started, we recommend selecting just the main Apollo library for now. You can always add other packages later if you need them.

Then, click Add Package.

![示例图片](https://github.com/cczufish/sui_graphql_swift_sdk/blob/main/images/WechatIMG181.jpg)
![示例图片](https://github.com/cczufish/sui_graphql_swift_sdk/blob/main/images/WechatIMG184.jpg)
![示例图片](https://github.com/cczufish/sui_graphql_swift_sdk/blob/main/images/WechatIMG185.jpg)

Sources Tree
```

├── Operations
│   └── Queries
│       ├── AddressQuery.graphql.swift
│       ├── Balance_connectionQuery.graphql.swift
│       ├── ChainIdentifierQuery.graphql.swift
│       ├── CheckpointLatestQuery.graphql.swift
│       ├── CheckpointQuery.graphql.swift
│       ├── CheckpointWithMultipleSelectionQuery.graphql.swift
│       ├── CheckpointWithSequenceNumberAndFirstTwoQuery.graphql.swift
│       ├── CheckpointWithSequenceNumberQuery.graphql.swift
│       └── Transaction_block_with_relation_filterQuery.graphql.swift
└── Schema
    ├── CustomScalars
    │   ├── Base64.swift
    │   ├── BigInt.swift
    │   ├── DateTime.swift
    │   └── SuiAddress.swift
    ├── Interfaces
    │   └── ObjectOwner.graphql.swift
    ├── Objects
    │   ├── Address.graphql.swift
    │   ├── AuthenticatorStateUpdate.graphql.swift
    │   ├── Balance.graphql.swift
    │   ├── BalanceConnection.graphql.swift
    │   ├── ChangeEpochTransaction.graphql.swift
    │   ├── Checkpoint.graphql.swift
    │   ├── Coin.graphql.swift
    │   ├── CoinConnection.graphql.swift
    │   ├── CommitteeMember.graphql.swift
    │   ├── ConsensusCommitPrologueTransaction.graphql.swift
    │   ├── EndOfEpochData.graphql.swift
    │   ├── EndOfEpochTransaction.graphql.swift
    │   ├── Epoch.graphql.swift
    │   ├── GasCostSummary.graphql.swift
    │   ├── GasInput.graphql.swift
    │   ├── GenesisTransaction.graphql.swift
    │   ├── MoveObject.graphql.swift
    │   ├── MoveType.graphql.swift
    │   ├── MoveValue.graphql.swift
    │   ├── Object.graphql.swift
    │   ├── Owner.graphql.swift
    │   ├── PageInfo.graphql.swift
    │   ├── ProgrammableTransaction.graphql.swift
    │   ├── Query.graphql.swift
    │   ├── RandomnessStateUpdate.graphql.swift
    │   ├── TransactionBlock.graphql.swift
    │   ├── TransactionBlockConnection.graphql.swift
    │   └── TransactionBlockEdge.graphql.swift
    ├── SchemaConfiguration.swift
    ├── SchemaMetadata.graphql.swift
    └── Unions
        └── TransactionBlockKind.graphql.swift

8 directories, 45 files

```


[GraphQL RPC Beta](https://docs.sui.io/references/sui-api/beta-graph-ql)


# Connecting to Sui Network
```
import Foundation
import Apollo

class Network {
    
  static let shared = Network()

  private init() {}

  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://graphql-beta.mainnet.sui.io/")!)
    
}

```

# Sui GraphQL Examples
### [Address](#0)
#### &emsp;&emsp;[Address](#0)
#### &emsp;&emsp;[Transaction Block Connection](#01)
### [Balance Connection](#1)
#### &emsp;&emsp;[Balance Connection](#1)
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
import Apollo
import SUIAPI

Network.shared.apollo.fetch(query: AddressQuery(address: "0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9")) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: \(graphQLResult)")
                print("Success! balance: \(graphQLResult.data?.address?.balance?.totalBalance)")
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
```
```
Success! Result: GraphQLResult<Data>(data: Optional(
SUIAPI.AddressQuery.Data(__data: ApolloAPI.DataDict(_storage: ApolloAPI.DataDict._Storage))), errors: nil, extensions: nil,
source: Apollo.GraphQLResult<SUIAPI.AddressQuery.Data>.Source.server, dependentKeys: Optional(Set(["QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance.coinObjectCount",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance.coinType.__typename",
 "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9)",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject.contents.type.__typename",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject.contents.type.repr",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).__typename",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance.__typename",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).location",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject.contents.__typename",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.__typename",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.__typename",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance.coinType",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance.coinType.repr",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance.totalBalance",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject.contents",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject.__typename",
"QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).coinConnection.nodes.0.asMoveObject.contents.type"])))

Success! balance: Optional("126523478")
```

## <a id=1></a>
## Balance Connection
### <a id=1></a>
### Balance Connection
####  Query the balance for objects of type COIN and then for each coin
####  get the coin type, the number of objects, and the total balance

```
query balance_connection($address: SuiAddress!,$type:String){
  address(
    address: $address
  ) {
    balance(
      type: $type
    ) {
      coinObjectCount
      totalBalance
    }
    balanceConnection {
      nodes {
        coinType {
          repr
        }
        coinObjectCount
        totalBalance
      }
      pageInfo {
        endCursor
      }
    }
  }
}

```

```
import Apollo
import SUIAPI

Network.shared.apollo.fetch(query: Balance_connectionQuery(address: "0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9",type:"0xc060006111016b8a020ad5b33834984a437aaa7d3c74c18e09a95d48aceab08c::coin::COIN")) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: \(graphQLResult)")
                print("Success! balance: \(graphQLResult.data?.address?.balance?.totalBalance)")

            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
```

```
Success! Result: GraphQLResult<Data>(data: Optional(SUIAPI.Balance_connectionQuery.Data(__data: ApolloAPI.DataDict(_storage: ApolloAPI.DataDict._Storage))), errors: nil, extensions: nil, source: Apollo.GraphQLResult<SUIAPI.Balance_connectionQuery.Data>.Source.server, dependentKeys: Optional(Set(["QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.4.totalBalance", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.6.coinType", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.7.coinObjectCount", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance(type:0xc060006111016b8a020ad5b33834984a437aaa7d3c74c18e09a95d48aceab08c::coin::COIN).totalBalance", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.6.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance(type:0xc060006111016b8a020ad5b33834984a437aaa7d3c74c18e09a95d48aceab08c::coin::COIN).__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.3.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9)", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.5.coinType.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.7.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.2.coinObjectCount", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.7.totalBalance", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.5.coinType.repr", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.4.coinType", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.2.coinType", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.3.coinType.repr", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.7.coinType.repr", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.5.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.pageInfo.endCursor", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance(type:0xc060006111016b8a020ad5b33834984a437aaa7d3c74c18e09a95d48aceab08c::coin::COIN).coinObjectCount", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.pageInfo.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.1.totalBalance", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.1.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balance(type:0xc060006111016b8a020ad5b33834984a437aaa7d3c74c18e09a95d48aceab08c::coin::COIN)", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.3.coinObjectCount", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.7.coinType", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.2.coinType.repr", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.3.coinType", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.0.coinObjectCount", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.3.totalBalance", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.4.coinType.repr", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.5.totalBalance", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.0.coinType", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.0.totalBalance", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.1.coinType.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.6.coinType.repr", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.4.coinType.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.pageInfo", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.1.coinObjectCount", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.4.coinObjectCount", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.1.coinType.repr", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.4.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.1.coinType", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.5.coinObjectCount", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.0.coinType.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.5.coinType", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.2.totalBalance", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.2.coinType.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.6.coinType.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.0.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.6.coinObjectCount", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.6.totalBalance", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.0.coinType.repr", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.2.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.7.coinType.__typename", "QUERY_ROOT.address(address:0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9).balanceConnection.nodes.3.coinType.__typename"])))
Success! balance: Optional("28431")
```

## <a id=01></a>
## Transaction Block Connection
### <a id=01></a>
### Transaction Block Connection
####  See examples in Query::transactionBlockConnection as this is
####  similar behavior to the `transactionBlockConnection` in Query but
####  supports additional `AddressTransactionBlockRelationship` filter

```

query transaction_block_with_relation_filter($address: SuiAddress!) {
  address(address: $address) {
    transactionBlockConnection(relation: SENT, filter: { package: "0x2" }) {
      nodes {
        sender {
          location
        }
        gasInput {
          gasPrice
          gasBudget
        }
      }
    }
  }
}

```

```
import Apollo
import SUIAPI

Network.shared.apollo.fetch(query: Transaction_block_with_relation_filterQuery(address: "0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9")) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! gasBudget: \(graphQLResult.data?.address?.transactionBlockConnection?.nodes.first?.gasInput?.gasBudget)")

                print("Success! gasInput: \(graphQLResult.data?.address?.transactionBlockConnection?.nodes.first?.gasInput?.gasPrice)")
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
```

```
Success! gasBudget: Optional("6234480")
Success! gasInput: Optional("781")
```


## <a id=2></a>
## Chain Id
### <a id=131070></a>
### Chain Id
####  Returns the chain identifier for the chain that the server is tracking

```
import Apollo
import SUIAPI
        Network.shared.apollo.fetch(query: ChainIdentifierQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! chainIdentifier: \(graphQLResult.data?.chainIdentifier)")

            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
        
```

```
query chainIdentifier{
  chainIdentifier
}

```


```
Success! chainIdentifier: Optional("35834a8a")
```

## <a id=3></a>
## Checkpoint
### <a id=196605></a>
### At Digest
####  Get the checkpoint's information at a particular digest


```
# Get the checkpoint's information at a particular digest
query checkpoint($digest:String){
  checkpoint(id: { digest: $digest }) {
    digest
    sequenceNumber
    validatorSignature
    previousCheckpointDigest
    networkTotalTransactions
    rollingGasSummary {
      computationCost
      storageCost
      storageRebate
      nonRefundableStorageFee
    }
    epoch {
      epochId
      referenceGasPrice
      startTimestamp
      endTimestamp
    }
    endOfEpoch {
      nextProtocolVersion
    }
  }
}


```


```
import Apollo
import SUIAPI

        Network.shared.apollo.fetch(query: CheckpointQuery(digest:"GaDeWEfbSQCQ8FBQHUHVdm4KjrnbgMqEZPuhStoq5njU")) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! validatorSignature: \(graphQLResult.data?.checkpoint?.validatorSignature)")
                print("Success! previousCheckpointDigest: \(graphQLResult.data?.checkpoint?.previousCheckpointDigest)")
                print("Success! referenceGasPrice: \(graphQLResult.data?.checkpoint?.epoch?.referenceGasPrice)")
                
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
        
```



```
Success! validatorSignature: Optional("gxLDvLWE7jYr32/qu+7Dsa480c6Z1TyXm0nt37KDhTwmjRfP0H/Kw+m5LFkRM9xc")
Success! previousCheckpointDigest: Optional("4XvAN2hfEtTgFfTLA5jaWn96rZ84hAyLtnzRKdsRDXHC")
Success! referenceGasPrice: Optional("1000")

```

### <a id=196606></a>
### At Seq Num
####  Get the checkpoint's information at a particular sequence number

```
# Get the checkpoint's information at a particular sequence number
query checkpointWithSequenceNumber($sequenceNumber:Int!){
  checkpoint(id: { sequenceNumber: $sequenceNumber }) {
    digest
    sequenceNumber
    validatorSignature
    previousCheckpointDigest
    networkTotalTransactions
    rollingGasSummary {
      computationCost
      storageCost
      storageRebate
      nonRefundableStorageFee
    }
    epoch {
      epochId
      referenceGasPrice
      startTimestamp
      endTimestamp
    }
    endOfEpoch {
      nextProtocolVersion
    }
  }
}




```

```
import Apollo
import SUIAPI

        Network.shared.apollo.fetch(query: CheckpointWithSequenceNumberQuery(sequenceNumber: 10)) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! validatorSignature: \(graphQLResult.data?.checkpoint?.validatorSignature)")
                print("Success! previousCheckpointDigest: \(graphQLResult.data?.checkpoint?.previousCheckpointDigest)")
                print("Success! referenceGasPrice: \(graphQLResult.data?.checkpoint?.epoch?.referenceGasPrice)")
                
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }



```

```
Success! validatorSignature: Optional("gxLDvLWE7jYr32/qu+7Dsa480c6Z1TyXm0nt37KDhTwmjRfP0H/Kw+m5LFkRM9xc")
Success! previousCheckpointDigest: Optional("4XvAN2hfEtTgFfTLA5jaWn96rZ84hAyLtnzRKdsRDXHC")
Success! referenceGasPrice: Optional("1000")
Success! sequenceNumber: Optional(10)

```


### <a id=196607></a>
### First Two Tx Blocks For Checkpoint
####  Get the checkpoint's information at a particular sequence number

```
# Get data for the first two transaction blocks of checkpoint at sequence number 10
query checkpointWithSequenceNumberAndFirstTwo($sequenceNumber:Int!,$first:Int!){
  checkpoint(id: { sequenceNumber: $sequenceNumber }) {
    transactionBlockConnection(first: $first) {
      edges {
        node {
          kind {
            __typename
          }
          digest

          expiration {
            epochId
          }
        }
      }
      pageInfo {
        startCursor
        hasNextPage
        hasPreviousPage
        endCursor
      }
    }
  }
}

```

```
import Apollo
import SUIAPI

        Network.shared.apollo.fetch(query: CheckpointWithSequenceNumberAndFirstTwoQuery(sequenceNumber: 10,first: 2)) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! transactionBlockConnection edges: \(graphQLResult.data?.checkpoint?.transactionBlockConnection?.edges.count)")
                print("Success! transactionBlockConnection startCursor: \(graphQLResult.data?.checkpoint?.transactionBlockConnection?.pageInfo.startCursor)")
                print("Success! transactionBlockConnection endCursor: \(graphQLResult.data?.checkpoint?.transactionBlockConnection?.pageInfo.endCursor)")


            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
        
```

```
Success! transactionBlockConnection edges: Optional(1)
Success! transactionBlockConnection startCursor: Optional("10")
Success! transactionBlockConnection endCursor: Optional("10")

```


### <a id=196608></a>
### Latest Checkpoint
####  Latest checkpoint's data

```
# Latest checkpoint's data
query checkpointLatest{
  checkpoint {
    digest
    sequenceNumber
    validatorSignature
    previousCheckpointDigest
    networkTotalTransactions
    rollingGasSummary {
      computationCost
      storageCost
      storageRebate
      nonRefundableStorageFee
    }
    epoch {
      epochId
      referenceGasPrice
      startTimestamp
      endTimestamp
    }
    endOfEpoch {
      nextProtocolVersion
    }
  }
}


```

        
```
import Apollo
import SUIAPI

        Network.shared.apollo.fetch(query: CheckpointLatestQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! digest edges: \(graphQLResult.data?.checkpoint?.digest)")
                print("Success! storageCost : \(graphQLResult.data?.checkpoint?.rollingGasSummary?.storageCost)")
                print("Success! startTimestamp : \(graphQLResult.data?.checkpoint?.epoch?.startTimestamp)")

            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
        
```

```
Success! digest edges: Optional("8GonuNB363QrdTNMCx1u7mM73tVgnv7QiheSczktnN1R")
Success! storageCost : Optional("5819143619200")
Success! startTimestamp : Optional("2023-11-21T17:16:04.628Z")

```


### <a id=196609></a>
### Multiple Selections
####  Latest checkpoint's data

```
# Get the checkpoint at sequence 9769 and show
# the new committe authority and stake units
query checkpointWithMultipleSelection($sequenceNumber:Int!){
  checkpoint(id: { sequenceNumber: $sequenceNumber }) {
    digest
    sequenceNumber
    timestamp
    validatorSignature
    previousCheckpointDigest
    liveObjectSetDigest
    networkTotalTransactions
    rollingGasSummary {
      computationCost
      storageCost
      storageRebate
      nonRefundableStorageFee
    }
    epoch {
      epochId
    }
    endOfEpoch {
      newCommittee {
        authorityName
        stakeUnit
      }
      nextProtocolVersion
    }
    transactionBlockConnection {
      edges {
        node {
          digest
          expiration {
            epochId
          }
        }
      }
    }
  }
}


```

```
import Apollo
import SUIAPI

        Network.shared.apollo.fetch(query: CheckpointWithMultipleSelectionQuery(sequenceNumber: 9769)) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! digest edges: \(graphQLResult.data?.checkpoint?.digest)")
                print("Success! storageCost : \(graphQLResult.data?.checkpoint?.rollingGasSummary?.storageCost)")
                print("Success! epochId : \(graphQLResult.data?.checkpoint?.epoch?.epochId)")

            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
        
        
```

```

Success! digest edges: Optional("6ekm4MjL6dvkxCEwionkCLD9rXwMLK9ezBj8mZAXf17Y")
Success! storageCost : Optional("0")
Success! epochId : Optional(0)

```



### <a id=196610></a>
### With Timestamp Tx Block Live Objects
####  Latest checkpoint's timestamp, liveObjectSetDigest, and transaction block data

```
# Latest checkpoint's timestamp, liveObjectSetDigest, and transaction block data
query checkpointWithtimestamp{
  checkpoint {
    digest
    sequenceNumber
    timestamp
    liveObjectSetDigest
    transactionBlockConnection {
      edges {
        node {
          digest
          
          expiration {
            epochId
          }
        }
      }
    }
  }
}


```

```
import Apollo
import SUIAPI

        Network.shared.apollo.fetch(query: CheckpointWithtimestampQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! digest : \(graphQLResult.data?.checkpoint?.digest)")
                print("Success! sequenceNumber : \(graphQLResult.data?.checkpoint?.sequenceNumber)")
                print("Success! timestamp : \(graphQLResult.data?.checkpoint?.timestamp)")

            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
```

```

Success! digest : Optional("8GonuNB363QrdTNMCx1u7mM73tVgnv7QiheSczktnN1R")
Success! sequenceNumber : Optional(18888268)
Success! timestamp : Optional("2023-11-21T22:03:27.667Z")

```



### <a id=196611></a>
### With Tx Sent Addr Filter
####  Select checkpoint at sequence number 14830285 for transactions from sentAddress

```
# Select checkpoint at sequence number 14830285 for transactions from sentAddress
query checkpointWithTxSent($sequenceNumber:Int!){
  checkpoint(id: { sequenceNumber: $sequenceNumber }) {
    digest
    sequenceNumber
    timestamp
    liveObjectSetDigest
    transactionBlockConnection(
      filter: {
        sentAddress: "0x0000000000000000000000000000000000000000000000000000000000000000"
      }
    ) {
      edges {
        node {
          digest
         
          expiration {
            epochId
          }
        }
      }
    }
  }
}


```

```
import Apollo
import SUIAPI

        Network.shared.apollo.fetch(query: CheckpointWithTxSentQuery(sequenceNumber: 14830285)) { result in
            switch result {
            case .success(let graphQLResult):
                print("Success! digest : \(graphQLResult.data?.checkpoint?.digest)")
                print("Success! sequenceNumber : \(graphQLResult.data?.checkpoint?.sequenceNumber)")
                print("Success! timestamp : \(graphQLResult.data?.checkpoint?.timestamp)")

            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
        
```














# Donate


Bitcoin:
3MCQDgqTWNsmZszHQ9ctZLEwp35Tjx28Rq

Ethereum:
0x9e4FE5Ae63C4847C167622F8219559f21c8d0420

Sui:
0x22cc7748db1c0249cd6fc6c930d5a3999a5252dd9a085441ac4a1b59fd53ee70

Doge:
DBzKSvtiKTBEb89rVZ5x2RouQwpp2VT2nc


