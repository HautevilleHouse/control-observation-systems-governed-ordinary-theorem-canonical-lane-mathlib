import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

structure ControlledSystemState where
  stateCarrier : Type
  controlCarrier : Type
  observationCarrier : Type
  stateDynamics : stateCarrier -> controlCarrier -> stateCarrier
  observationMap : stateCarrier -> observationCarrier
  initialState : stateCarrier
  controlledUntil : Prop
  stateTermination : Prop

def ControlledSystemClosed (S : ControlledSystemState) : Prop :=
  S.controlledUntil ∧ S.stateTermination

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse
