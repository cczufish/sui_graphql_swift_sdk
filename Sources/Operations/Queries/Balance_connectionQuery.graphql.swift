// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class Balance_connectionQuery: GraphQLQuery {
  public static let operationName: String = "balance_connection"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query balance_connection($address: SuiAddress!, $type: String) { address(address: $address) { __typename balance(type: $type) { __typename coinObjectCount totalBalance } balanceConnection { __typename nodes { __typename coinType { __typename repr } coinObjectCount totalBalance } pageInfo { __typename endCursor } } } }"#
    ))

  public var address: SuiAddress
  public var type: GraphQLNullable<String>

  public init(
    address: SuiAddress,
    type: GraphQLNullable<String>
  ) {
    self.address = address
    self.type = type
  }

  public var __variables: Variables? { [
    "address": address,
    "type": type
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
        .field("balance", Balance?.self, arguments: ["type": .variable("type")]),
        .field("balanceConnection", BalanceConnection?.self),
      ] }

      public var balance: Balance? { __data["balance"] }
      public var balanceConnection: BalanceConnection? { __data["balanceConnection"] }

      /// Address.Balance
      ///
      /// Parent Type: `Balance`
      public struct Balance: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Balance }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("coinObjectCount", Int?.self),
          .field("totalBalance", SUIAPI.BigInt?.self),
        ] }

        /// How many coins of this type constitute the balance
        public var coinObjectCount: Int? { __data["coinObjectCount"] }
        /// Total balance across all coin objects of the coin type
        public var totalBalance: SUIAPI.BigInt? { __data["totalBalance"] }
      }

      /// Address.BalanceConnection
      ///
      /// Parent Type: `BalanceConnection`
      public struct BalanceConnection: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.BalanceConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("nodes", [Node].self),
          .field("pageInfo", PageInfo.self),
        ] }

        /// A list of nodes.
        public var nodes: [Node] { __data["nodes"] }
        /// Information to aid in pagination.
        public var pageInfo: PageInfo { __data["pageInfo"] }

        /// Address.BalanceConnection.Node
        ///
        /// Parent Type: `Balance`
        public struct Node: SUIAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Balance }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("coinType", CoinType?.self),
            .field("coinObjectCount", Int?.self),
            .field("totalBalance", SUIAPI.BigInt?.self),
          ] }

          /// Coin type for the balance, such as 0x2::sui::SUI
          public var coinType: CoinType? { __data["coinType"] }
          /// How many coins of this type constitute the balance
          public var coinObjectCount: Int? { __data["coinObjectCount"] }
          /// Total balance across all coin objects of the coin type
          public var totalBalance: SUIAPI.BigInt? { __data["totalBalance"] }

          /// Address.BalanceConnection.Node.CoinType
          ///
          /// Parent Type: `MoveType`
          public struct CoinType: SUIAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.MoveType }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("repr", String.self),
            ] }

            /// Flat representation of the type signature, as a displayable string.
            public var repr: String { __data["repr"] }
          }
        }

        /// Address.BalanceConnection.PageInfo
        ///
        /// Parent Type: `PageInfo`
        public struct PageInfo: SUIAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.PageInfo }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("endCursor", String?.self),
          ] }

          /// When paginating forwards, the cursor to continue.
          public var endCursor: String? { __data["endCursor"] }
        }
      }
    }
  }
}
