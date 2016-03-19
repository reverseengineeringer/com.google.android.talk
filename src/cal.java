import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

final class cal
{
  private final Set<String> b = new HashSet();
  private final Map<String, Long> c = new HashMap();
  private int d = 0;
  private boolean e = false;
  
  cal(caj paramcaj) {}
  
  private void b()
  {
    if ((e) && (d == c.size()))
    {
      a.a(c, true, true);
      c.clear();
      b.clear();
      d = 0;
    }
  }
  
  public void a()
  {
    e = true;
    b();
  }
  
  public void a(String paramString)
  {
    b.add(paramString);
    d += 1;
  }
  
  public boolean a(String paramString, long paramLong)
  {
    if (b.remove(paramString))
    {
      c.put(paramString, Long.valueOf(paramLong));
      b();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     cal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */