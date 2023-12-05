// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class Transaction_block_with_relation_filterQuery: GraphQLQuery {
  public static let operationName: String = "transaction_block_with_relation_filter"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query transaction_block_with_relation_filter($address: SuiAddress!) { address(address: $address) { __typename transactionBlockConnection(relation: SENT, filter: { package: "0x2" }) { __typename nodes { __typename sender { __typename location } gasInput { __typename gasPrice gasBudget } } } } }"#
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
        .field("transactionBlockConnection", TransactionBlockConnection?.self, arguments: [
          "relation": "SENT",
          "filter": ["package": "0x2"]
        ]),
      ] }

      /// Similar behavior to the `transactionBlockConnection` in Query but
      /// supports additional `AddressTransactionBlockRelationship` filter
      public var transactionBlockConnection: TransactionBlockConnection? { __data["transactionBlockConnection"] }

      /// Address.TransactionBlockConnection
      ///
      /// Parent Type: `TransactionBlockConnection`
      public struct TransactionBlockConnection: SUIAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.TransactionBlockConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("nodes", [Node].self),
        ] }

        /// A list of nodes.
        public var nodes: [Node] { __data["nodes"] }

        /// Address.TransactionBlockConnection.Node
        ///
        /// Parent Type: `TransactionBlock`
        public struct Node: SUIAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.TransactionBlock }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("sender", Sender?.self),
            .field("gasInput", GasInput?.self),
          ] }

          /// The address of the user sending this transaction block
          public var sender: Sender? { __data["sender"] }
          /// The gas input field provides information on what objects were used as gas
          /// As well as the owner of the gas object(s) and information on the gas price and budget
          /// If the owner of the gas object(s) is not the same as the sender,
          /// the transaction block is a sponsored transaction block.
          public var gasInput: GasInput? { __data["gasInput"] }

          /// Address.TransactionBlockConnection.Node.Sender
          ///
          /// Parent Type: `Address`
          public struct Sender: SUIAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { SUIAPI.Objects.Address }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("location", SUIAPI.SuiAddress.self),
            ] }

            public var location: SUIAPI.SuiAddress { __data["location"] }
          }

          /// Address.TransactionBlockConnection.Node.GasInput
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
