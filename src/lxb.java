import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class lxb
  implements Iterator<Map.Entry<K, V>>
{
  private int b = -1;
  private boolean c;
  private Iterator<Map.Entry<K, V>> d;
  
  lxb(lwv paramlwv) {}
  
  private Iterator<Map.Entry<K, V>> a()
  {
    if (d == null) {
      d = a.b.entrySet().iterator();
    }
    return d;
  }
  
  public boolean hasNext()
  {
    return (b + 1 < a.a.size()) || (a().hasNext());
  }
  
  public void remove()
  {
    if (!c) {
      throw new IllegalStateException("remove() was called before next()");
    }
    c = false;
    a.e();
    if (b < a.a.size())
    {
      lwv locallwv = a;
      int i = b;
      b = (i - 1);
      locallwv.c(i);
      return;
    }
    a().remove();
  }
}

/* Location:
 * Qualified Name:     lxb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */