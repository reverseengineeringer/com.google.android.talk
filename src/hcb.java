import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class hcb
{
  private final Map<String, hca> a = new ConcurrentHashMap();
  
  public hca a(String paramString)
  {
    hca localhca2 = (hca)a.get(paramString);
    hca localhca1 = localhca2;
    if (localhca2 == null)
    {
      localhca1 = new hca(paramString);
      a(localhca1);
    }
    return localhca1;
  }
  
  public void a(hca paramhca)
  {
    a.put(paramhca.a(), paramhca);
  }
}

/* Location:
 * Qualified Name:     hcb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */