import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsGovernedOrdinaryTheorem.ObservabilityStructure

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheorem

structure ObserverDesign where
  observerGain : Type u
  errorDynamics : Prop
  convergenceCondition : Prop
  errorDynamicsClosed : errorDynamics
  convergenceConditionClosed : convergenceCondition

structure ObserverDesignEvidence (O : ObserverDesign) where
  errorDynamicsClosed : O.errorDynamics
  convergenceConditionClosed : O.convergenceCondition

def ObserverDesignClosed (O : ObserverDesign) : Prop :=
  O.errorDynamics ∧ O.convergenceCondition

theorem observer_design_closed_from_evidence (O : ObserverDesign)
    (E : ObserverDesignEvidence O) : ObserverDesignClosed O := by
  exact And.intro E.errorDynamicsClosed E.convergenceConditionClosed

end ControlObservationSystemsGovernedOrdinaryTheorem
end HautevilleHouse