import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

structure ObservabilityGramian (S : ControlObservationSystem) where
  gramianMatrix : S.observationSpace → S.stateSpace → Prop
  positiveDefinite : Prop
  controllabilityGramian : S.controlSpace → S.stateSpace → Prop
  positiveDefiniteControllability : Prop
  duality : ObservabilityGramian S → ControllabilityGramian S

theorem gramian_duality (S : ControlObservationSystem) (G : ObservabilityGramian S) :
    bridgeClosed (AdmissibleClass.mk (AdmittedObject.mk S) G.positiveDefinite G.positiveDefiniteControllability (Or.inl G.positiveDefinite)) := by
  exact G.positiveDefinite

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse
