public final class kxt<E>
  extends kth<E>
{
  public static final kxt<Object> a = new kxt(kxi.a, 0, null, 0);
  final transient Object[] b;
  private final transient Object[] c;
  private final transient int d;
  private final transient int e;
  
  kxt(Object[] paramArrayOfObject1, int paramInt1, Object[] paramArrayOfObject2, int paramInt2)
  {
    c = paramArrayOfObject1;
    b = paramArrayOfObject2;
    d = paramInt2;
    e = paramInt1;
  }
  
  boolean Z_()
  {
    return true;
  }
  
  int a(Object[] paramArrayOfObject, int paramInt)
  {
    System.arraycopy(c, 0, paramArrayOfObject, paramInt, c.length);
    return c.length + paramInt;
  }
  
  public kyp<E> a()
  {
    return kty.a(c);
  }
  
  public boolean contains(Object paramObject)
  {
    Object[] arrayOfObject = b;
    if ((paramObject == null) || (arrayOfObject == null)) {
      return false;
    }
    int i;
    if (paramObject == null)
    {
      i = 0;
      label21:
      i = krt.a(i);
    }
    for (;;)
    {
      i &= d;
      Object localObject = arrayOfObject[i];
      if (localObject == null) {
        break;
      }
      if (localObject.equals(paramObject))
      {
        return true;
        i = paramObject.hashCode();
        break label21;
      }
      i += 1;
    }
  }
  
  boolean e()
  {
    return false;
  }
  
  ksf<E> g()
  {
    if (b == null) {
      return kxr.a;
    }
    return new kxl(this, c);
  }
  
  public int hashCode()
  {
    return e;
  }
  
  public int size()
  {
    return c.length;
  }
}

/* Location:
 * Qualified Name:     kxt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */