class ksa<E>
  extends ksb<E>
{
  Object[] a;
  int b;
  
  ksa(int paramInt)
  {
    aal.c(4, "initialCapacity");
    a = new Object[4];
    b = 0;
  }
  
  private void a(int paramInt)
  {
    if (a.length < paramInt) {
      a = kxi.a(a, a(a.length, paramInt));
    }
  }
  
  public ksa<E> a(E paramE)
  {
    fii.a(paramE);
    a(b + 1);
    Object[] arrayOfObject = a;
    int i = b;
    b = (i + 1);
    arrayOfObject[i] = paramE;
    return this;
  }
  
  public ksb<E> a(E... paramVarArgs)
  {
    kxi.b(paramVarArgs, paramVarArgs.length);
    a(b + paramVarArgs.length);
    System.arraycopy(paramVarArgs, 0, a, b, paramVarArgs.length);
    b += paramVarArgs.length;
    return this;
  }
}

/* Location:
 * Qualified Name:     ksa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */