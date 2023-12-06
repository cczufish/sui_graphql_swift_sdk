// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CheckpointWithTxSentQuery: GraphQLQuery {
  public static let operationName: String = "checkpointWithTxSent"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query checkpointWithTxSent($sequenceNumber: Int!) { checkpoint(id: { sequenceNumber: $sequenceNumber }) { __typename digest sequenceNumber timestamp liveObjectSetDigest transactionBlockConnection( filter: { sentAddress: "0x0000000000000000000000000000000000000000000000000000000000000000" } ) { __typename edges { __typename node { __typename digest expiration { __typename epochId } } } } } }"#
    ))

  public var sequenceNumber: Int

  public init(sequenceNumber: Int) {
    self.sequenceNumber = sequenceNumber
  }

  public var __variables: Variables? { ["sequenceNumber": sequenceNumber] }

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
        .field("digest", String.self),
        .field("sequenceNumber", Int.self),
        .field("timestamp", SUIAPI.DateTime?.self),
        .field("liveObjectSetDigest", String?.self),
        .field("transactionBlockConnection", TransactionBlockConnection?.self, arguments: ["filter": ["sentAddress": "0x0000000000000000000000000000000000000000000000000000000000000000"]]),
      ] }

      /// A 32-byte hash that uniquely identifies the checkpoint contents, encoded in Base58.
      /// This hash can be used to verify checkpoint contents by checking signatures against the committee,
      /// Hashing contents to match digest, and checking that the previous checkpoint digest matches.
      public var digest: String { __data["digest"] }
      /// This checkpoint's position in the total order of finalised checkpoints, agreed upon by consensus.
      public var sequenceNumber: Int { __data["sequenceNumber"] }
      /// The timestamp at which the checkpoint is agreed to have happened according to consensus.
      /// Transactions that access time in this checkpoint will observe this timestamp.
      public var timestamp: SUIAPI.DateTime? { __data["timestamp"] }
      /// This is a commitment by the committee at the end of epoch
      /// on the contents of the live object set at that time.
      /// This can be used to verify state snapshots.
      public var liveObjectSetDigest: String? { __data["liveObjectSetDigest"] }
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
        ] }

        /// A list of edges.
        public var edges: [Edge] { __data["edges"] }

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
              .field("digest", String.self),
              .field("expiration", Expiration?.self),
            ] }

            /// A 32-byte hash that uniquely identifies the transaction block contents, encoded in Base58.
            /// This serves as a unique id for the block on chain
            public var digest: String { __data["digest"] }
            /// This field is set by senders of a transaction block
            /// It is an epoch reference that sets a deadline after which validators will no longer consider the transaction valid
            /// By default, there is no deadline for when a transaction must execute
            public var expiration: Expiration? { __data["expiration"] }

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
      }
    }
  }
}
