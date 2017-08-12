{-# LANGUAGE OverloadedStrings #-}
module Page where

import Network.HTTP.Simple
import qualified Data.ByteString.Lazy.Char8 as L8
import Foreign.C.String

getPage :: IO String
getPage = do
    show <$> httpLBS "http://www.qiushibaike.com"

foreign export ccall getPage_hs :: IO CString
getPage_hs = getPage >>= newCString
    

