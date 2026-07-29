import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure CrackGeometry where
  crackSet : Type
  crackTopology : TopologicalSpace crackSet
  crackDimension : Nat
  crackRegularity : Prop
  crackBoundary : Prop

structure BrittleFractureEnergyPackage where
  elasticEnergy : Type u
  fractureEnergy : Type v
  energyFunctional : Type w
  storedElasticEnergyDensity : Prop
  criticalEnergyReleaseRate : Prop
  energyBalanceEquation : Prop
  crackDrivingForce : Prop

structure BrittleFractureEnergyEvidence (E : BrittleFractureEnergyPackage) where
  elasticEnergyClosed : E.elasticEnergy
  fractureEnergyClosed : E.fractureEnergy
  energyFunctionalClosed : E.energyFunctional
  storedElasticEnergyDensityClosed : E.storedElasticEnergyDensity
  criticalEnergyReleaseRateClosed : E.criticalEnergyReleaseRate
  energyBalanceEquationClosed : E.energyBalanceEquation
  crackDrivingForceClosed : E.crackDrivingForce

def BrittleFractureEnergyClosed (E : BrittleFractureEnergyPackage) : Prop :=
  E.elasticEnergy ∧ E.fractureEnergy ∧ E.energyFunctional ∧
  E.storedElasticEnergyDensity ∧ E.criticalEnergyReleaseRate ∧
  E.energyBalanceEquation ∧ E.crackDrivingForce

theorem brittle_fracture_energy_closed_from_evidence (E : BrittleFractureEnergyPackage)
    (Ev : BrittleFractureEnergyEvidence E) : BrittleFractureEnergyClosed E := by
  exact And.intro Ev.elasticEnergyClosed
    (And.intro Ev.fractureEnergyClosed
      (And.intro Ev.energyFunctionalClosed
        (And.intro Ev.storedElasticEnergyDensityClosed
          (And.intro Ev.criticalEnergyReleaseRateClosed
            (And.intro Ev.energyBalanceEquationClosed Ev.crackDrivingForceClosed)))))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse