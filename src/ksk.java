final class ksk
  extends ksf<E>
{
  final transient int a;
  final transient int b;
  
  ksk(ksf paramksf, int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public ksf<E> a(int paramInt1, int paramInt2)
  {
    fii.a(paramInt1, paramInt2, b);
    return c.a(a + paramInt1, a + paramInt2);
  }
  
  boolean e()
  {
    return true;
  }
  
  public E get(int paramInt)
  {
    fii.a(paramInt, b);
    return (E)c.get(a + paramInt);
  }
  
  public int size()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     ksk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */