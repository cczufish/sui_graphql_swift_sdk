// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class SpecificEpochQuery: GraphQLQuery {
  public static let operationName: String = "SpecificEpoch"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query SpecificEpoch($id: Int) { epoch(id: $id) { __typename protocolConfigs { __typename protocolVersion } epochId referenceGasPrice startTimestamp endTimestamp validatorSet { __typename totalStake pendingActiveValidatorsSize stakePoolMappingsSize inactivePoolsSize validatorCandidatesSize activeValidators { __typename name description imageUrl projectUrl exchangeRates { __typename asObject { __typename storageRebate bcs kind } hasPublicTransfer } exchangeRatesSize stakingPoolActivationEpoch stakingPoolSuiBalance rewardsPool poolTokenBalance pendingStake pendingTotalSuiWithdraw pendingPoolTokenWithdraw votingPower gasPrice commissionRate nextEpochStake nextEpochGasPrice nextEpochCommissionRate atRisk } } } }"#
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
        .field("protocolConfigs", ProtocolConfigs?.self),
        .field("epochId", Int.self),
        .field("referenceGasPrice", SUIAPI.BigInt?.self),
        .field("startTimestamp", SUIAPI.DateTime?.self),
        .field("endTimestamp", SUIAPI.DateTime?.self),
        .field("validatorSet", ValidatorSet?.self),
      ] }

      /// The epoch's corresponding protocol configuration, including the feature flags and the configuration options
      public var protocolConfigs: ProtocolConfigs? { __data["protocolConfigs"] }
      /// The epoch's id as a sequence number that starts at 0 and it is incremented by one at every epoch change
      public var epochId: Int { __data["epochId"] }
      /// The minimum gas price that a quorum of validators are guaranteed to sign a transaction for
      public var referenceGasPrice: SUIAPI.BigInt? { __data["referenceGasPrice"] }
      /// The epoch's starting timestamp
      public var startTimestamp: SUIAPI.DateTime? { __data["startTimestamp"] }
      /// The epoch's ending timestamp
      public var endTimestamp: SUIAPI.DateTime? { __data["endTimestamp"] }
      /// Validator related properties, including the active validators
      public var validatorSet: ValidatorSet? { __data["validatorSet"] }

      /// Epoch.ProtocolConfigs
      ///
      /// Parent Type: `ProtocolConfigs`
      public struct ProtocolConfigs: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.ProtocolConfigs }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("protocolVersion", Int.self),
        ] }

        /// The protocol is not required to change on every epoch boundary, so the protocol version
        /// tracks which change to the protocol these configs are from.
        public var protocolVersion: Int { __data["protocolVersion"] }
      }

      /// Epoch.ValidatorSet
      ///
      /// Parent Type: `ValidatorSet`
      public struct ValidatorSet: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.ValidatorSet }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("totalStake", SUIAPI.BigInt?.self),
          .field("pendingActiveValidatorsSize", Int?.self),
          .field("stakePoolMappingsSize", Int?.self),
          .field("inactivePoolsSize", Int?.self),
          .field("validatorCandidatesSize", Int?.self),
          .field("activeValidators", [ActiveValidator]?.self),
        ] }

        /// Total amount of stake for all active validators at the beginning of the epoch.
        public var totalStake: SUIAPI.BigInt? { __data["totalStake"] }
        public var pendingActiveValidatorsSize: Int? { __data["pendingActiveValidatorsSize"] }
        public var stakePoolMappingsSize: Int? { __data["stakePoolMappingsSize"] }
        public var inactivePoolsSize: Int? { __data["inactivePoolsSize"] }
        public var validatorCandidatesSize: Int? { __data["validatorCandidatesSize"] }
        /// The current list of active validators.
        public var activeValidators: [ActiveValidator]? { __data["activeValidators"] }

        /// Epoch.ValidatorSet.ActiveValidator
        ///
        /// Parent Type: `Validator`
        public struct ActiveValidator: SUIAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Validator }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("name", String?.self),
            .field("description", String?.self),
            .field("imageUrl", String?.self),
            .field("projectUrl", String?.self),
            .field("exchangeRates", ExchangeRates?.self),
            .field("exchangeRatesSize", Int?.self),
            .field("stakingPoolActivationEpoch", Int?.self),
            .field("stakingPoolSuiBalance", SUIAPI.BigInt?.self),
            .field("rewardsPool", SUIAPI.BigInt?.self),
            .field("poolTokenBalance", SUIAPI.BigInt?.self),
            .field("pendingStake", SUIAPI.BigInt?.self),
            .field("pendingTotalSuiWithdraw", SUIAPI.BigInt?.self),
            .field("pendingPoolTokenWithdraw", SUIAPI.BigInt?.self),
            .field("votingPower", Int?.self),
            .field("gasPrice", SUIAPI.BigInt?.self),
            .field("commissionRate", Int?.self),
            .field("nextEpochStake", SUIAPI.BigInt?.self),
            .field("nextEpochGasPrice", SUIAPI.BigInt?.self),
            .field("nextEpochCommissionRate", Int?.self),
            .field("atRisk", Int?.self),
          ] }

          public var name: String? { __data["name"] }
          public var description: String? { __data["description"] }
          public var imageUrl: String? { __data["imageUrl"] }
          public var projectUrl: String? { __data["projectUrl"] }
          public var exchangeRates: ExchangeRates? { __data["exchangeRates"] }
          public var exchangeRatesSize: Int? { __data["exchangeRatesSize"] }
          public var stakingPoolActivationEpoch: Int? { __data["stakingPoolActivationEpoch"] }
          public var stakingPoolSuiBalance: SUIAPI.BigInt? { __data["stakingPoolSuiBalance"] }
          public var rewardsPool: SUIAPI.BigInt? { __data["rewardsPool"] }
          public var poolTokenBalance: SUIAPI.BigInt? { __data["poolTokenBalance"] }
          public var pendingStake: SUIAPI.BigInt? { __data["pendingStake"] }
          public var pendingTotalSuiWithdraw: SUIAPI.BigInt? { __data["pendingTotalSuiWithdraw"] }
          public var pendingPoolTokenWithdraw: SUIAPI.BigInt? { __data["pendingPoolTokenWithdraw"] }
          public var votingPower: Int? { __data["votingPower"] }
          public var gasPrice: SUIAPI.BigInt? { __data["gasPrice"] }
          public var commissionRate: Int? { __data["commissionRate"] }
          public var nextEpochStake: SUIAPI.BigInt? { __data["nextEpochStake"] }
          public var nextEpochGasPrice: SUIAPI.BigInt? { __data["nextEpochGasPrice"] }
          public var nextEpochCommissionRate: Int? { __data["nextEpochCommissionRate"] }
          public var atRisk: Int? { __data["atRisk"] }

          /// Epoch.ValidatorSet.ActiveValidator.ExchangeRates
          ///
          /// Parent Type: `MoveObject`
          public struct ExchangeRates: SUIAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.MoveObject }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("asObject", AsObject.self),
              .field("hasPublicTransfer", Bool?.self),
            ] }

            /// Attempts to convert the Move object into an Object
            /// This provides additional information such as version and digest on the top-level
            public var asObject: AsObject { __data["asObject"] }
            /// Determines whether a tx can transfer this object
            public var hasPublicTransfer: Bool? { __data["hasPublicTransfer"] }

            /// Epoch.ValidatorSet.ActiveValidator.ExchangeRates.AsObject
            ///
            /// Parent Type: `Object`
            public struct AsObject: SUIAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Object }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("storageRebate", SUIAPI.BigInt?.self),
                .field("bcs", SUIAPI.Base64?.self),
                .field("kind", GraphQLEnum<SUIAPI.ObjectKind>?.self),
              ] }

              /// The amount of SUI we would rebate if this object gets deleted or mutated.
              /// This number is recalculated based on the present storage gas price.
              public var storageRebate: SUIAPI.BigInt? { __data["storageRebate"] }
              /// The Base64 encoded bcs serialization of the object's content.
              public var bcs: SUIAPI.Base64? { __data["bcs"] }
              /// Objects can either be immutable, shared, owned by an address,
              /// or are child objects (part of a dynamic field)
              public var kind: GraphQLEnum<SUIAPI.ObjectKind>? { __data["kind"] }
            }
          }
        }
      }
    }
  }
}
