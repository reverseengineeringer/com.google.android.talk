import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class hbu
{
  public static final hbu a = new hbu();
  private Set<hbv> b = new HashSet();
  private final Object c = new Object();
  
  public void a()
  {
    synchronized (c)
    {
      Iterator localIterator = b.iterator();
      if (localIterator.hasNext()) {
        ((hbv)localIterator.next()).h();
      }
    }
  }
  
  public void a(int paramInt)
  {
    synchronized (c)
    {
      Iterator localIterator = b.iterator();
      if (localIterator.hasNext()) {
        ((hbv)localIterator.next()).b(paramInt);
      }
    }
  }
  
  public void a(hbv paramhbv)
  {
    synchronized (c)
    {
      b.add(paramhbv);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     hbu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */