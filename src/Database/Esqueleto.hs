{-# LANGUAGE FlexibleContexts, FlexibleInstances, GADTs #-}
-- | Main module of Esqueleto.  This module replaces
-- @Database.Persist@, so instead of importing that module you
-- should just import this one:
--
-- @
-- import Database.Esqueleto
-- @
--
-- If you still have legacy code using @Database.Persist.Query@
-- (which is exported by @Database.Persist@), you may import it
-- qualified:
--
-- @
-- import qualified Database.Persist.Query as OldQuery
-- @
module Database.Esqueleto
  ( -- * Esqueleto's Language
    Esqueleto(..)
  , from

    -- * SQL backend
  , SqlQuery
  , SqlExpr
  , select
  , selectSource

    -- * Re-exports
    -- $reexports
  , Single(..)
  , module Database.Persist.Store
  ) where

import Database.Esqueleto.Internal.Language
import Database.Esqueleto.Internal.Sql
import Database.Persist.Store
import Database.Persist.GenericSql (Single(..))

-- $reexports
--
-- We re-export @Database.Persist.Store@ for convenience, since
-- Esqueleto currently does not provide a way of doing @insert@s
-- or @update@s.