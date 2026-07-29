import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean.ControlledSystemState

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

structure GateControl (S : ControlledSystemState) where
  gateCondition : Prop
  controlStrategy : S.controlCarrier -> Prop
  strategyFeasible : S.controlledUntil → gateCondition
  strategyLeadsToTermination : (∀ (u : S.controlCarrier), controlStrategy u → gateCondition) → S.stateTermination

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse
