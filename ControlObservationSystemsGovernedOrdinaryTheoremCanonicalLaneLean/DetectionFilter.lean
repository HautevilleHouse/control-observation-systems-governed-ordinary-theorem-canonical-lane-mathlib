import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean

structure DetectionFilterPackage where
  residualGenerator : ℝ → ℝ
  thresholdDesign : Prop
  detectabilityCondition : Prop
  falseAlarmRate : Prop
  missDetectionRate : Prop

structure DetectionFilterEvidence (D : DetectionFilterPackage) where
  thresholdDesignClosed : D.thresholdDesign
  detectabilityConditionClosed : D.detectabilityCondition
  falseAlarmRateClosed : D.falseAlarmRate
  missDetectionRateClosed : D.missDetectionRate

def DetectionFilterClosed (D : DetectionFilterPackage) : Prop :=
  D.thresholdDesign ∧ D.detectabilityCondition ∧ D.falseAlarmRate ∧ D.missDetectionRate

theorem detection_filter_closed_from_evidence (D : DetectionFilterPackage) (E : DetectionFilterEvidence D) :
    DetectionFilterClosed D := by
  exact And.intro E.thresholdDesignClosed
    (And.intro E.detectabilityConditionClosed
      (And.intro E.falseAlarmRateClosed E.missDetectionRateClosed))

end ControlObservationSystemsGovernedOrdinaryTheoremCanonicalLaneLean
end HautevilleHouse