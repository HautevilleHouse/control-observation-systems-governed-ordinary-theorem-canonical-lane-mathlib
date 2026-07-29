import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean.ObservationSystemModel

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

structure DecompositionPackage {O : ObservationSystemModel} where
  controllableSubspace : Type u
  observableSubspace : Type v
  unobservableSubspace : Type w
  controllableObservableIntersection : Prop
  kalmanDecomposition : Prop
  decompositionConstructed : Prop

structure DecompositionEvidence {O : ObservationSystemModel} (D : DecompositionPackage O) where
  controllableObservableIntersectionClosed : D.controllableObservableIntersection
  kalmanDecompositionClosed : D.kalmanDecomposition
  decompositionConstructedClosed : D.decompositionConstructed

def DecompositionClosed {O : ObservationSystemModel} (D : DecompositionPackage O) : Prop :=
  D.controllableObservableIntersection ∧ D.kalmanDecomposition ∧ D.decompositionConstructed

theorem decomposition_closed_from_evidence
    {O : ObservationSystemModel} (D : DecompositionPackage O) (E : DecompositionEvidence D) :
    DecompositionClosed D := by
  exact And.intro E.controllableObservableIntersectionClosed
    (And.intro E.kalmanDecompositionClosed E.decompositionConstructedClosed)

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse
