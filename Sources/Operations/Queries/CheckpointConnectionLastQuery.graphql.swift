// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CheckpointConnectionLastQuery: GraphQLQuery {
  public static let operationName: String = "checkpointConnectionLast"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query checkpointConnectionLast($last: Int, $before: String) { checkpointConnection(last: $last, before: $before) { __typename nodes { __typename sequenceNumber digest } } }"#
    ))

  public var last: GraphQLNullable<Int>
  public var before: GraphQLNullable<String>

  public init(
    last: GraphQLNullable<Int>,
    before: GraphQLNullable<String>
  ) {
    self.last = last
    self.before = before
  }

  public var __variables: Variables? { [
    "last": last,
    "before": before
  ] }

  public struct Data: SUIAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("checkpointConnection", CheckpointConnection?.self, arguments: [
        "last": .variable("last"),
        "before": .variable("before")
      ]),
    ] }

    public var checkpointConnection: CheckpointConnection? { __data["checkpointConnection"] }

    /// CheckpointConnection
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

      /// CheckpointConnection.Node
      ///
      /// Parent Type: `Checkpoint`
      public struct Node: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Checkpoint }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("sequenceNumber", Int.self),
          .field("digest", String.self),
        ] }

        /// This checkpoint's position in the total order of finalised checkpoints, agreed upon by consensus.
        public var sequenceNumber: Int { __data["sequenceNumber"] }
        /// A 32-byte hash that uniquely identifies the checkpoint contents, encoded in Base58.
        /// This hash can be used to verify checkpoint contents by checking signatures against the committee,
        /// Hashing contents to match digest, and checking that the previous checkpoint digest matches.
        public var digest: String { __data["digest"] }
      }
    }
  }
}
