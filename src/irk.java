import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class irk
  extends FilterInputStream
{
  private long a;
  private long b = -1L;
  
  public irk(InputStream paramInputStream, long paramLong)
  {
    super(paramInputStream);
    fii.a(paramInputStream);
    if (paramLong >= 0L) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool, "limit must be non-negative");
      a = paramLong;
      return;
    }
  }
  
  public int available()
  {
    return (int)Math.min(in.available(), a);
  }
  
  public void mark(int paramInt)
  {
    try
    {
      in.mark(paramInt);
      b = a;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int read()
  {
    if (a == 0L) {
      return -1;
    }
    int i = in.read();
    if (i != -1) {
      a -= 1L;
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (a == 0L) {
      return -1;
    }
    paramInt2 = (int)Math.min(paramInt2, a);
    paramInt1 = in.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt1 != -1) {
      a -= paramInt1;
    }
    return paramInt1;
  }
  
  public void reset()
  {
    try
    {
      if (!in.markSupported()) {
        throw new IOException("Mark not supported");
      }
    }
    finally {}
    if (b == -1L) {
      throw new IOException("Mark not set");
    }
    in.reset();
    a = b;
  }
  
  public long skip(long paramLong)
  {
    paramLong = Math.min(paramLong, a);
    paramLong = in.skip(paramLong);
    a -= paramLong;
    return paramLong;
  }
}

/* Location:
 * Qualified Name:     irk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */