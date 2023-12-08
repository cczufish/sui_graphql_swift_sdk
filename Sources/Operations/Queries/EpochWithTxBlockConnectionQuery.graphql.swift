// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class EpochWithTxBlockConnectionQuery: GraphQLQuery {
  public static let operationName: String = "epochWithTxBlockConnection"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query epochWithTxBlockConnection($id: Int) { epoch(id: $id) { __typename transactionBlockConnection(first: 20, after: "231220100") { __typename pageInfo { __typename hasNextPage endCursor } edges { __typename cursor node { __typename digest gasInput { __typename gasPrice gasBudget } } } } } }"#
    ))

  public var id: GraphQLNullable<Int>

  public init(id: GraphQLNullable<Int>) {
    self.id = id
  }

  public var __variables: Variables? { ["id": id] }

  public struct Data: SUIAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("epoch", Epoch?.self, arguments: ["id": .variable("id")]),
    ] }

    public var epoch: Epoch? { __data["epoch"] }

    /// Epoch
    ///
    /// Parent Type: `Epoch`
    public struct Epoch: SUIAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Epoch }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("transactionBlockConnection", TransactionBlockConnection?.self, arguments: [
          "first": 20,
          "after": "231220100"
        ]),
      ] }

      /// The epoch's corresponding transaction blocks
      public var transactionBlockConnection: TransactionBlockConnection? { __data["transactionBlockConnection"] }

      /// Epoch.TransactionBlockConnection
      ///
      /// Parent Type: `TransactionBlockConnection`
      public struct TransactionBlockConnection: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.TransactionBlockConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("pageInfo", PageInfo.self),
          .field("edges", [Edge].self),
        ] }

        /// Information to aid in pagination.
        public var pageInfo: PageInfo { __data["pageInfo"] }
        /// A list of edges.
        public var edges: [Edge] { __data["edges"] }

        /// Epoch.TransactionBlockConnection.PageInfo
        ///
        /// Parent Type: `PageInfo`
        public struct PageInfo: SUIAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.PageInfo }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("hasNextPage", Bool.self),
            .field("endCursor", String?.self),
          ] }

          /// When paginating forwards, are there more items?
          public var hasNextPage: Bool { __data["hasNextPage"] }
          /// When paginating forwards, the cursor to continue.
          public var endCursor: String? { __data["endCursor"] }
        }

        /// Epoch.TransactionBlockConnection.Edge
        ///
        /// Parent Type: `TransactionBlockEdge`
        public struct Edge: SUIAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.TransactionBlockEdge }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("cursor", String.self),
            .field("node", Node.self),
          ] }

          /// A cursor for use in pagination
          public var cursor: String { __data["cursor"] }
          /// The item at the end of the edge
          public var node: Node { __data["node"] }

          /// Epoch.TransactionBlockConnection.Edge.Node
          ///
          /// Parent Type: `TransactionBlock`
          public struct Node: SUIAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.TransactionBlock }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("digest", String.self),
              .field("gasInput", GasInput?.self),
            ] }

            /// A 32-byte hash that uniquely identifies the transaction block contents, encoded in Base58.
            /// This serves as a unique id for the block on chain
            public var digest: String { __data["digest"] }
            /// The gas input field provides information on what objects were used as gas
            /// As well as the owner of the gas object(s) and information on the gas price and budget
            /// If the owner of the gas object(s) is not the same as the sender,
            /// the transaction block is a sponsored transaction block.
            public var gasInput: GasInput? { __data["gasInput"] }

            /// Epoch.TransactionBlockConnection.Edge.Node.GasInput
            ///
            /// Parent Type: `GasInput`
            public struct GasInput: SUIAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.GasInput }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("gasPrice", SUIAPI.BigInt?.self),
                .field("gasBudget", SUIAPI.BigInt?.self),
              ] }

              /// An unsigned integer specifying the number of native tokens per gas unit this transaction will pay
              public var gasPrice: SUIAPI.BigInt? { __data["gasPrice"] }
              /// The maximum number of gas units that can be expended by executing this transaction
              public var gasBudget: SUIAPI.BigInt? { __data["gasBudget"] }
            }
          }
        }
      }
    }
  }
}
