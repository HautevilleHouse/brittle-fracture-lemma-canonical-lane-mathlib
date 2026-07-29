import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure VariationalInequalityPackage where
  displacementField : Type u
  crackSet : Type v
  variationalInequality : Prop
  weakFormulation : Prop
  irreversibilityConstraint : Prop
  energyMinimization : Prop
  existenceSolution : Prop
  uniquenessSolution : Prop
  regularityResult : Prop

structure VariationalInequalityEvidence (V : VariationalInequalityPackage) where
  displacementFieldClosed : V.displacementField
  crackSetClosed : V.crackSet
  variationalInequalityClosed : V.variationalInequality
  weakFormulationClosed : V.weakFormulation
  irreversibilityConstraintClosed : V.irreversibilityConstraint
  energyMinimizationClosed : V.energyMinimization
  existenceSolutionClosed : V.existenceSolution
  uniquenessSolutionClosed : V.uniquenessSolution
  regularityResultClosed : V.regularityResult

def VariationalInequalityClosed (V : VariationalInequalityPackage) : Prop :=
  V.displacementField ∧ V.crackSet ∧ V.variationalInequality ∧
  V.weakFormulation ∧ V.irreversibilityConstraint ∧ V.energyMinimization ∧
  V.existenceSolution ∧ V.uniquenessSolution ∧ V.regularityResult

theorem variational_inequality_closed_from_evidence (V : VariationalInequalityPackage)
    (Ev : VariationalInequalityEvidence V) : VariationalInequalityClosed V := by
  exact And.intro Ev.displacementFieldClosed
    (And.intro Ev.crackSetClosed
      (And.intro Ev.variationalInequalityClosed
        (And.intro Ev.weakFormulationClosed
          (And.intro Ev.irreversibilityConstraintClosed
            (And.intro Ev.energyMinimizationClosed
              (And.intro Ev.existenceSolutionClosed
                (And.intro Ev.uniquenessSolutionClosed Ev.regularityResultClosed)))))))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse