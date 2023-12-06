// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CheckpointLatestQuery: GraphQLQuery {
  public static let operationName: String = "checkpointLatest"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query checkpointLatest { checkpoint { __typename digest sequenceNumber validatorSignature previousCheckpointDigest networkTotalTransactions rollingGasSummary { __typename computationCost storageCost storageRebate nonRefundableStorageFee } epoch { __typename epochId referenceGasPrice startTimestamp endTimestamp } endOfEpoch { __typename nextProtocolVersion } } }"#
    ))

  public init() {}

  public struct Data: SUIAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("checkpoint", Checkpoint?.self),
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
        .field("validatorSignature", SUIAPI.Base64?.self),
        .field("previousCheckpointDigest", String?.self),
        .field("networkTotalTransactions", Int?.self),
        .field("rollingGasSummary", RollingGasSummary?.self),
        .field("epoch", Epoch?.self),
        .field("endOfEpoch", EndOfEpoch?.self),
      ] }

      /// A 32-byte hash that uniquely identifies the checkpoint contents, encoded in Base58.
      /// This hash can be used to verify checkpoint contents by checking signatures against the committee,
      /// Hashing contents to match digest, and checking that the previous checkpoint digest matches.
      public var digest: String { __data["digest"] }
      /// This checkpoint's position in the total order of finalised checkpoints, agreed upon by consensus.
      public var sequenceNumber: Int { __data["sequenceNumber"] }
      /// This is an aggregation of signatures from a quorum of validators for the checkpoint proposal.
      public var validatorSignature: SUIAPI.Base64? { __data["validatorSignature"] }
      /// The digest of the checkpoint at the previous sequence number.
      public var previousCheckpointDigest: String? { __data["previousCheckpointDigest"] }
      /// Tracks the total number of transaction blocks in the network at the time of the checkpoint.
      public var networkTotalTransactions: Int? { __data["networkTotalTransactions"] }
      /// The computation and storage cost, storage rebate, and nonrefundable storage fee accumulated
      /// during this epoch, up to and including this checkpoint.
      /// These values increase monotonically across checkpoints in the same epoch.
      public var rollingGasSummary: RollingGasSummary? { __data["rollingGasSummary"] }
      public var epoch: Epoch? { __data["epoch"] }
      /// End of epoch data is only available on the final checkpoint of an epoch.
      /// This field provides information on the new committee and protocol version for the next epoch.
      public var endOfEpoch: EndOfEpoch? { __data["endOfEpoch"] }

      /// Checkpoint.RollingGasSummary
      ///
      /// Parent Type: `GasCostSummary`
      public struct RollingGasSummary: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.GasCostSummary }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("computationCost", SUIAPI.BigInt?.self),
          .field("storageCost", SUIAPI.BigInt?.self),
          .field("storageRebate", SUIAPI.BigInt?.self),
          .field("nonRefundableStorageFee", SUIAPI.BigInt?.self),
        ] }

        public var computationCost: SUIAPI.BigInt? { __data["computationCost"] }
        public var storageCost: SUIAPI.BigInt? { __data["storageCost"] }
        public var storageRebate: SUIAPI.BigInt? { __data["storageRebate"] }
        public var nonRefundableStorageFee: SUIAPI.BigInt? { __data["nonRefundableStorageFee"] }
      }

      /// Checkpoint.Epoch
      ///
      /// Parent Type: `Epoch`
      public struct Epoch: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Epoch }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("epochId", Int.self),
          .field("referenceGasPrice", SUIAPI.BigInt?.self),
          .field("startTimestamp", SUIAPI.DateTime?.self),
          .field("endTimestamp", SUIAPI.DateTime?.self),
        ] }

        /// The epoch's id as a sequence number that starts at 0 and it is incremented by one at every epoch change
        public var epochId: Int { __data["epochId"] }
        /// The minimum gas price that a quorum of validators are guaranteed to sign a transaction for
        public var referenceGasPrice: SUIAPI.BigInt? { __data["referenceGasPrice"] }
        /// The epoch's starting timestamp
        public var startTimestamp: SUIAPI.DateTime? { __data["startTimestamp"] }
        /// The epoch's ending timestamp
        public var endTimestamp: SUIAPI.DateTime? { __data["endTimestamp"] }
      }

      /// Checkpoint.EndOfEpoch
      ///
      /// Parent Type: `EndOfEpochData`
      public struct EndOfEpoch: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.EndOfEpochData }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("nextProtocolVersion", Int?.self),
        ] }

        public var nextProtocolVersion: Int? { __data["nextProtocolVersion"] }
      }
    }
  }
}
