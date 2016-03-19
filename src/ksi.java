final class ksi<E>
  extends ksf<E>
{
  private final transient ksf<E> a;
  
  ksi(ksf<E> paramksf)
  {
    a = paramksf;
  }
  
  private int b(int paramInt)
  {
    return size() - 1 - paramInt;
  }
  
  public ksf<E> a(int paramInt1, int paramInt2)
  {
    fii.a(paramInt1, paramInt2, size());
    return a.a(size() - paramInt2, size() - paramInt1).d();
  }
  
  public boolean contains(Object paramObject)
  {
    return a.contains(paramObject);
  }
  
  public ksf<E> d()
  {
    return a;
  }
  
  boolean e()
  {
    return a.e();
  }
  
  public E get(int paramInt)
  {
    fii.a(paramInt, size());
    return (E)a.get(b(paramInt));
  }
  
  public int indexOf(Object paramObject)
  {
    int i = a.lastIndexOf(paramObject);
    if (i >= 0) {
      return b(i);
    }
    return -1;
  }
  
  public int lastIndexOf(Object paramObject)
  {
    int i = a.indexOf(paramObject);
    if (i >= 0) {
      return b(i);
    }
    return -1;
  }
  
  public int size()
  {
    return a.size();
  }
}

/* Location:
 * Qualified Name:     ksi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */