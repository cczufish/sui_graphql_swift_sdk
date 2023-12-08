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



## <a id=4></a>
## Checkpoint Connection
### <a id=262140></a>
### Ascending Fetch
####  Use the checkpoint connection to fetch some default amount of checkpoints in an ascending order

```
# Use the checkpoint connection to fetch some default amount of checkpoints in an ascending order
query checkpointConnection{
  checkpointConnection {
    nodes {
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
}


```


```
import Apollo
import SUIAPI

        Network.shared.apollo.fetch(query: CheckpointConnectionQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                if let first = graphQLResult.data?.checkpointConnection?.nodes.first {
                    print("Success! sequenceNumber : \(first.sequenceNumber)")
                    print("Success! digest : \(first.digest)")
                    print("Success! validatorSignature : \(first.validatorSignature)")
                    print("Success! epochId : \(first.epoch?.epochId)")
                    
                }
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
        
        
```

```
Success! sequenceNumber : 0
Success! digest : 4btiuiMPvEENsttpZC7CZ53DruC3MAgfznDbASZ7DR6S
Success! validatorSignature : Optional("lYFOHS0B6GmvGmIYJg5qdf/SxVpczAMu04cmyih3A24JOKyvWNz4L+r/mNJBMVsE")
Success! epochId : Optional(0)

```


### <a id=262141></a>
### first_ten_after_checkpoint
####  Fetch the digest and sequence number of the first 10 checkpoints after the cursor

```
# Fetch the digest and sequence number of the first 10 checkpoints after the cursor, which in this example is set to be checkpoint 11. Note that cursor will be opaque
query checkpointConnectionFirst($first:Int,$after:String){
  checkpointConnection(first: $first, after: $after) {
    nodes {
      sequenceNumber
      digest
    }
  }
}


```

```
import Apollo
import SUIAPI

        Network.shared.apollo.fetch(query: CheckpointConnectionFirstQuery(first: 10, after: "11")) { result in
            switch result {
            case .success(let graphQLResult):
                if let first = graphQLResult.data?.checkpointConnection?.nodes.first {
                    print("Success! sequenceNumber : \(first.sequenceNumber)")
                    print("Success! digest : \(first.digest)")
                }
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
        
```

```
Success! sequenceNumber : 12
Success! digest : 4LynNaMzeVxzhCVpR2YG6DUqiSd8e8J9HZpaxtLAvaZa

```



### <a id=262142></a>
### Last Ten After Checkpoint
####  Fetch the digest and the sequence number of the last 20 checkpoints before the cursor

```
# Fetch the digest and the sequence number of the last 20 checkpoints before the cursor
query checkpointConnectionLast($last:Int,$before:String){
  checkpointConnection(last: $last, before: $before) {
    nodes {
      sequenceNumber
      digest
    }
  }
}
 



```



```
import Apollo
import SUIAPI

        Network.shared.apollo.fetch(query: CheckpointConnectionLastQuery(last: 20, before: "1000")) { result in
            switch result {
            case .success(let graphQLResult):
                if let last = graphQLResult.data?.checkpointConnection?.nodes.first {
                    print("Success! sequenceNumber : \(last.sequenceNumber)")
                    print("Success! digest : \(last.digest)")
                }
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }


```


```

Success! sequenceNumber : 999
Success! digest : 41nPNZWHvvajmBQjX3GbppsgGZDEB6DhN4UxPkjSYRRj


```


## <a id=5></a>
## Coin Connection
### <a id=327675></a>
### Coin Connection
####  Get last 3 coins before coins at cursor 13034947 "0x13034947"

```
# Get last 3 coins before coins at cursor 13034947 "0x13034947"
query coinConnection($address: SuiAddress!,$last:Int,$before:String){
  address(
    address: $address
  ) {
    coinConnection(last: $last, before: $before) {
      nodes {
        balance
      }
      pageInfo {
        endCursor
        hasNextPage
      }
    }
  }
}

```


```
import Apollo
import SUIAPI

        Network.shared.apollo.fetch(query: CoinConnectionQuery(address: "0x5094652429957619e6efa79a404a6714d1126e63f551f4b6c7fb76440f8118c9",last: 3, before: "0x13034947")) { result in
            switch result {
            case .success(let graphQLResult):
                if let balance = graphQLResult.data?.address?.coinConnection?.nodes.first?.balance {
                    print("Success! balance : \(balance)")
                }
                
                if let endCursor = graphQLResult.data?.address?.coinConnection?.pageInfo.endCursor {
                    print("Success! endCursor : \(endCursor)")
                }
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
        
        
```

```
{
  "data": {
    "address": {
      "coinConnection": {
        "nodes": [],
        "pageInfo": {
          "endCursor": null,
          "hasNextPage": false
        }
      }
    }
  }
}

```



## <a id=6></a>
## CoinMetadata
### <a id=393210></a>
### CoinMetadata
####  Get Coin Metadata

```
query CoinMetadata($coinType:String!) {
  coinMetadata(coinType: $coinType) {
    decimals
    name
    symbol
    description
    iconUrl
    supply
    asMoveObject {
      hasPublicTransfer
    }
  }
}


```



```
import Apollo
import SUIAPI

        Network.shared.apollo.fetch(query: CoinMetadataQuery(coinType: "0x2::sui::SUI")) { result in
            switch result {
            case .success(let graphQLResult):

                if let coinMetadata = graphQLResult.data?.coinMetadata {
                    print("Success! name : \(coinMetadata.name)")
                    print("Success! symbol : \(coinMetadata.symbol)")
                    print("Success! description : \(coinMetadata.description)")
                    print("Success! iconUrl : \(coinMetadata.iconUrl)")
                    print("Success! decimals : \(coinMetadata.decimals)")

                }
             
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
        
```



```
Success! name : Optional("Sui")
Success! symbol : Optional("SUI")
Success! description : Optional("")
Success! iconUrl : nil
Success! decimals : Optional(9)

```




## <a id=7></a>
## Epoch
### <a id=458745></a>
### Latest Epoch
####  Latest Epoch

```
# Latest epoch, since epoch omitted
query epoch{
  epoch {
    protocolConfigs {
      protocolVersion
    }
    epochId
    referenceGasPrice
    startTimestamp
    endTimestamp
    validatorSet {
      totalStake
      pendingActiveValidatorsSize
      stakePoolMappingsSize
      inactivePoolsSize
      validatorCandidatesSize
      activeValidators {
        name
        description
        imageUrl
        projectUrl
        exchangeRates {
          asObject {
            storageRebate
            bcs
            kind
          }
          hasPublicTransfer
        }
        exchangeRatesSize
        stakingPoolActivationEpoch
        stakingPoolSuiBalance
        rewardsPool
        poolTokenBalance
        pendingStake
        pendingTotalSuiWithdraw
        pendingPoolTokenWithdraw
        votingPower
        gasPrice
        commissionRate
        nextEpochStake
        nextEpochGasPrice
        nextEpochCommissionRate
        atRisk
      }
    }
  }
}


```

```
import Apollo
import SUIAPI
        Network.shared.apollo.fetch(query: EpochQuery()) { result in
            switch result {
            case .success(let graphQLResult):

                if let epoch = graphQLResult.data?.epoch {
                    print("Success! epochId : \(epoch.epochId)")
                    print("Success! startTimestamp : \(epoch.startTimestamp)")
                    print("Success! referenceGasPrice : \(epoch.referenceGasPrice)")
                }
             
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
```

```
Success! epochId : 223
Success! startTimestamp : Optional("2023-11-21T17:16:04.628Z")
Success! referenceGasPrice : Optional("750")
```




### <a id=458746></a>
### Specific Epoch
####  Specific Epoch

```
# Selecting all fields for epoch 100
query SpecificEpoch($id:Int){
  epoch(id: $id) {
    protocolConfigs {
      protocolVersion
    }
    epochId
    referenceGasPrice
    startTimestamp
    endTimestamp
    validatorSet {
      totalStake
      pendingActiveValidatorsSize
      stakePoolMappingsSize
      inactivePoolsSize
      validatorCandidatesSize
      activeValidators {
        name
        description
        imageUrl
        projectUrl
        exchangeRates {
          asObject {
            storageRebate
            bcs
            kind
          }
          hasPublicTransfer
        }
        exchangeRatesSize
        stakingPoolActivationEpoch
        stakingPoolSuiBalance
        rewardsPool
        poolTokenBalance
        pendingStake
        pendingTotalSuiWithdraw
        pendingPoolTokenWithdraw
        votingPower
        gasPrice
        commissionRate
        nextEpochStake
        nextEpochGasPrice
        nextEpochCommissionRate
        atRisk
      }
    }
  }
}

```

```
import Apollo
import SUIAPI
        Network.shared.apollo.fetch(query: SpecificEpochQuery(id: 100)) { result in
            switch result {
            case .success(let graphQLResult):

                if let epoch = graphQLResult.data?.epoch {
                    print("Success! epochId : \(epoch.epochId)")
                    print("Success! startTimestamp : \(epoch.startTimestamp)")
                    print("Success! referenceGasPrice : \(epoch.referenceGasPrice)")
                }
             
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
        
```

```
Success! epochId : 100
Success! startTimestamp : Optional("2023-07-21T17:07:02.929Z")
Success! referenceGasPrice : Optional("800")
```



### <a id=458747></a>
### With Checkpoint Connection
####  With Checkpoint Connection

```
query epochWithCheckpointConnection{
  epoch {
    checkpointConnection {
      nodes {
        transactionBlockConnection(first: 10) {
          pageInfo {
            hasNextPage
            endCursor
          }
          edges {
            cursor
            node {
             
            
              gasInput {
                gasPrice
                gasBudget
              }
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

        Network.shared.apollo.fetch(query: EpochWithCheckpointConnectionQuery()) { result in
            switch result {
            case .success(let graphQLResult):

                if let epoch = graphQLResult.data?.epoch?.checkpointConnection?.nodes.first {
                    print("Success! endCursor : \(epoch.transactionBlockConnection?.pageInfo.endCursor)")
                    print("Success! hasNextPage : \(epoch.transactionBlockConnection?.pageInfo.hasNextPage)")
                    print("Success! cursor : \(epoch.transactionBlockConnection?.edges.first?.cursor)")
                }
             
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
```



### <a id=458748></a>
### With Tx Block Connection
####  With Tx Block Connection

```
# Fetch the first 20 transactions after 231220100 for epoch 97
query epochWithTxBlockConnection($id:Int){
  epoch(id:$id) {
    transactionBlockConnection(first: 20, after:"231220100") {
      pageInfo {
        hasNextPage
        endCursor
      }
      edges {
        cursor
        node {
          digest
        
          gasInput {
            gasPrice
            gasBudget
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

        Network.shared.apollo.fetch(query: EpochWithTxBlockConnectionQuery(id: 97)) { result in
            switch result {
            case .success(let graphQLResult):

                if let epoch = graphQLResult.data?.epoch {
                    print("Success! endCursor : \(epoch.transactionBlockConnection?.pageInfo.endCursor)")
                    print("Success! hasNextPage : \(epoch.transactionBlockConnection?.pageInfo.hasNextPage)")
                    print("Success! cursor : \(epoch.transactionBlockConnection?.edges.first?.cursor)")
                }
             
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
        
```

```
Success! endCursor : Optional("231220162")
Success! hasNextPage : Optional(true)
Success! cursor : Optional("231220143")
```

### <a id=458749></a>
### With Tx Block Connection Latest Epoch
####  With Tx Block Connection Latest Epoch

```
# the last checkpoint of epoch 97 is 8097645
# last tx number of the checkpoint is 261225985
query epochWithTxBlockConnectionLatest{
  epoch {
    transactionBlockConnection(first: 20, after: "261225985") {
      pageInfo {
        hasNextPage
        endCursor
      }
      edges {
        cursor
        node {
         
          gasInput {
            gasPrice
            gasBudget
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

        Network.shared.apollo.fetch(query: EpochWithTxBlockConnectionLatestQuery()) { result in
            switch result {
            case .success(let graphQLResult):

                if let epoch = graphQLResult.data?.epoch {
                    print("Success! endCursor : \(epoch.transactionBlockConnection?.pageInfo.endCursor)")
                    print("Success! hasNextPage : \(epoch.transactionBlockConnection?.pageInfo.hasNextPage)")
                    print("Success! cursor : \(epoch.transactionBlockConnection?.edges.first?.cursor)")
                }
             
            case .failure(let error):
                print("Failure! Error: \\(error)")
            }
        }
```

```
Success! endCursor : Optional("919756189")
Success! hasNextPage : Optional(true)
Success! cursor : Optional("919756170")
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


