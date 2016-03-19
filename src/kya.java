final class kya<E>
  extends ksf<E>
{
  final transient E a;
  
  kya(E paramE)
  {
    a = fii.a(paramE);
  }
  
  public ksf<E> a(int paramInt1, int paramInt2)
  {
    fii.a(paramInt1, paramInt2, 1);
    Object localObject = this;
    if (paramInt1 == paramInt2) {
      localObject = kxr.a;
    }
    return (ksf<E>)localObject;
  }
  
  public kyp<E> a()
  {
    return kty.a(a);
  }
  
  boolean e()
  {
    return false;
  }
  
  public E get(int paramInt)
  {
    fii.a(paramInt, 1);
    return (E)a;
  }
  
  public int size()
  {
    return 1;
  }
  
  public String toString()
  {
    String str = a.toString();
    return str.length() + 2 + '[' + str + ']';
  }
}

/* Location:
 * Qualified Name:     kya
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */