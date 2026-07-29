import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

structure ControllabilityPackage where
  stateSpace : Type u
  inputMap : ℝ → stateSpace → stateSpace
  controllabilityGramian : Prop
  controllabilityInequality : Prop
  reachabilityCondition : Prop

structure ControllabilityEvidence (C : ControllabilityPackage) where
  controllabilityGramianClosed : C.controllabilityGramian
  controllabilityInequalityClosed : C.controllabilityInequality
  reachabilityConditionClosed : C.reachabilityCondition

def ControllabilityClosed (C : ControllabilityPackage) : Prop :=
  C.controllabilityGramian ∧ C.controllabilityInequality ∧ C.reachabilityCondition

theorem controllability_closed_from_evidence (C : ControllabilityPackage) (E : ControllabilityEvidence C) :
    ControllabilityClosed C := by
  exact And.intro E.controllabilityGramianClosed
    (And.intro E.controllabilityInequalityClosed E.reachabilityConditionClosed)

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse