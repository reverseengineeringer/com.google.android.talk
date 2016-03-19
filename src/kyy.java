import java.io.InputStream;
import java.io.OutputStream;

public abstract class kyy
{
  public long a(kyx paramkyx)
  {
    fii.a(paramkyx);
    kzc localkzc = new kzc(kzc.a);
    try
    {
      long l = kyz.a((InputStream)localkzc.a(a()), (OutputStream)localkzc.a(paramkyx.a()));
      return l;
    }
    catch (Throwable paramkyx)
    {
      throw localkzc.a(paramkyx);
    }
    finally
    {
      localkzc.close();
    }
  }
  
  public abstract InputStream a();
}

/* Location:
 * Qualified Name:     kyy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */