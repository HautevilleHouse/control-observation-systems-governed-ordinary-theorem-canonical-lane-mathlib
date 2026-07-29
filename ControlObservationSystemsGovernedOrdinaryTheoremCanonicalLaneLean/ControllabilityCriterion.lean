import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheorem

structure ControllabilityCriterion where
  system : Type u
  controlSpace : Type v
  stateSpace : Type w
  reachableSet : Prop
  controllabilityMatrix : Prop
  rankCondition : Prop
  controllabilityMatrixClosed : controllabilityMatrix
  rankConditionClosed : rankCondition

structure ControllabilityCriterionEvidence (C : ControllabilityCriterion) where
  reachableSetClosed : C.reachableSet
  controllabilityMatrixClosed : C.controllabilityMatrix
  rankConditionClosed : C.rankCondition

def ControllabilityCriterionClosed (C : ControllabilityCriterion) : Prop :=
  C.reachableSet ∧ C.controllabilityMatrix ∧ C.rankCondition

theorem controllability_criterion_closed_from_evidence (C : ControllabilityCriterion)
    (E : ControllabilityCriterionEvidence C) : ControllabilityCriterionClosed C := by
  exact And.intro E.reachableSetClosed (And.intro E.controllabilityMatrixClosed E.rankConditionClosed)

end ControlObservationSystemsGovernedOrdinaryTheorem
end HautevilleHouse