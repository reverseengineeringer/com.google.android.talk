import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class how
  extends LinkedHashMap<K, V>
{
  how(hov paramhov, int paramInt)
  {
    super(paramInt, 0.75F, true);
  }
  
  protected boolean removeEldestEntry(Map.Entry<K, V> paramEntry)
  {
    return size() > a.a;
  }
}

/* Location:
 * Qualified Name:     how
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */