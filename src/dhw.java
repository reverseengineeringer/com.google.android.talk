import java.util.Iterator;
import java.util.NoSuchElementException;

class dhw<T>
  implements Iterator<T>
{
  int a = dhx.b;
  T b;
  final CharSequence c;
  final boolean d;
  int e;
  
  dhw() {}
  
  protected dhw(dhu paramdhu, CharSequence paramCharSequence)
  {
    this();
    e = 0;
    d = a;
    c = paramCharSequence;
  }
  
  dhw(dhy paramdhy, dhu paramdhu, CharSequence paramCharSequence)
  {
    this(paramdhu, paramCharSequence);
  }
  
  public int a(int paramInt)
  {
    int k = f.a.length();
    int m = c.length();
    while (paramInt <= m - k)
    {
      int i = 0;
      for (;;)
      {
        j = paramInt;
        if (i >= k) {
          return j;
        }
        if (c.charAt(i + paramInt) != f.a.charAt(i)) {
          break;
        }
        i += 1;
      }
      paramInt += 1;
    }
    int j = -1;
    return j;
  }
  
  public int b(int paramInt)
  {
    return f.a.length() + paramInt;
  }
  
  boolean b()
  {
    a = dhx.d;
    b = a();
    if (a != dhx.c)
    {
      a = dhx.a;
      return true;
    }
    return false;
  }
  
  protected String c()
  {
    if (e != -1)
    {
      int j = e;
      int i = a(e);
      if (i == -1) {
        i = c.length();
      }
      for (e = -1; (!d) || (j != i); e = b(i)) {
        return c.subSequence(j, i).toString();
      }
    }
    a = dhx.c;
    return null;
  }
  
  public final boolean hasNext()
  {
    if (a == dhx.d) {
      throw new IllegalStateException();
    }
    switch (dhs.a[(a - 1)])
    {
    default: 
      return b();
    case 1: 
      return false;
    }
    return true;
  }
  
  public final T next()
  {
    if (!hasNext()) {
      throw new NoSuchElementException();
    }
    a = dhx.b;
    return (T)b;
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     dhw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */