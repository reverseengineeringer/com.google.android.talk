import java.util.Map.Entry;

final class ksn
  extends kyp<K>
{
  ksn(ksm paramksm, kyp paramkyp) {}
  
  public boolean hasNext()
  {
    return a.hasNext();
  }
  
  public K next()
  {
    return (K)((Map.Entry)a.next()).getKey();
  }
}

/* Location:
 * Qualified Name:     ksn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */