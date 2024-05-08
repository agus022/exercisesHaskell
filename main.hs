module Main where
    import anagrama(anagrama,match)
    main::IO ()
    main = do 
        let source = "listen"
        let anagrams = ["enlists", "google", "inlets", "banana"]
        let result match (anagrama source)anagrams
        putStrLn $ "Anagrams of " ++ source ++ ": " ++ show result