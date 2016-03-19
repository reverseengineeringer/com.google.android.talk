public final class apd<A, B>
{
  private final avn<apf<A>, B> a;
  
  public apd()
  {
    this(250);
  }
  
  public apd(int paramInt)
  {
    a = new ape(this, paramInt);
  }
  
  public B a(A paramA, int paramInt1, int paramInt2)
  {
    paramA = apf.a(paramA, paramInt1, paramInt2);
    Object localObject = a.b(paramA);
    paramA.a();
    return (B)localObject;
  }
  
  public void a(A paramA, int paramInt1, int paramInt2, B paramB)
  {
    paramA = apf.a(paramA, paramInt1, paramInt2);
    a.b(paramA, paramB);
  }
}

/* Location:
 * Qualified Name:     apd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */