import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class ish
  implements isq
{
  private final isq a;
  private final int b;
  private final Level c;
  private final Logger d;
  
  public ish(isq paramisq, Logger paramLogger, Level paramLevel, int paramInt)
  {
    a = paramisq;
    d = paramLogger;
    c = paramLevel;
    b = paramInt;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    isg localisg = new isg(paramOutputStream, d, c, b);
    try
    {
      a.writeTo(localisg);
      a.close();
      paramOutputStream.flush();
      return;
    }
    finally
    {
      a.close();
    }
  }
}

/* Location:
 * Qualified Name:     ish
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */