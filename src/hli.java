public final class hli<E>
{
  Object[] a;
  private int b;
  private boolean c;
  private int d;
  
  public hli(int paramInt)
  {
    d = paramInt;
    b = 0;
    c = false;
    a = new Object[d];
  }
  
  public int a()
  {
    if (c) {
      return d;
    }
    return b;
  }
  
  public E a(int paramInt)
  {
    if (c)
    {
      int i = b + paramInt;
      paramInt = i;
      if (i >= d) {
        paramInt = i - d;
      }
      return (E)a[paramInt];
    }
    return (E)a[paramInt];
  }
  
  public void a(E paramE)
  {
    a[b] = paramE;
    b += 1;
    if (b == d)
    {
      b = 0;
      c = true;
    }
  }
  
  public E b()
  {
    if (!c) {
      return null;
    }
    return (E)a[b];
  }
}

/* Location:
 * Qualified Name:     hli
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */