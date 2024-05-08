module Beer (song) where 
    song :: String --crear la funcion el cual va a recibir la variable de n cantidad de bottles
    song = versos 99 --se crea la variable verso donde hara referencia al total de bottles/versos
        where --usaremos un ciclo recursivo para ir aumentando la cantidad de bottles y de igual forma se ira impirmiendo los renglones
            --este es nuestro primer verso donde empieza mostrando la variable n (cantidad total de bottles) concatenando la letra de la cancion (\n salto de linea)
            
            ptrA n = show n ++ " " ++ bottle n ++ " of beer on the wall, " ++ show n ++ " " ++ bottle n ++ " of beer." 
            --sigue connuestro segundo verso 
            ptrB n ="Take one down and pass it around, " ++ show n ++ " " ++ bottle n ++ " of beer on the wall.\n"
            --la variable bottle tendra el valor de n, si este valor de n es igual a 1 cambia de bottles a bottle y sino es igual a 1 sigue con bottles
            bottle n = if n == 1 then "bottle" else "bottles"

            versos :: Int -> String --funcion para terminar la cancion , este recibe un valor entero 
            --cuando la funcion versos es igual a 0 regresa un texto de confirmacion que ya no hya more bottles de beer 
            versos 0 = "\nNo more bottles of beer on the wall, no more bottles of beer.Vamonos a la base\n"
            --en caso de que no sea 0 concatena la ptrA y ptrB y para generar el ccilo es un metodo recursivo 
            versos n = ptrA n ++ ptrB (n-1)  ++ versos (n-1)

-----JAFS
        


