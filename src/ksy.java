import java.util.Map.Entry;

final class ksy<K, V>
  extends ktj<K>
{
  private final ksm<K, V> a;
  
  ksy(ksm<K, V> paramksm)
  {
    a = paramksm;
  }
  
  K a(int paramInt)
  {
    return (K)((Map.Entry)a.e().f().get(paramInt)).getKey();
  }
  
  public kyp<K> a()
  {
    return a.aa_();
  }
  
  public boolean contains(Object paramObject)
  {
    return a.containsKey(paramObject);
  }
  
  boolean e()
  {
    return true;
  }
  
  public int size()
  {
    return a.size();
  }
  
  Object writeReplace()
  {
    return new ksz(a);
  }
}

/* Location:
 * Qualified Name:     ksy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */