module ValidateSpec (spec) where

import Validate
import Test.Hspec
import Test.QuickCheck


spec :: Spec
spec = do
    describe "validate" $ do
        it "returns something" $ do
            validate "me" `shouldBe` "Validate! me"

    describe "toDigits" $ do
--        it "returns empty list for 0" $ do
--            toDigits 0 `shouldBe` []
--
--        it "returns empty list for negative numbers" $ do
--            toDigits (-1) `shouldBe` []
--
        -- the above two can be handled using QuickCheck properties
        it "returns empty list for numbers less than or equal to 0" $ do
            property $ \n -> n <= 0 ==>
                toDigits n == []

        it "breaks the number up into digits" $ do
            toDigits 12345 `shouldBe` [1,2,3,4,5]

    describe "toDigitsRev" $ do
        it "returns the list reversed" $ do
            toDigitsRev 12345 `shouldBe` [5,4,3,2,1]

    describe "doubleEveryOther" $ do
        it "doubles every other entry starting on the right" $ do
            doubleEveryOther [8,7,6,5] `shouldBe` [16,7,12,5]
            doubleEveryOther [1,2,3] `shouldBe` [1,4,3]
