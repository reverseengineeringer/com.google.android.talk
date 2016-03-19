public class dsu
  extends dqf
{
  private static final long serialVersionUID = 2L;
  private Boolean g;
  private Boolean h;
  
  private dsu(keq paramkeq)
  {
    super(responseHeader, 0L);
    paramkeq = a;
    int j = paramkeq.length;
    int i = 0;
    if (i < j)
    {
      Object localObject = paramkeq[i];
      if ((b != null) && (a != null)) {
        switch (aal.a(a, 0))
        {
        }
      }
      for (;;)
      {
        i += 1;
        break;
        g = Boolean.valueOf(aal.a(b, false));
        continue;
        h = Boolean.valueOf(aal.a(b, false));
      }
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (keq)lyi.b(new keq(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsu(paramArrayOfByte);
  }
  
  public Boolean k()
  {
    return g;
  }
  
  public Boolean l()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     dsu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */