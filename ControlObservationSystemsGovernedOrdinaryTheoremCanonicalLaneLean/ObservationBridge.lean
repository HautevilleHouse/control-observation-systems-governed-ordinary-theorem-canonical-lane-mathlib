import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean.ControlledSystemState

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

structure ObservationBridge (S : ControlledSystemState) where
  observableSet : S.stateCarrier -> Prop
  bridgeCondition : ∀ (s : S.stateCarrier), observableSet s → S.controlledUntil
  evidenceClosed : ∀ (s : S.stateCarrier), observableSet s → S.stateTermination

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse
