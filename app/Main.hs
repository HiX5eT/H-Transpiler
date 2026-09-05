{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty
import qualified Data.Text.Lazy as TL

main :: IO ()
main = do
    putStrLn "================================================="
    putStrLn "    H-Transpiler Web Sunucusu Başlatılıyor...    "
    putStrLn "================================================="
    
    htmlContent <- readFile "static/index.html"
    putStrLn "[Bilgi] static/index.html başarıyla yüklendi."
    
    scotty 3000 $ do
        get "/" $ do
            html (TL.pack htmlContent)