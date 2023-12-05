// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AddressQuery: GraphQLQuery {
  public static let operationName: String = "address"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query address($address: SuiAddress!) { address(address: $address) { __typename location balance { __typename coinType { __typename repr } coinObjectCount totalBalance } coinConnection { __typename nodes { __typename asMoveObject { __typename contents { __typename type { __typename repr } } } } } } }"#
    ))

  public var address: SuiAddress

  public init(address: SuiAddress) {
    self.address = address
  }

  public var __variables: Variables? { ["address": address] }

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
        .field("location", SUIAPI.SuiAddress.self),
        .field("balance", Balance?.self),
        .field("coinConnection", CoinConnection?.self),
      ] }

      public var location: SUIAPI.SuiAddress { __data["location"] }
      public var balance: Balance? { __data["balance"] }
      /// The coin objects for the given address.
      /// The type field is a string of the inner type of the coin
      /// by which to filter (e.g., 0x2::sui::SUI).
      public var coinConnection: CoinConnection? { __data["coinConnection"] }

      /// Address.Balance
      ///
      /// Parent Type: `Balance`
      public struct Balance: SUIAPI.SelectionSet {
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

        /// Address.Balance.CoinType
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
        ] }

        /// A list of nodes.
        public var nodes: [Node] { __data["nodes"] }

        /// Address.CoinConnection.Node
        ///
        /// Parent Type: `Coin`
        public struct Node: SUIAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Coin }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("asMoveObject", AsMoveObject.self),
          ] }

          /// Convert the coin object into a Move object
          public var asMoveObject: AsMoveObject { __data["asMoveObject"] }

          /// Address.CoinConnection.Node.AsMoveObject
          ///
          /// Parent Type: `MoveObject`
          public struct AsMoveObject: SUIAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.MoveObject }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("contents", Contents?.self),
            ] }

            /// Displays the contents of the MoveObject in a JSON string and through graphql types.  Also
            /// provides the flat representation of the type signature, and the bcs of the corresponding
            /// data
            public var contents: Contents? { __data["contents"] }

            /// Address.CoinConnection.Node.AsMoveObject.Contents
            ///
            /// Parent Type: `MoveValue`
            public struct Contents: SUIAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.MoveValue }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("type", Type_SelectionSet.self),
              ] }

              public var type: Type_SelectionSet { __data["type"] }

              /// Address.CoinConnection.Node.AsMoveObject.Contents.Type_SelectionSet
              ///
              /// Parent Type: `MoveType`
              public struct Type_SelectionSet: SUIAPI.SelectionSet {
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
          }
        }
      }
    }
  }
}
