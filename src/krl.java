final class krl<E>
  extends ktu<E>
{
  private final ktu<E> c;
  
  krl(ktu<E> paramktu)
  {
    super(kxj.a(paramktu.comparator()).c());
    c = paramktu;
  }
  
  int a(Object paramObject)
  {
    int i = c.a(paramObject);
    if (i == -1) {
      return i;
    }
    return size() - 1 - i;
  }
  
  ktu<E> a(E paramE, boolean paramBoolean)
  {
    return c.d(paramE, paramBoolean).b();
  }
  
  ktu<E> a(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2)
  {
    return c.b(paramE2, paramBoolean2, paramE1, paramBoolean1).b();
  }
  
  public kyp<E> a()
  {
    return c.c();
  }
  
  public ktu<E> b()
  {
    return c;
  }
  
  ktu<E> b(E paramE, boolean paramBoolean)
  {
    return c.c(paramE, paramBoolean).b();
  }
  
  public kyp<E> c()
  {
    return c.a();
  }
  
  public E ceiling(E paramE)
  {
    return (E)c.floor(paramE);
  }
  
  public boolean contains(Object paramObject)
  {
    return c.contains(paramObject);
  }
  
  ktu<E> d()
  {
    throw new AssertionError("should never be called");
  }
  
  boolean e()
  {
    return c.e();
  }
  
  public E floor(E paramE)
  {
    return (E)c.ceiling(paramE);
  }
  
  public E higher(E paramE)
  {
    return (E)c.lower(paramE);
  }
  
  public E lower(E paramE)
  {
    return (E)c.higher(paramE);
  }
  
  public int size()
  {
    return c.size();
  }
}

/* Location:
 * Qualified Name:     krl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */