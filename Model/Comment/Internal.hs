module Model.Comment.Internal where

import Prelude

import Database.Persist.TH
import Data.Text (Text)

data ClosureType
    = Retracted
    | Closed
    deriving (Read, Show)
derivePersistField "ClosureType"

data FlagReason
    = FlagPersonalAttack
    | FlagUnconstructiveCriticism
    | FlagCondescension
    | FlagDefensiveness
    | FlagSpamming
    | FlagPrivacyViolation
    | FlagHateSpeech
    deriving (Bounded, Enum, Eq, Read, Show)
derivePersistField "FlagReason"

descFlagReason :: FlagReason -> Text
descFlagReason FlagPersonalAttack          = "Personal attack"
descFlagReason FlagUnconstructiveCriticism = "Unconstructive criticism"
descFlagReason FlagCondescension           = "Condescension"
descFlagReason FlagDefensiveness           = "Defensiveness"
descFlagReason FlagSpamming                = "Spamming"
descFlagReason FlagPrivacyViolation        = "Privacy violation"
descFlagReason FlagHateSpeech              = "Hate speech"
