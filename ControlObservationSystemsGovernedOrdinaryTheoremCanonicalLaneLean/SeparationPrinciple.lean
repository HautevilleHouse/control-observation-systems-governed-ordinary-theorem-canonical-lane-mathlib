import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

structure SeparationPrinciplePackage where
  controllerDynamics : (ℝ → ℝ) → (ℝ → ℝ)
  observerDynamics : (ℝ → ℝ) → (ℝ → ℝ)
  certaintyEquivalenceHolds : Prop
  closedLoopStability : Prop
  separationProof : Prop

structure SeparationPrincipleEvidence (S : SeparationPrinciplePackage) where
  certaintyEquivalenceHoldsClosed : S.certaintyEquivalenceHolds
  closedLoopStabilityClosed : S.closedLoopStability
  separationProofClosed : S.separationProof

def SeparationPrincipleClosed (S : SeparationPrinciplePackage) : Prop :=
  S.certaintyEquivalenceHolds ∧ S.closedLoopStability ∧ S.separationProof

theorem separation_principle_closed_from_evidence (S : SeparationPrinciplePackage) (E : SeparationPrincipleEvidence S) :
    SeparationPrincipleClosed S := by
  exact And.intro E.certaintyEquivalenceHoldsClosed
    (And.intro E.closedLoopStabilityClosed E.separationProofClosed)

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse