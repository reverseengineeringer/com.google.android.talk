class kxl<E>
  extends kru<E>
{
  private final krz<E> a;
  private final ksf<? extends E> b;
  
  kxl(krz<E> paramkrz, ksf<? extends E> paramksf)
  {
    a = paramkrz;
    b = paramksf;
  }
  
  kxl(krz<E> paramkrz, Object[] paramArrayOfObject)
  {
    this(paramkrz, ksf.b(paramArrayOfObject, paramArrayOfObject.length));
  }
  
  int a(Object[] paramArrayOfObject, int paramInt)
  {
    return b.a(paramArrayOfObject, paramInt);
  }
  
  public kyq<E> a(int paramInt)
  {
    return b.a(paramInt);
  }
  
  krz<E> b()
  {
    return a;
  }
  
  public E get(int paramInt)
  {
    return (E)b.get(paramInt);
  }
}

/* Location:
 * Qualified Name:     kxl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */