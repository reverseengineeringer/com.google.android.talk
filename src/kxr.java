public final class kxr<E>
  extends ksf<E>
{
  public static final ksf<Object> a = new kxr(kxi.a);
  private final transient int b;
  private final transient int c;
  private final transient Object[] d;
  
  kxr(Object[] paramArrayOfObject)
  {
    this(paramArrayOfObject, 0, paramArrayOfObject.length);
  }
  
  private kxr(Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    b = paramInt1;
    c = paramInt2;
    d = paramArrayOfObject;
  }
  
  int a(Object[] paramArrayOfObject, int paramInt)
  {
    System.arraycopy(d, b, paramArrayOfObject, paramInt, c);
    return c + paramInt;
  }
  
  public kyq<E> a(int paramInt)
  {
    return kty.a(d, b, c, paramInt);
  }
  
  ksf<E> b(int paramInt1, int paramInt2)
  {
    return new kxr(d, b + paramInt1, paramInt2 - paramInt1);
  }
  
  boolean e()
  {
    return c != d.length;
  }
  
  public E get(int paramInt)
  {
    fii.a(paramInt, c);
    return (E)d[(b + paramInt)];
  }
  
  public int size()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     kxr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */