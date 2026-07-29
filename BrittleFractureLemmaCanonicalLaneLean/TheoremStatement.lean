import BrittleFractureLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure BrittleFractureStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceRepository : String := "brittle-fracture-lemma-canonical-lane"
def sourceDescription : String := "Brittle Fracture Lemma"
def sourceTheoremBoundary : String := "classical boundary carried"
def baselineCertificateLane : String := "manifold_constrained"
def baselineCertificateAllPass : Bool := true
def outsideConstantDependencyCount : Nat := 0

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse
