import java.util.Arrays;

public final class lxf
{
  static final lxf a = new lxf(0, new int[0], new Object[0], false);
  private int b;
  private int[] c;
  private Object[] d;
  private int e = -1;
  private boolean f;
  
  lxf()
  {
    this(0, new int[8], new Object[8], true);
  }
  
  private lxf(int paramInt, int[] paramArrayOfInt, Object[] paramArrayOfObject, boolean paramBoolean)
  {
    b = paramInt;
    c = paramArrayOfInt;
    d = paramArrayOfObject;
    f = paramBoolean;
  }
  
  static lxf a(lxf paramlxf1, lxf paramlxf2)
  {
    int i = b + b;
    int[] arrayOfInt = Arrays.copyOf(c, i);
    System.arraycopy(c, 0, arrayOfInt, b, b);
    Object[] arrayOfObject = Arrays.copyOf(d, i);
    System.arraycopy(d, 0, arrayOfObject, b, b);
    return new lxf(i, arrayOfInt, arrayOfObject, true);
  }
  
  private void a(int paramInt, Object paramObject)
  {
    if (b == c.length) {
      if (b >= 4) {
        break label85;
      }
    }
    label85:
    for (int i = 8;; i = b >> 1)
    {
      i += b;
      c = Arrays.copyOf(c, i);
      d = Arrays.copyOf(d, i);
      c[b] = paramInt;
      d[b] = paramObject;
      b += 1;
      return;
    }
  }
  
  private void c()
  {
    if (!f) {
      throw new UnsupportedOperationException();
    }
  }
  
  lxf a(int paramInt1, int paramInt2)
  {
    c();
    if (paramInt1 == 0) {
      throw new IllegalArgumentException("Zero is not a valid field number.");
    }
    a(paramInt1 << 3, Long.valueOf(paramInt2));
    return this;
  }
  
  public void a()
  {
    f = false;
  }
  
  public final void a(StringBuilder paramStringBuilder, int paramInt)
  {
    int i = 0;
    while (i < b)
    {
      aal.a(paramStringBuilder, paramInt, String.valueOf(c[i] >>> 3), d[i]);
      i += 1;
    }
  }
  
  public void a(lvq paramlvq)
  {
    int i = 0;
    if (i < b)
    {
      int j = c[i];
      int k = j >>> 3;
      switch (j & 0x7)
      {
      case 4: 
      default: 
        throw lwk.d();
      case 0: 
        paramlvq.b(k, ((Long)d[i]).longValue());
      }
      for (;;)
      {
        i += 1;
        break;
        paramlvq.c(k, ((Integer)d[i]).intValue());
        continue;
        paramlvq.c(k, ((Long)d[i]).longValue());
        continue;
        paramlvq.a(k, (lvk)d[i]);
        continue;
        paramlvq.a(k, 3);
        ((lxf)d[i]).a(paramlvq);
        paramlvq.a(k, 4);
      }
    }
  }
  
  boolean a(int paramInt, lvp paramlvp)
  {
    c();
    switch (paramInt & 0x7)
    {
    default: 
      throw lwk.d();
    case 0: 
      a(paramInt, Long.valueOf(paramlvp.e()));
      return true;
    case 5: 
      a(paramInt, Integer.valueOf(paramlvp.h()));
      return true;
    case 1: 
      a(paramInt, Long.valueOf(paramlvp.g()));
      return true;
    case 2: 
      a(paramInt, paramlvp.l());
      return true;
    case 3: 
      lxf locallxf = new lxf();
      int i;
      do
      {
        i = paramlvp.a();
      } while ((i != 0) && (locallxf.a(i, paramlvp)));
      paramlvp.a(paramInt >>> 3 << 3 | 0x4);
      a(paramInt, locallxf);
      return true;
    }
    return false;
  }
  
  public int b()
  {
    int i = e;
    if (i != -1) {
      return i;
    }
    int j = 0;
    i = 0;
    if (j < b)
    {
      int k = c[j];
      int m = k >>> 3;
      switch (k & 0x7)
      {
      case 4: 
      default: 
        throw new IllegalStateException(lwk.d());
      case 0: 
        i += lvq.e(m, ((Long)d[j]).longValue());
      }
      for (;;)
      {
        j += 1;
        break;
        ((Integer)d[j]).intValue();
        i += lvq.h(m);
        continue;
        ((Long)d[j]).longValue();
        i += lvq.i(m);
        continue;
        i += lvq.b(m, (lvk)d[j]);
        continue;
        k = lvq.m(m);
        i += ((lxf)d[j]).b() + (k << 1);
      }
    }
    e = i;
    return i;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof lxf)) {
        return false;
      }
      paramObject = (lxf)paramObject;
    } while ((b == b) && (Arrays.equals(c, c)) && (Arrays.deepEquals(d, d)));
    return false;
  }
  
  public int hashCode()
  {
    return ((b + 527) * 31 + Arrays.hashCode(c)) * 31 + Arrays.deepHashCode(d);
  }
}

/* Location:
 * Qualified Name:     lxf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */