import java.io.OutputStream;

class lvo
  extends lvn
{
  private static final long serialVersionUID = 1L;
  public final byte[] c;
  
  lvo(byte[] paramArrayOfByte)
  {
    c = paramArrayOfByte;
  }
  
  public byte a(int paramInt)
  {
    return c[paramInt];
  }
  
  public final lvk a(int paramInt1, int paramInt2)
  {
    paramInt1 = a(0, paramInt2, b());
    if (paramInt1 == 0) {
      return lvk.a;
    }
    return new lvl(c, d(), paramInt1);
  }
  
  final void a(OutputStream paramOutputStream, int paramInt1, int paramInt2)
  {
    paramOutputStream.write(c, d() + paramInt1, paramInt2);
  }
  
  public int b()
  {
    return c.length;
  }
  
  protected final int b(int paramInt1, int paramInt2)
  {
    return lwg.a(paramInt1, c, d(), paramInt2);
  }
  
  protected void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    System.arraycopy(c, paramInt1, paramArrayOfByte, paramInt2, paramInt3);
  }
  
  public final lvp c()
  {
    return lvp.a(c, d(), b(), true);
  }
  
  protected int d()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof lvk)) {
      return false;
    }
    if (b() != ((lvk)paramObject).b()) {
      return false;
    }
    if (b() == 0) {
      return true;
    }
    if ((paramObject instanceof lvo))
    {
      Object localObject = (lvo)paramObject;
      int i = b;
      int j = b;
      if ((i != 0) && (j != 0) && (i != j)) {
        return false;
      }
      paramObject = (lvo)paramObject;
      int k = b();
      if (k > ((lvk)paramObject).b())
      {
        i = b();
        throw new IllegalArgumentException(40 + "Length too large: " + k + i);
      }
      if (k > ((lvk)paramObject).b())
      {
        i = ((lvk)paramObject).b();
        throw new IllegalArgumentException(59 + "Ran off end of other: 0, " + k + ", " + i);
      }
      if ((paramObject instanceof lvo))
      {
        paramObject = (lvo)paramObject;
        localObject = c;
        byte[] arrayOfByte = c;
        int m = d();
        j = d();
        i = ((lvo)paramObject).d();
        while (j < m + k)
        {
          if (localObject[j] != arrayOfByte[i]) {
            return false;
          }
          j += 1;
          i += 1;
        }
        return true;
      }
      return ((lvk)paramObject).a(0, k).equals(a(0, k));
    }
    return paramObject.equals(this);
  }
}

/* Location:
 * Qualified Name:     lvo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */