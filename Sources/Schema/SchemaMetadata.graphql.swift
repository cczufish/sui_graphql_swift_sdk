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
    case "Address": return SUIAPI.Objects.Address
    case "Object": return SUIAPI.Objects.Object
    case "Owner": return SUIAPI.Objects.Owner
    case "Balance": return SUIAPI.Objects.Balance
    case "MoveType": return SUIAPI.Objects.MoveType
    case "CoinConnection": return SUIAPI.Objects.CoinConnection
    case "Coin": return SUIAPI.Objects.Coin
    case "MoveObject": return SUIAPI.Objects.MoveObject
    case "MoveValue": return SUIAPI.Objects.MoveValue
    case "BalanceConnection": return SUIAPI.Objects.BalanceConnection
    case "PageInfo": return SUIAPI.Objects.PageInfo
    case "TransactionBlockConnection": return SUIAPI.Objects.TransactionBlockConnection
    case "TransactionBlock": return SUIAPI.Objects.TransactionBlock
    case "GasInput": return SUIAPI.Objects.GasInput
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
