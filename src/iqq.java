import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

final class iqq
  extends FilterInputStream
{
  private long b = 0L;
  
  public iqq(iqp paramiqp, InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  private void a()
  {
    long l1 = a.getContentLength();
    if (l1 == -1L) {}
    while ((b == 0L) || (b >= l1)) {
      return;
    }
    long l2 = b;
    throw new IOException(102 + "Connection closed prematurely: bytesRead = " + l2 + ", Content-Length = " + l1);
  }
  
  public int read()
  {
    int i = in.read();
    if (i == -1)
    {
      a();
      return i;
    }
    b += 1L;
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt1 = in.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt1 == -1)
    {
      a();
      return paramInt1;
    }
    b += paramInt1;
    return paramInt1;
  }
}

/* Location:
 * Qualified Name:     iqq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */