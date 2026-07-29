import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure StressIntensityFactorPackage where
  crackGeometry : Type u
  appliedStress : ℝ
  stressIntensity : ℝ
  fractureToughness : ℝ
  singularityCorrection : Prop
  nearTipAsymptotics : Prop

structure StressIntensityFactorEvidence (P : StressIntensityFactorPackage) where
  singularityCorrectionClosed : P.singularityCorrection
  nearTipAsymptoticsClosed : P.nearTipAsymptotics

def StressIntensityFactorClosed (P : StressIntensityFactorPackage) : Prop :=
  P.singularityCorrection ∧ P.nearTipAsymptotics

theorem stress_intensity_factor_closed (P : StressIntensityFactorPackage) (E : StressIntensityFactorEvidence P) :
    StressIntensityFactorClosed P := by
  exact And.intro E.singularityCorrectionClosed E.nearTipAsymptoticsClosed

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse