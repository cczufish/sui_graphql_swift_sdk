// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CoinMetadataQuery: GraphQLQuery {
  public static let operationName: String = "CoinMetadata"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query CoinMetadata($coinType: String!) { coinMetadata(coinType: $coinType) { __typename decimals name symbol description iconUrl supply asMoveObject { __typename hasPublicTransfer } } }"#
    ))

  public var coinType: String

  public init(coinType: String) {
    self.coinType = coinType
  }

  public var __variables: Variables? { ["coinType": coinType] }

  public struct Data: SUIAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("coinMetadata", CoinMetadata?.self, arguments: ["coinType": .variable("coinType")]),
    ] }

    public var coinMetadata: CoinMetadata? { __data["coinMetadata"] }

    /// CoinMetadata
    ///
    /// Parent Type: `CoinMetadata`
    public struct CoinMetadata: SUIAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.CoinMetadata }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("decimals", Int?.self),
        .field("name", String?.self),
        .field("symbol", String?.self),
        .field("description", String?.self),
        .field("iconUrl", String?.self),
        .field("supply", SUIAPI.BigInt?.self),
        .field("asMoveObject", AsMoveObject.self),
      ] }

      /// The number of decimal places used to represent the token.
      public var decimals: Int? { __data["decimals"] }
      /// Full, official name of the token.
      public var name: String? { __data["name"] }
      /// The token's identifying abbreviation.
      public var symbol: String? { __data["symbol"] }
      /// Optional description of the token, provided by the creator of the token.
      public var description: String? { __data["description"] }
      public var iconUrl: String? { __data["iconUrl"] }
      /// The overall quantity of tokens that will be issued.
      public var supply: SUIAPI.BigInt? { __data["supply"] }
      /// Convert the coin metadata object into a Move object.
      public var asMoveObject: AsMoveObject { __data["asMoveObject"] }

      /// CoinMetadata.AsMoveObject
      ///
      /// Parent Type: `MoveObject`
      public struct AsMoveObject: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.MoveObject }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("hasPublicTransfer", Bool?.self),
        ] }

        /// Determines whether a tx can transfer this object
        public var hasPublicTransfer: Bool? { __data["hasPublicTransfer"] }
      }
    }
  }
}
