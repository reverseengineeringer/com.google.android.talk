import java.security.MessageDigest;

public final class anj
{
  private final avn<aiw, String> a = new avn(1000);
  private final ic<anl> b = avs.a(10, new ank(this));
  
  private String b(aiw paramaiw)
  {
    anl localanl = (anl)b.a();
    try
    {
      paramaiw.a(a);
      paramaiw = avq.a(a.digest());
      return paramaiw;
    }
    finally
    {
      b.a(localanl);
    }
  }
  
  public String a(aiw paramaiw)
  {
    synchronized (a)
    {
      ??? = (String)a.b(paramaiw);
      ??? = ???;
      if (??? == null) {
        ??? = b(paramaiw);
      }
    }
    synchronized (a)
    {
      a.b(paramaiw, ???);
      return (String)???;
      paramaiw = finally;
      throw paramaiw;
    }
  }
}

/* Location:
 * Qualified Name:     anj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */