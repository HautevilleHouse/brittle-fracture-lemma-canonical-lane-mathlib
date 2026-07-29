import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.StressIntensityPackage

/-!
# Fracture Analytic Evidence Terms
-/

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure FractureAnalyticEvidenceTerms {O : FractureAdmittedObject}
    (S : StressIntensityPackage O) where
  stressIntensityFactorTerm : S.stressIntensityFactor
  fractureToughnessTerm : S.fractureToughness
  crackGrowthCriterionTerm : S.crackGrowthCriterion
  criticalStressLevelTerm : S.criticalStressLevel
  stressIntensityClosed : StressIntensityClosed S

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse