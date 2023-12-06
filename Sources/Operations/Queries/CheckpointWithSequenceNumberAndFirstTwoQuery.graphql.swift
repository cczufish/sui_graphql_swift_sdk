// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CheckpointWithSequenceNumberAndFirstTwoQuery: GraphQLQuery {
  public static let operationName: String = "checkpointWithSequenceNumberAndFirstTwo"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query checkpointWithSequenceNumberAndFirstTwo($sequenceNumber: Int!, $first: Int!) { checkpoint(id: { sequenceNumber: $sequenceNumber }) { __typename transactionBlockConnection(first: $first) { __typename edges { __typename node { __typename kind { __typename } digest expiration { __typename epochId } } } pageInfo { __typename startCursor hasNextPage hasPreviousPage endCursor } } } }"#
    ))

  public var sequenceNumber: Int
  public var first: Int

  public init(
    sequenceNumber: Int,
    first: Int
  ) {
    self.sequenceNumber = sequenceNumber
    self.first = first
  }

  public var __variables: Variables? { [
    "sequenceNumber": sequenceNumber,
    "first": first
  ] }

  public struct Data: SUIAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("checkpoint", Checkpoint?.self, arguments: ["id": ["sequenceNumber": .variable("sequenceNumber")]]),
    ] }

    public var checkpoint: Checkpoint? { __data["checkpoint"] }

    /// Checkpoint
    ///
    /// Parent Type: `Checkpoint`
    public struct Checkpoint: SUIAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Checkpoint }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("transactionBlockConnection", TransactionBlockConnection?.self, arguments: ["first": .variable("first")]),
      ] }

      public var transactionBlockConnection: TransactionBlockConnection? { __data["transactionBlockConnection"] }

      /// Checkpoint.TransactionBlockConnection
      ///
      /// Parent Type: `TransactionBlockConnection`
      public struct TransactionBlockConnection: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.TransactionBlockConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("edges", [Edge].self),
          .field("pageInfo", PageInfo.self),
        ] }

        /// A list of edges.
        public var edges: [Edge] { __data["edges"] }
        /// Information to aid in pagination.
        public var pageInfo: PageInfo { __data["pageInfo"] }

        /// Checkpoint.TransactionBlockConnection.Edge
        ///
        /// Parent Type: `TransactionBlockEdge`
        public struct Edge: SUIAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.TransactionBlockEdge }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("node", Node.self),
          ] }

          /// The item at the end of the edge
          public var node: Node { __data["node"] }

          /// Checkpoint.TransactionBlockConnection.Edge.Node
          ///
          /// Parent Type: `TransactionBlock`
          public struct Node: SUIAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.TransactionBlock }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("kind", Kind?.self),
              .field("digest", String.self),
              .field("expiration", Expiration?.self),
            ] }

            public var kind: Kind? { __data["kind"] }
            /// A 32-byte hash that uniquely identifies the transaction block contents, encoded in Base58.
            /// This serves as a unique id for the block on chain
            public var digest: String { __data["digest"] }
            /// This field is set by senders of a transaction block
            /// It is an epoch reference that sets a deadline after which validators will no longer consider the transaction valid
            /// By default, there is no deadline for when a transaction must execute
            public var expiration: Expiration? { __data["expiration"] }

            /// Checkpoint.TransactionBlockConnection.Edge.Node.Kind
            ///
            /// Parent Type: `TransactionBlockKind`
            public struct Kind: SUIAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { SUIAPI.Unions.TransactionBlockKind }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
              ] }
            }

            /// Checkpoint.TransactionBlockConnection.Edge.Node.Expiration
            ///
            /// Parent Type: `Epoch`
            public struct Expiration: SUIAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Epoch }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("epochId", Int.self),
              ] }

              /// The epoch's id as a sequence number that starts at 0 and it is incremented by one at every epoch change
              public var epochId: Int { __data["epochId"] }
            }
          }
        }

        /// Checkpoint.TransactionBlockConnection.PageInfo
        ///
        /// Parent Type: `PageInfo`
        public struct PageInfo: SUIAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.PageInfo }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("startCursor", String?.self),
            .field("hasNextPage", Bool.self),
            .field("hasPreviousPage", Bool.self),
            .field("endCursor", String?.self),
          ] }

          /// When paginating backwards, the cursor to continue.
          public var startCursor: String? { __data["startCursor"] }
          /// When paginating forwards, are there more items?
          public var hasNextPage: Bool { __data["hasNextPage"] }
          /// When paginating backwards, are there more items?
          public var hasPreviousPage: Bool { __data["hasPreviousPage"] }
          /// When paginating forwards, the cursor to continue.
          public var endCursor: String? { __data["endCursor"] }
        }
      }
    }
  }
}
