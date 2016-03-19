public final class hu<E>
  implements Cloneable
{
  private static final Object a = new Object();
  private boolean b = false;
  private long[] c;
  private Object[] d;
  private int e;
  
  public hu()
  {
    this((byte)0);
  }
  
  private hu(byte paramByte)
  {
    paramByte = hs.b(10);
    c = new long[paramByte];
    d = new Object[paramByte];
    e = 0;
  }
  
  private long c(int paramInt)
  {
    if (b) {
      d();
    }
    return c[paramInt];
  }
  
  private hu<E> c()
  {
    try
    {
      hu localhu = (hu)super.clone();
      return localCloneNotSupportedException1;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException1)
    {
      try
      {
        c = ((long[])c.clone());
        d = ((Object[])d.clone());
        return localhu;
      }
      catch (CloneNotSupportedException localCloneNotSupportedException2) {}
      localCloneNotSupportedException1 = localCloneNotSupportedException1;
      return null;
    }
  }
  
  private void d()
  {
    int m = e;
    long[] arrayOfLong = c;
    Object[] arrayOfObject = d;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      Object localObject = arrayOfObject[i];
      k = j;
      if (localObject != a)
      {
        if (i != j)
        {
          arrayOfLong[j] = arrayOfLong[i];
          arrayOfObject[j] = localObject;
          arrayOfObject[i] = null;
        }
        k = j + 1;
      }
      i += 1;
    }
    b = false;
    e = j;
  }
  
  public int a()
  {
    if (b) {
      d();
    }
    return e;
  }
  
  public E a(long paramLong)
  {
    return (E)b(paramLong);
  }
  
  public void a(int paramInt)
  {
    if (d[paramInt] != a)
    {
      d[paramInt] = a;
      b = true;
    }
  }
  
  public void a(long paramLong, E paramE)
  {
    int i = hs.a(c, e, paramLong);
    if (i >= 0)
    {
      d[i] = paramE;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < e) && (d[j] == a))
    {
      c[j] = paramLong;
      d[j] = paramE;
      return;
    }
    i = j;
    if (b)
    {
      i = j;
      if (e >= c.length)
      {
        d();
        i = hs.a(c, e, paramLong) ^ 0xFFFFFFFF;
      }
    }
    if (e >= c.length)
    {
      j = hs.b(e + 1);
      long[] arrayOfLong = new long[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(c, 0, arrayOfLong, 0, c.length);
      System.arraycopy(d, 0, arrayOfObject, 0, d.length);
      c = arrayOfLong;
      d = arrayOfObject;
    }
    if (e - i != 0)
    {
      System.arraycopy(c, i, c, i + 1, e - i);
      System.arraycopy(d, i, d, i + 1, e - i);
    }
    c[i] = paramLong;
    d[i] = paramE;
    e += 1;
  }
  
  public E b(int paramInt)
  {
    if (b) {
      d();
    }
    return (E)d[paramInt];
  }
  
  public E b()
  {
    Object localObject;
    int i = hs.a(c, e, localObject);
    if ((i < 0) || (d[i] == a)) {
      return null;
    }
    return (E)d[i];
  }
  
  public void b()
  {
    int j = e;
    Object[] arrayOfObject = d;
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = null;
      i += 1;
    }
    e = 0;
    b = false;
  }
  
  public void b(long paramLong, E paramE)
  {
    if ((e != 0) && (paramLong <= c[(e - 1)]))
    {
      a(paramLong, paramE);
      return;
    }
    if ((b) && (e >= c.length)) {
      d();
    }
    int i = e;
    if (i >= c.length)
    {
      int j = hs.b(i + 1);
      long[] arrayOfLong = new long[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(c, 0, arrayOfLong, 0, c.length);
      System.arraycopy(d, 0, arrayOfObject, 0, d.length);
      c = arrayOfLong;
      d = arrayOfObject;
    }
    c[i] = paramLong;
    d[i] = paramE;
    e = (i + 1);
  }
  
  public void c(long paramLong)
  {
    int i = hs.a(c, e, paramLong);
    if ((i >= 0) && (d[i] != a))
    {
      d[i] = a;
      b = true;
    }
  }
  
  public String toString()
  {
    if (a() <= 0) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(e * 28);
    localStringBuilder.append('{');
    int i = 0;
    if (i < e)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(c(i));
      localStringBuilder.append('=');
      Object localObject = b(i);
      if (localObject != this) {
        localStringBuilder.append(localObject);
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("(this Map)");
      }
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     hu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */