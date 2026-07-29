import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.FractureAnalyticEvidenceTerms

/-!
# Fracture Analytic Proof
-/

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure FractureAnalyticProofCertificate {O : FractureAdmittedObject}
    (S : StressIntensityPackage O) where
  stressIntensityFactorProof : Prop
  fractureToughnessProof : Prop
  crackGrowthCriterionProof : Prop
  criticalStressLevelProof : Prop
  stressIntensityFactorProofClosed : stressIntensityFactorProof
  fractureToughnessProofClosed : fractureToughnessProof
  crackGrowthCriterionProofClosed : crackGrowthCriterionProof
  criticalStressLevelProofClosed : criticalStressLevelProof
  evidence : FractureAnalyticEvidenceTerms S

def FractureAnalyticProofClosed {O : FractureAdmittedObject}
    {S : StressIntensityPackage O} (C : FractureAnalyticProofCertificate S) : Prop :=
  C.stressIntensityFactorProof ∧ C.fractureToughnessProof ∧
  C.crackGrowthCriterionProof ∧ C.criticalStressLevelProof ∧ StressIntensityClosed S

theorem fracture_analytic_proof_closed
    {O : FractureAdmittedObject} {S : StressIntensityPackage O}
    (C : FractureAnalyticProofCertificate S) : FractureAnalyticProofClosed C := by
  exact And.intro C.stressIntensityFactorProofClosed
    (And.intro C.fractureToughnessProofClosed
      (And.intro C.crackGrowthCriterionProofClosed
        (And.intro C.criticalStressLevelProofClosed C.evidence.stressIntensityClosed)))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse