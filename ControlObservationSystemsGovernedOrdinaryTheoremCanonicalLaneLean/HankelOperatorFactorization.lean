import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean.ControllableObservableDecomposition

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

structure HankelOperatorFactorizationPackage {O : ObservationSystemModel}
    {D : DecompositionPackage O} where
  hankelMatrix : Type u
  singularValues : List ℝ
  lowRankApproximation : Prop
  balancedTruncation : Prop
  projectionErrorBound : Prop

structure HankelOperatorFactorizationEvidence {O : ObservationSystemModel}
    {D : DecompositionPackage O} (H : HankelOperatorFactorizationPackage D) where
  lowRankApproximationClosed : H.lowRankApproximation
  balancedTruncationClosed : H.balancedTruncation
  projectionErrorBoundClosed : H.projectionErrorBound

def HankelOperatorFactorizationClosed {O : ObservationSystemModel}
    {D : DecompositionPackage O} (H : HankelOperatorFactorizationPackage D) : Prop :=
  H.lowRankApproximation ∧ H.balancedTruncation ∧ H.projectionErrorBound

theorem hankel_operator_factorization_closed_from_evidence
    {O : ObservationSystemModel} {D : DecompositionPackage O}
    (H : HankelOperatorFactorizationPackage D) (E : HankelOperatorFactorizationEvidence H) :
    HankelOperatorFactorizationClosed H := by
  exact And.intro E.lowRankApproximationClosed
    (And.intro E.balancedTruncationClosed E.projectionErrorBoundClosed)

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse
