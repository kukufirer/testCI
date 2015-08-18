{-# LANGUAGE CPP #-}
module Main where

import Test.DocTest

main :: IO ()
main = doctest
  [ "-package", "ghc-" ++ VERSION_ghc
  , "-package", "transformers-" ++ VERSION_transformers
  , "-package", "mtl-" ++ VERSION_mtl
  , "-package", "directory-" ++ VERSION_directory
  , "-XScopedTypeVariables", "-XRecordWildCards", "-XNamedFieldPuns", "-XConstraintKinds", "-XFlexibleContexts", "-XDataKinds", "-XKindSignatures", "-XTypeOperators"
  , "-idist/build/autogen/"
  , "-optP-include"
  , "-optPdst/build/autogen/cabal_macros.h"
  -- , "-optP.stack-work/dist/x86_64-osx/Cabal-1.22.4.0/build/autogen/cabal_macros.h"
  , "Language/Haskell/GhcMod.hs"
  ]
