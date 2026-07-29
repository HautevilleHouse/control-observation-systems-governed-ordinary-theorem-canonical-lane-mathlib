import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

structure ControlObservationSystem where
  stateSpace : Type u
  controlSpace : Type v
  observationSpace : Type w
  dynamics : stateSpace → controlSpace → stateSpace
  observationMap : stateSpace → observationSpace
  reachableSet : Set stateSpace
  observableSubspace : Prop
  controllableSubspace : Prop
  observationClosed : bridgeClosed (AdmissibleClass.mk (AdmittedObject.mk this) True True (Or.inl True))

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse
