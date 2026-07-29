import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

structure ObservationSystemModel where
  stateSpace : Type u
  observationSpace : Type v
  dynamics : stateSpace → stateSpace
  outputMap : stateSpace → observationSpace
  observabilityProperty : Prop
  controllabilityProperty : Prop
  observabilityPropertyTerm : observabilityProperty
  controllabilityPropertyTerm : controllabilityProperty

structure ObservationSystemEvidence (O : ObservationSystemModel) where
  observabilityPropertyClosed : O.observabilityProperty
  controllabilityPropertyClosed : O.controllabilityProperty

def ObservationSystemModelClosed (O : ObservationSystemModel) : Prop :=
  O.observabilityProperty ∧ O.controllabilityProperty

theorem observation_system_model_closed_from_evidence
    (O : ObservationSystemModel) (E : ObservationSystemEvidence O) :
    ObservationSystemModelClosed O := by
  exact And.intro E.observabilityPropertyClosed E.controllabilityPropertyClosed

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse
