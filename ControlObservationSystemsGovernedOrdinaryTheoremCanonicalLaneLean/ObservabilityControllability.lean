import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

structure ObservabilityCondition (S : ControlObservationSystem) where
  observabilityMatrix : S.observationSpace → S.stateSpace → Prop
  rankCondition : ℕ
  detectableSubspace : Set S.stateSpace
  observabilityClosed : S.observationClosed

theorem observability_implies_detectable (S : ControlObservationSystem) (O : ObservabilityCondition S) :
    O.detectableSubspace ⊆ S.reachableSet := by
  intro x hx
  exact hx

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse
