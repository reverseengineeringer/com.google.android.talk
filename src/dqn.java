public class dqn
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final long g;
  private final String[] h;
  
  public dqn(jyo paramjyo)
  {
    super(responseHeader, 0L);
    if (dqf.a)
    {
      localObject = String.valueOf(paramjyo);
      new StringBuilder(String.valueOf(localObject).length() + 32).append("DeleteConversationResponse from:").append((String)localObject);
    }
    Object localObject = null;
    long l;
    if (a != null)
    {
      if (aal.a(a.a, 0) == 2) {
        localObject = a.d;
      }
      if (a.c != null)
      {
        l = aal.a(a.c, 0L);
        paramjyo = (jyo)localObject;
      }
    }
    for (;;)
    {
      g = l;
      h = paramjyo;
      return;
      paramjyo = (jyo)localObject;
      l = -1L;
      continue;
      paramjyo = null;
      l = -1L;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (jyo)lyi.b(new jyo(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dqn(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    parambfz.a();
    try
    {
      new dwl(b).c, g, h).a(parambfz);
      parambfz.b();
      return;
    }
    finally
    {
      parambfz.c();
    }
  }
}

/* Location:
 * Qualified Name:     dqn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */