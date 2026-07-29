import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.CrackGeometry

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure FractureEnergyPackage {G : CrackGeometryPackage} where
  storedElasticEnergy : ℝ
  surfaceEnergy : ℝ
  totalEnergy : ℝ := storedElasticEnergy + surfaceEnergy
  energyBalance : storedElasticEnergy + surfaceEnergy = totalEnergy

structure FractureEnergyEvidence {G : CrackGeometryPackage} (F : FractureEnergyPackage G) where
  storedElasticEnergyClosed : F.storedElasticEnergy ∈ Set.Ici 0
  surfaceEnergyClosed : F.surfaceEnergy ∈ Set.Ici 0
  energyBalanceClosed : F.energyBalance

def FractureEnergyClosed {G : CrackGeometryPackage} (F : FractureEnergyPackage G) : Prop :=
  F.storedElasticEnergy ≥ 0 ∧ F.surfaceEnergy ≥ 0 ∧ F.energyBalance

theorem fracture_energy_closed_from_evidence {G : CrackGeometryPackage} (F : FractureEnergyPackage G) (E : FractureEnergyEvidence F) : FractureEnergyClosed F :=
  And.intro (E.storedElasticEnergyClosed) (And.intro E.surfaceEnergyClosed E.energyBalanceClosed)

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse
