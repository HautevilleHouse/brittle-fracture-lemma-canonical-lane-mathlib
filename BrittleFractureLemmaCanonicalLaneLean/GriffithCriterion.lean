import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure GriffithCriterionPackage where
  criticalStress : ℝ
  crackLengthCritical : ℝ
  criticalEnergyReleaseRate : ℝ
  fracToughness : ℝ
  criterionSatisfied : Prop

structure GriffithCriterionEvidence (G : GriffithCriterionPackage) where
  criticalStressClosed : G.criticalStress > 0
  crackLengthCriticalClosed : G.crackLengthCritical > 0
  criticalEnergyReleaseRateClosed : G.criticalEnergyReleaseRate > 0
  fracToughnessClosed : G.fracToughness > 0
  criterionCalc : G.criterionSatisfied

def GriffithCriterionClosed (G : GriffithCriterionPackage) : Prop :=
  G.criterionSatisfied

theorem griffith_criterion_closed_from_evidence (G : GriffithCriterionPackage) (E : GriffithCriterionEvidence G) :
  GriffithCriterionClosed G := by
  exact E.criterionCalc

theorem griffith_criterion_bridge (A : AdmissibleClass) (G : GriffithCriterionPackage) (E : GriffithCriterionEvidence G) :
  bridgeClosed A := by
  exact bridge_from_admissible_class A

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse