import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.BrittleFractureTestPackage

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure CohesiveZoneLawPackage {P : BrittleFractureTestPackage}
    (E : BrittleFractureTestEvidence P) where
  tractionSeparationRelation : Type u
  damageVariable : Type v
  energyDissipation : Prop
  cohesiveTraction : Prop
  irreversibleDamage : Prop

structure CohesiveZoneLawEvidence {P : BrittleFractureTestPackage}
    {E : BrittleFractureTestEvidence P} (C : CohesiveZoneLawPackage E) where
  energyDissipationClosed : C.energyDissipation
  cohesiveTractionClosed : C.cohesiveTraction
  irreversibleDamageClosed : C.irreversibleDamage

def CohesiveZoneLawClosed {P : BrittleFractureTestPackage}
    {E : BrittleFractureTestEvidence P} (C : CohesiveZoneLawPackage E) : Prop :=
  C.energyDissipation ∧ C.cohesiveTraction ∧ C.irreversibleDamage

theorem cohesive_zone_law_closed_from_evidence {P : BrittleFractureTestPackage}
    {E : BrittleFractureTestEvidence P} (C : CohesiveZoneLawPackage E)
    (Ev : CohesiveZoneLawEvidence C) : CohesiveZoneLawClosed C := by
  exact And.intro Ev.energyDissipationClosed
    (And.intro Ev.cohesiveTractionClosed Ev.irreversibleDamageClosed)

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse