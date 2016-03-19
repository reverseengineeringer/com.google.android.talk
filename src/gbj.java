final class gbj
  implements Cloneable
{
  private static final gbk a = new gbk();
  private boolean b = false;
  private int[] c;
  private gbk[] d;
  private int e;
  
  public gbj()
  {
    this(10);
  }
  
  private gbj(int paramInt)
  {
    paramInt = c(paramInt);
    c = new int[paramInt];
    d = new gbk[paramInt];
    e = 0;
  }
  
  private static int c(int paramInt)
  {
    int j = paramInt << 2;
    paramInt = 4;
    for (;;)
    {
      int i = j;
      if (paramInt < 32)
      {
        if (j <= (1 << paramInt) - 12) {
          i = (1 << paramInt) - 12;
        }
      }
      else {
        return i / 4;
      }
      paramInt += 1;
    }
  }
  
  private int d(int paramInt)
  {
    int j = e;
    int i = 0;
    j -= 1;
    while (i <= j)
    {
      int k = i + j >>> 1;
      int m = c[k];
      if (m < paramInt)
      {
        i = k + 1;
      }
      else
      {
        j = k;
        if (m <= paramInt) {
          return j;
        }
        j = k - 1;
      }
    }
    j = i ^ 0xFFFFFFFF;
    return j;
  }
  
  private void d()
  {
    int m = e;
    int[] arrayOfInt = c;
    gbk[] arrayOfgbk = d;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      gbk localgbk = arrayOfgbk[i];
      k = j;
      if (localgbk != a)
      {
        if (i != j)
        {
          arrayOfInt[j] = arrayOfInt[i];
          arrayOfgbk[j] = localgbk;
          arrayOfgbk[i] = null;
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
  
  public gbk a(int paramInt)
  {
    paramInt = d(paramInt);
    if ((paramInt < 0) || (d[paramInt] == a)) {
      return null;
    }
    return d[paramInt];
  }
  
  public void a(int paramInt, gbk paramgbk)
  {
    int i = d(paramInt);
    if (i >= 0)
    {
      d[i] = paramgbk;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < e) && (d[j] == a))
    {
      c[j] = paramInt;
      d[j] = paramgbk;
      return;
    }
    i = j;
    if (b)
    {
      i = j;
      if (e >= c.length)
      {
        d();
        i = d(paramInt) ^ 0xFFFFFFFF;
      }
    }
    if (e >= c.length)
    {
      j = c(e + 1);
      int[] arrayOfInt = new int[j];
      gbk[] arrayOfgbk = new gbk[j];
      System.arraycopy(c, 0, arrayOfInt, 0, c.length);
      System.arraycopy(d, 0, arrayOfgbk, 0, d.length);
      c = arrayOfInt;
      d = arrayOfgbk;
    }
    if (e - i != 0)
    {
      System.arraycopy(c, i, c, i + 1, e - i);
      System.arraycopy(d, i, d, i + 1, e - i);
    }
    c[i] = paramInt;
    d[i] = paramgbk;
    e += 1;
  }
  
  public gbk b(int paramInt)
  {
    if (b) {
      d();
    }
    return d[paramInt];
  }
  
  public boolean b()
  {
    return a() == 0;
  }
  
  public final gbj c()
  {
    int i = 0;
    int j = a();
    gbj localgbj = new gbj(j);
    System.arraycopy(c, 0, c, 0, j);
    while (i < j)
    {
      if (d[i] != null) {
        d[i] = d[i].b();
      }
      i += 1;
    }
    e = j;
    return localgbj;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    label71:
    label93:
    label131:
    label138:
    label141:
    for (;;)
    {
      return true;
      if (!(paramObject instanceof gbj)) {
        return false;
      }
      paramObject = (gbj)paramObject;
      if (a() != ((gbj)paramObject).a()) {
        return false;
      }
      Object localObject = c;
      int[] arrayOfInt = c;
      int j = e;
      int i = 0;
      if (i < j) {
        if (localObject[i] != arrayOfInt[i])
        {
          i = 0;
          if (i != 0)
          {
            localObject = d;
            paramObject = d;
            j = e;
            i = 0;
            if (i >= j) {
              break label138;
            }
            if (localObject[i].equals(paramObject[i])) {
              break label131;
            }
          }
        }
      }
      for (i = 0;; i = 1)
      {
        if (i != 0) {
          break label141;
        }
        return false;
        i += 1;
        break;
        i = 1;
        break label71;
        i += 1;
        break label93;
      }
    }
  }
  
  public int hashCode()
  {
    if (b) {
      d();
    }
    int j = 17;
    int i = 0;
    while (i < e)
    {
      j = (j * 31 + c[i]) * 31 + d[i].hashCode();
      i += 1;
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     gbj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */