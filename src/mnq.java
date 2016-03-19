import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public final class mnq<E>
  implements Iterator<E>
{
  int a;
  int b = 0;
  boolean c = false;
  
  mnq(mnp parammnp)
  {
    b += 1;
    a = a.size();
  }
  
  private void a()
  {
    if (!c)
    {
      c = true;
      mnp localmnp = d;
      b -= 1;
      if ((b <= 0) && (c))
      {
        c = false;
        int i = a.size() - 1;
        while (i >= 0)
        {
          if (a.get(i) == null) {
            a.remove(i);
          }
          i -= 1;
        }
      }
    }
  }
  
  public boolean hasNext()
  {
    int i = b;
    while ((i < a) && (d.a.get(i) == null)) {
      i += 1;
    }
    if (i < a) {
      return true;
    }
    a();
    return false;
  }
  
  public E next()
  {
    mnp localmnp;
    int i;
    while (b < a)
    {
      localmnp = d;
      i = b;
      if (a.get(i) != null) {
        break;
      }
      b += 1;
    }
    if (b < a)
    {
      localmnp = d;
      i = b;
      b = (i + 1);
      return (E)a.get(i);
    }
    a();
    throw new NoSuchElementException();
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     mnq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */