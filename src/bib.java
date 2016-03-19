import java.util.List;
import java.util.Map;

final class bib
  extends fdl
{
  private final Map<String, Integer> a = new hq();
  private final Map<String, List<cyx>> b = new hq();
  
  public int a(String paramString)
  {
    return aal.a((Integer)a.get(paramString), 0);
  }
  
  public void a(String paramString, int paramInt)
  {
    a.put(paramString, Integer.valueOf(paramInt));
  }
  
  public void a(String paramString, List<cyx> paramList)
  {
    b.put(paramString, paramList);
  }
  
  public boolean b(String paramString)
  {
    return a.containsKey(paramString);
  }
  
  public List<cyx> c(String paramString)
  {
    return (List)b.get(paramString);
  }
}

/* Location:
 * Qualified Name:     bib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */