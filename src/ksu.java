class ksu<K, V>
  extends kss<K, V>
{
  private final transient kss<K, V> c;
  
  ksu(K paramK, V paramV, kss<K, V> paramkss)
  {
    super(paramK, paramV);
    c = paramkss;
  }
  
  final kss<K, V> a()
  {
    return c;
  }
  
  final boolean c()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     ksu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */