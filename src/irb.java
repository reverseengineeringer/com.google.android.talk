import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.Map.Entry;

final class irb
  implements Map.Entry<K, V>
{
  private int b;
  
  irb(ira paramira, int paramInt)
  {
    b = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof Map.Entry)) {
        return false;
      }
      paramObject = (Map.Entry)paramObject;
    } while ((StressMode.a(getKey(), ((Map.Entry)paramObject).getKey())) && (StressMode.a(getValue(), ((Map.Entry)paramObject).getValue())));
    return false;
  }
  
  public K getKey()
  {
    ira localira = a;
    int i = b;
    if ((i < 0) || (i >= a)) {
      return null;
    }
    return (K)b[(i << 1)];
  }
  
  public V getValue()
  {
    return (V)a.a(b);
  }
  
  public int hashCode()
  {
    return getKey().hashCode() ^ getValue().hashCode();
  }
  
  public V setValue(V paramV)
  {
    return (V)a.a(b, paramV);
  }
}

/* Location:
 * Qualified Name:     irb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */