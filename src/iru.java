import java.util.AbstractSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

final class iru
  extends AbstractSet<Map.Entry<String, Object>>
{
  iru(irr paramirr) {}
  
  public irt a()
  {
    return new irt(a);
  }
  
  public void clear()
  {
    Iterator localIterator = a.b.b.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      a.b.a(str).a(a.a, null);
    }
  }
  
  public boolean isEmpty()
  {
    Iterator localIterator = a.b.b.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (a.b.a(str).a(a.a) != null) {
        return false;
      }
    }
    return true;
  }
  
  public int size()
  {
    Iterator localIterator = a.b.b.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (a.b.a(str).a(a.a) == null) {
        break label70;
      }
      i += 1;
    }
    label70:
    for (;;)
    {
      break;
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     iru
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */