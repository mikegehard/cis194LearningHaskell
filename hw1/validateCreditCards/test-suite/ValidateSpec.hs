module ValidateSpec (spec) where

import Validate (validate)
import Test.Hspec

spec :: Spec
spec = do
    describe "validate" $ do
        it "returns something" $ do
            validate "me" `shouldBe` "Validate! me"
