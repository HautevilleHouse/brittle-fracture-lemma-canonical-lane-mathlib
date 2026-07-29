import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.CrackPath

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure StressIntensityFactorPackage {G : CrackPathPackage} where
  stressIntensity : Prop
  fractureToughnessComparison : Prop
  scaleCompatibility : Prop

structure StressIntensityFactorEvidence {G : CrackPathPackage}
    (S : StressIntensityFactorPackage G) where
  stressIntensityClosed : S.stressIntensity
  fractureToughnessComparisonClosed : S.fractureToughnessComparison
  scaleCompatibilityClosed : S.scaleCompatibility

def StressIntensityFactorClosed {G : CrackPathPackage}
    (S : StressIntensityFactorPackage G) : Prop :=
  S.stressIntensity ∧ S.fractureToughnessComparison ∧ S.scaleCompatibility

theorem stress_intensity_factor_closed_from_evidence
    {G : CrackPathPackage} (S : StressIntensityFactorPackage G)
    (E : StressIntensityFactorEvidence S) : StressIntensityFactorClosed S := by
  exact And.intro E.stressIntensityClosed
    (And.intro E.fractureToughnessComparisonClosed E.scaleCompatibilityClosed)

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse