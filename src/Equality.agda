module Equality where

open import Agda.Builtin.Equality public

infix 4 _≅_

data _≅_ {ℓ} {A : Set ℓ} (x : A) : {B : Set ℓ} → B → Set ℓ where
   refl : x ≅ x

≡→≅ : ∀ {ℓ} {A : Set ℓ} {a b : A} → a ≡ b → a ≅ b
≡→≅ refl = refl

sym : ∀ {ℓ} {A : Set ℓ} {a b : A} → a ≡ b → b ≡ a
sym refl = refl

sym′ : ∀ {ℓ} {A B : Set ℓ} {a : A} {b : B} → a ≅ b → b ≅ a
sym′ refl = refl
