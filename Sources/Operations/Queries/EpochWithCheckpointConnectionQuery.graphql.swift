// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class EpochWithCheckpointConnectionQuery: GraphQLQuery {
  public static let operationName: String = "epochWithCheckpointConnection"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query epochWithCheckpointConnection { epoch { __typename checkpointConnection { __typename nodes { __typename transactionBlockConnection(first: 10) { __typename pageInfo { __typename hasNextPage endCursor } edges { __typename cursor node { __typename gasInput { __typename gasPrice gasBudget } } } } } } } }"#
    ))

  public init() {}

  public struct Data: SUIAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("epoch", Epoch?.self),
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
        .field("checkpointConnection", CheckpointConnection?.self),
      ] }

      /// The epoch's corresponding checkpoints
      public var checkpointConnection: CheckpointConnection? { __data["checkpointConnection"] }

      /// Epoch.CheckpointConnection
      ///
      /// Parent Type: `CheckpointConnection`
      public struct CheckpointConnection: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.CheckpointConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("nodes", [Node].self),
        ] }

        /// A list of nodes.
        public var nodes: [Node] { __data["nodes"] }

        /// Epoch.CheckpointConnection.Node
        ///
        /// Parent Type: `Checkpoint`
        public struct Node: SUIAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Checkpoint }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("transactionBlockConnection", TransactionBlockConnection?.self, arguments: ["first": 10]),
          ] }

          public var transactionBlockConnection: TransactionBlockConnection? { __data["transactionBlockConnection"] }

          /// Epoch.CheckpointConnection.Node.TransactionBlockConnection
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

            /// Epoch.CheckpointConnection.Node.TransactionBlockConnection.PageInfo
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

            /// Epoch.CheckpointConnection.Node.TransactionBlockConnection.Edge
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

              /// Epoch.CheckpointConnection.Node.TransactionBlockConnection.Edge.Node
              ///
              /// Parent Type: `TransactionBlock`
              public struct Node: SUIAPI.SelectionSet {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.TransactionBlock }
                public static var __selections: [ApolloAPI.Selection] { [
                  .field("__typename", String.self),
                  .field("gasInput", GasInput?.self),
                ] }

                /// The gas input field provides information on what objects were used as gas
                /// As well as the owner of the gas object(s) and information on the gas price and budget
                /// If the owner of the gas object(s) is not the same as the sender,
                /// the transaction block is a sponsored transaction block.
                public var gasInput: GasInput? { __data["gasInput"] }

                /// Epoch.CheckpointConnection.Node.TransactionBlockConnection.Edge.Node.GasInput
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
  }
}
