public class dqx
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final String g;
  private final boolean h;
  private final int i;
  
  private dqx(mgn parammgn)
  {
    i = aal.a(d, 0);
    if ((aal.a(b, 0) == 1) && (c != null) && (c.c != null)) {
      parammgn = c.c;
    }
    while (parammgn != null)
    {
      g = c;
      if (aal.a(a, 0L) == 0L)
      {
        h = true;
        return;
        parammgn = a;
      }
      else
      {
        h = false;
        return;
      }
    }
    g = null;
    h = false;
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      paramArrayOfByte = (mgn)lyi.b(new mgn(), paramArrayOfByte, paramArrayOfByte.length);
      if (paramArrayOfByte != null) {
        return new dqx(paramArrayOfByte);
      }
    }
    return null;
  }
  
  public String k()
  {
    return g;
  }
  
  public boolean l()
  {
    return h;
  }
  
  public int m()
  {
    return i;
  }
  
  public boolean n()
  {
    return i == 0;
  }
}

/* Location:
 * Qualified Name:     dqx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */