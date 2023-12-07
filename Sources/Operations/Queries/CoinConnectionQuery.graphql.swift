// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CoinConnectionQuery: GraphQLQuery {
  public static let operationName: String = "coinConnection"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query coinConnection($address: SuiAddress!, $last: Int, $before: String) { address(address: $address) { __typename coinConnection(last: $last, before: $before) { __typename nodes { __typename balance } pageInfo { __typename endCursor hasNextPage } } } }"#
    ))

  public var address: SuiAddress
  public var last: GraphQLNullable<Int>
  public var before: GraphQLNullable<String>

  public init(
    address: SuiAddress,
    last: GraphQLNullable<Int>,
    before: GraphQLNullable<String>
  ) {
    self.address = address
    self.last = last
    self.before = before
  }

  public var __variables: Variables? { [
    "address": address,
    "last": last,
    "before": before
  ] }

  public struct Data: SUIAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("address", Address?.self, arguments: ["address": .variable("address")]),
    ] }

    public var address: Address? { __data["address"] }

    /// Address
    ///
    /// Parent Type: `Address`
    public struct Address: SUIAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Address }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("coinConnection", CoinConnection?.self, arguments: [
          "last": .variable("last"),
          "before": .variable("before")
        ]),
      ] }

      /// The coin objects for the given address.
      /// The type field is a string of the inner type of the coin
      /// by which to filter (e.g., 0x2::sui::SUI).
      public var coinConnection: CoinConnection? { __data["coinConnection"] }

      /// Address.CoinConnection
      ///
      /// Parent Type: `CoinConnection`
      public struct CoinConnection: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.CoinConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("nodes", [Node].self),
          .field("pageInfo", PageInfo.self),
        ] }

        /// A list of nodes.
        public var nodes: [Node] { __data["nodes"] }
        /// Information to aid in pagination.
        public var pageInfo: PageInfo { __data["pageInfo"] }

        /// Address.CoinConnection.Node
        ///
        /// Parent Type: `Coin`
        public struct Node: SUIAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Coin }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("balance", SUIAPI.BigInt?.self),
          ] }

          /// Balance of the coin object
          public var balance: SUIAPI.BigInt? { __data["balance"] }
        }

        /// Address.CoinConnection.PageInfo
        ///
        /// Parent Type: `PageInfo`
        public struct PageInfo: SUIAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.PageInfo }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("endCursor", String?.self),
            .field("hasNextPage", Bool.self),
          ] }

          /// When paginating forwards, the cursor to continue.
          public var endCursor: String? { __data["endCursor"] }
          /// When paginating forwards, are there more items?
          public var hasNextPage: Bool { __data["hasNextPage"] }
        }
      }
    }
  }
}
