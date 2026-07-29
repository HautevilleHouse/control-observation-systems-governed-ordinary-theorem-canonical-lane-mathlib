import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsGovernedOrdinaryTheorem.ControllabilityCriterion
import HautevilleHouse.ControlObservationSystemsGovernedOrdinaryTheorem.ObservabilityStructure

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheorem

structure StabilityBridge where
  lyapunovFunction : Type u
  dissipationInequality : Prop
  passivityCondition : Prop
  dissipationInequalityClosed : dissipationInequality
  passivityConditionClosed : passivityCondition

structure StabilityBridgeEvidence (S : StabilityBridge) where
  dissipationInequalityClosed : S.dissipationInequality
  passivityConditionClosed : S.passivityCondition

def StabilityBridgeClosed (S : StabilityBridge) : Prop :=
  S.dissipationInequality ∧ S.passivityCondition

theorem stability_bridge_closed_from_evidence (S : StabilityBridge)
    (E : StabilityBridgeEvidence S) : StabilityBridgeClosed S := by
  exact And.intro E.dissipationInequalityClosed E.passivityConditionClosed

def bridgeClosed (A : AdmissibleClass) : Prop :=
  StabilityBridgeClosed (A.object : StabilityBridge)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end ControlObservationSystemsGovernedOrdinaryTheorem
end HautevilleHouse