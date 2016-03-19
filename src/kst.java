final class kst<K, V>
  extends ksu<K, V>
{
  private final transient kss<K, V> c;
  
  kst(K paramK, V paramV, kss<K, V> paramkss1, kss<K, V> paramkss2)
  {
    super(paramK, paramV, paramkss1);
    c = paramkss2;
  }
  
  kss<K, V> b()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     kst
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */