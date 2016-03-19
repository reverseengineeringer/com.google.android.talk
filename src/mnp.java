import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class mnp<E>
  implements Iterable<E>
{
  public final List<E> a = new ArrayList();
  int b = 0;
  boolean c = false;
  private int d = 0;
  
  public boolean a()
  {
    return d == 0;
  }
  
  public boolean a(E paramE)
  {
    if ((paramE == null) || (a.contains(paramE))) {
      return false;
    }
    a.add(paramE);
    d += 1;
    return true;
  }
  
  public boolean b(E paramE)
  {
    if (paramE == null) {}
    int i;
    do
    {
      return false;
      i = a.indexOf(paramE);
    } while (i == -1);
    if (b == 0) {
      a.remove(i);
    }
    for (;;)
    {
      d -= 1;
      return true;
      c = true;
      a.set(i, null);
    }
  }
  
  public Iterator<E> iterator()
  {
    return new mnq(this);
  }
}

/* Location:
 * Qualified Name:     mnp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */