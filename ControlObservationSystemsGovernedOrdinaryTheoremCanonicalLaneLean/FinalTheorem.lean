import canonicalLaneMathlib.AdmissibleClass
import ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean.BridgeLemmas
import ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

def ConstrainedControlObservationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_control_observation_endgame (A : AdmissibleClass) :
    ConstrainedControlObservationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse