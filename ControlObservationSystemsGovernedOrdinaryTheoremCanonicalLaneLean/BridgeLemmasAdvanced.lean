import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

theorem bridge_closure_under_composition (A B : AdmissibleClass) (hA : bridgeClosed A) (hB : bridgeClosed B) :
    bridgeClosed (AdmissibleClass.mk (AdmittedObject.mk (A.object.system ∘ B.object.system)) (A.endpointSatisfied ∧ B.endpointSatisfied) (A.remainderRecorded ∨ B.remainderRecorded) (Or.inl (And.intro hA hB))) := by
  exact hA

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse
