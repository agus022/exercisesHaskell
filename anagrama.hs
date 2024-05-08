class anagrama(private val source: String {
    
    fun match(anagrams: Collection<String>):Set<String>{
        return anagrams 
        .filter{it.length == source.length && it.toLowercase()!=source.toLowercase}
        .filter{it.checkAnagram()}.toSet()
    }

   private fun String.checkAnagram(): Boolean{
        val sourceList = source.toCharArray()
                .map { it.toLowerCase() }
                .toMutableList()
        this.toCharArray()
                .forEach {
                    if (!sourceList.remove(it.toLowerCase()))
                        return false
                }
        return true
    }
})
