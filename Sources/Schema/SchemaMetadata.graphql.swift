// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public typealias ID = String

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == SUIAPI.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == SUIAPI.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == SUIAPI.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == SUIAPI.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
    switch typename {
    case "Query": return SUIAPI.Objects.Query
    case "Checkpoint": return SUIAPI.Objects.Checkpoint
    case "GasCostSummary": return SUIAPI.Objects.GasCostSummary
    case "Epoch": return SUIAPI.Objects.Epoch
    case "EndOfEpochData": return SUIAPI.Objects.EndOfEpochData
    case "Address": return SUIAPI.Objects.Address
    case "Object": return SUIAPI.Objects.Object
    case "Owner": return SUIAPI.Objects.Owner
    case "Balance": return SUIAPI.Objects.Balance
    case "MoveType": return SUIAPI.Objects.MoveType
    case "CoinConnection": return SUIAPI.Objects.CoinConnection
    case "Coin": return SUIAPI.Objects.Coin
    case "MoveObject": return SUIAPI.Objects.MoveObject
    case "MoveValue": return SUIAPI.Objects.MoveValue
    case "CommitteeMember": return SUIAPI.Objects.CommitteeMember
    case "TransactionBlockConnection": return SUIAPI.Objects.TransactionBlockConnection
    case "TransactionBlockEdge": return SUIAPI.Objects.TransactionBlockEdge
    case "TransactionBlock": return SUIAPI.Objects.TransactionBlock
    case "BalanceConnection": return SUIAPI.Objects.BalanceConnection
    case "PageInfo": return SUIAPI.Objects.PageInfo
    case "ConsensusCommitPrologueTransaction": return SUIAPI.Objects.ConsensusCommitPrologueTransaction
    case "GenesisTransaction": return SUIAPI.Objects.GenesisTransaction
    case "ChangeEpochTransaction": return SUIAPI.Objects.ChangeEpochTransaction
    case "ProgrammableTransaction": return SUIAPI.Objects.ProgrammableTransaction
    case "AuthenticatorStateUpdate": return SUIAPI.Objects.AuthenticatorStateUpdate
    case "RandomnessStateUpdate": return SUIAPI.Objects.RandomnessStateUpdate
    case "EndOfEpochTransaction": return SUIAPI.Objects.EndOfEpochTransaction
    case "GasInput": return SUIAPI.Objects.GasInput
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
