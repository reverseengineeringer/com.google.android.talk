import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

final class irt
  implements Iterator<Map.Entry<String, Object>>
{
  private int b = -1;
  private iry c;
  private Object d;
  private boolean e;
  private boolean f;
  private iry g;
  
  irt(irr paramirr) {}
  
  public boolean hasNext()
  {
    if (!f)
    {
      f = true;
      for (d = null; d == null; d = c.a(a.a))
      {
        int i = b + 1;
        b = i;
        if (i >= a.b.b.size()) {
          break;
        }
        c = a.b.a((String)a.b.b.get(b));
      }
    }
    return d != null;
  }
  
  public void remove()
  {
    if ((g != null) && (!e)) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool);
      e = true;
      g.a(a.a, null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     irt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */