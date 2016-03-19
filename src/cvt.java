import java.io.Closeable;
import java.io.InputStream;

public final class cvt
  implements Closeable
{
  private final String b;
  private final long c;
  private final InputStream[] d;
  
  cvt(cvo paramcvo, String paramString, long paramLong, InputStream[] paramArrayOfInputStream)
  {
    b = paramString;
    c = paramLong;
    d = paramArrayOfInputStream;
  }
  
  public InputStream a()
  {
    return d[0];
  }
  
  public void close()
  {
    InputStream[] arrayOfInputStream = d;
    int j = arrayOfInputStream.length;
    int i = 0;
    while (i < j)
    {
      cvo.a(arrayOfInputStream[i]);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     cvt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */