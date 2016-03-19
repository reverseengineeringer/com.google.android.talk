import java.util.LinkedHashMap;

public final class mhh<K, V>
{
  private final LinkedHashMap<K, kog> a;
  
  mhh(int paramInt)
  {
    a = new LinkedHashMap(aal.u(paramInt));
  }
  
  public mhg<K, V> a()
  {
    return new mhg(a);
  }
  
  public mhh<K, V> a(K paramK, kog paramkog)
  {
    if (paramkog == null) {
      throw new NullPointerException("The provider of the value is null");
    }
    a.put(paramK, paramkog);
    return this;
  }
}

/* Location:
 * Qualified Name:     mhh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */