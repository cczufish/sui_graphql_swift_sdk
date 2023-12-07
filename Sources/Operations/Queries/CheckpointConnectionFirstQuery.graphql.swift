// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CheckpointConnectionFirstQuery: GraphQLQuery {
  public static let operationName: String = "checkpointConnectionFirst"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query checkpointConnectionFirst($first: Int, $after: String) { checkpointConnection(first: $first, after: $after) { __typename nodes { __typename sequenceNumber digest } } }"#
    ))

  public var first: GraphQLNullable<Int>
  public var after: GraphQLNullable<String>

  public init(
    first: GraphQLNullable<Int>,
    after: GraphQLNullable<String>
  ) {
    self.first = first
    self.after = after
  }

  public var __variables: Variables? { [
    "first": first,
    "after": after
  ] }

  public struct Data: SUIAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("checkpointConnection", CheckpointConnection?.self, arguments: [
        "first": .variable("first"),
        "after": .variable("after")
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
