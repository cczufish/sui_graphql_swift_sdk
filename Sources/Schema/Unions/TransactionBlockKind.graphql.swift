// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Unions {
  static let TransactionBlockKind = Union(
    name: "TransactionBlockKind",
    possibleTypes: [
      Objects.ConsensusCommitPrologueTransaction.self,
      Objects.GenesisTransaction.self,
      Objects.ChangeEpochTransaction.self,
      Objects.ProgrammableTransaction.self,
      Objects.AuthenticatorStateUpdate.self,
      Objects.RandomnessStateUpdate.self,
      Objects.EndOfEpochTransaction.self
    ]
  )
}