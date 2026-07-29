import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure CohesiveZoneModelPackage where
  tractionSeparationLaw : Prop
  cohesiveStrength : Prop
  separationEnergy : Prop
  processZoneSize : Prop
  softeningBehavior : Prop

structure CohesiveZoneModelEvidence (C : CohesiveZoneModelPackage) where
  tractionSeparationLawClosed : C.tractionSeparationLaw
  cohesiveStrengthClosed : C.cohesiveStrength
  separationEnergyClosed : C.separationEnergy
  processZoneSizeClosed : C.processZoneSize
  softeningBehaviorClosed : C.softeningBehavior

def CohesiveZoneModelClosed (C : CohesiveZoneModelPackage) : Prop :=
  C.tractionSeparationLaw ∧ C.cohesiveStrength ∧ C.separationEnergy ∧ C.processZoneSize ∧ C.softeningBehavior

theorem cohesive_zone_model_closed_from_evidence
    (C : CohesiveZoneModelPackage) (E : CohesiveZoneModelEvidence C) :
    CohesiveZoneModelClosed C := by
  exact And.intro E.tractionSeparationLawClosed
    (And.intro E.cohesiveStrengthClosed
      (And.intro E.separationEnergyClosed
        (And.intro E.processZoneSizeClosed E.softeningBehaviorClosed)))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse
