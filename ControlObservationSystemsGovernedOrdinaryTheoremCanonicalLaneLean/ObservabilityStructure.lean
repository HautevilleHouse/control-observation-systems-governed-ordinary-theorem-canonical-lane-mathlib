import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

structure ObservabilityPackage where
  stateSpace : Type u
  outputMap : stateSpace → ℝ
  observationOperator : (ℝ → stateSpace) → (ℝ → ℝ)
  observabilityGramian : Prop
  observabilityInequality : Prop
  persistenceOfExcitation : Prop

structure ObservabilityEvidence (O : ObservabilityPackage) where
  observabilityGramianClosed : O.observabilityGramian
  observabilityInequalityClosed : O.observabilityInequality
  persistenceOfExcitationClosed : O.persistenceOfExcitation

def ObservabilityClosed (O : ObservabilityPackage) : Prop :=
  O.observabilityGramian ∧ O.observabilityInequality ∧ O.persistenceOfExcitation

theorem observability_closed_from_evidence (O : ObservabilityPackage) (E : ObservabilityEvidence O) :
    ObservabilityClosed O := by
  exact And.intro E.observabilityGramianClosed
    (And.intro E.observabilityInequalityClosed E.persistenceOfExcitationClosed)

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse