public final class ecr
  extends dyx
{
  private final String a;
  private final String e;
  private final int f;
  
  public ecr(bfd parambfd, String paramString1, String paramString2, int paramInt)
  {
    super(parambfd);
    a = paramString1;
    e = paramString2;
    f = paramInt;
  }
  
  public void p_()
  {
    Object localObject1 = a;
    String str = e;
    int i = f;
    new StringBuilder(String.valueOf(localObject1).length() + 40 + String.valueOf(str).length()).append("SetMessageFailedOperation: ").append((String)localObject1).append(" ").append(str).append(" ").append(i);
    localObject1 = new bfz(aal.oJ, b.a);
    ((bfz)localObject1).a();
    try
    {
      bft.a((bfz)localObject1, a, e, emc.d, f);
      ((bfz)localObject1).b(a, e);
      ((bfz)localObject1).b();
      return;
    }
    finally
    {
      ((bfz)localObject1).c();
    }
  }
}

/* Location:
 * Qualified Name:     ecr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */