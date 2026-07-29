import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure CrackPathPackage where
  crackGeometry : Type
  crackLength : ℝ
  loadingCondition : Prop
  stressIntensityFactor : ℝ
  energyReleaseRate : ℝ
  crackPropagation : Prop

structure CrackPathEvidence (C : CrackPathPackage) where
  crackLengthClosed : C.crackLength > 0
  stressIntensityFactorClosed : C.stressIntensityFactor > 0
  energyReleaseRateClosed : C.energyReleaseRate > 0
  crackPropagationClosed : C.crackPropagation

def CrackPathClosed (C : CrackPathPackage) : Prop :=
  C.crackLength > 0 ∧ C.stressIntensityFactor > 0 ∧ C.energyReleaseRate > 0 ∧ C.crackPropagation

theorem crack_path_closed_from_evidence (C : CrackPathPackage) (E : CrackPathEvidence C) :
    CrackPathClosed C := by
  exact And.intro E.crackLengthClosed
    (And.intro E.stressIntensityFactorClosed
      (And.intro E.energyReleaseRateClosed E.crackPropagationClosed))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse