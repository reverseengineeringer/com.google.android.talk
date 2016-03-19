import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class azs
{
  final Map<Integer, azo> a = new hq();
  
  public void a(int paramInt, azo paramazo)
  {
    if (azq.c.containsKey(Integer.valueOf(paramInt)))
    {
      Iterator localIterator = ((Set)azq.c.get(Integer.valueOf(paramInt))).iterator();
      while (localIterator.hasNext()) {
        ((azr)localIterator.next()).a(paramazo);
      }
    }
    if (paramazo == null)
    {
      a.remove(Integer.valueOf(paramInt));
      return;
    }
    a.put(Integer.valueOf(paramInt), paramazo);
  }
  
  public boolean a(int paramInt)
  {
    return a.containsKey(Integer.valueOf(paramInt));
  }
  
  public azo b(int paramInt)
  {
    return (azo)a.get(Integer.valueOf(paramInt));
  }
}

/* Location:
 * Qualified Name:     azs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */