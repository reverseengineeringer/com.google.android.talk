final class kyb<E>
  extends kth<E>
{
  final transient E a;
  private transient int b;
  
  kyb(E paramE)
  {
    a = fii.a(paramE);
  }
  
  kyb(E paramE, int paramInt)
  {
    a = paramE;
    b = paramInt;
  }
  
  boolean Z_()
  {
    return b != 0;
  }
  
  int a(Object[] paramArrayOfObject, int paramInt)
  {
    paramArrayOfObject[paramInt] = a;
    return paramInt + 1;
  }
  
  public kyp<E> a()
  {
    return kty.a(a);
  }
  
  public boolean contains(Object paramObject)
  {
    return a.equals(paramObject);
  }
  
  boolean e()
  {
    return false;
  }
  
  public final int hashCode()
  {
    int j = b;
    int i = j;
    if (j == 0)
    {
      i = a.hashCode();
      b = i;
    }
    return i;
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
 * Qualified Name:     kyb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */