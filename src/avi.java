import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

final class avi
  extends InputStream
{
  private final ByteBuffer a;
  private int b = -1;
  
  public avi(ByteBuffer paramByteBuffer)
  {
    a = paramByteBuffer;
  }
  
  public int available()
  {
    return a.remaining();
  }
  
  public void mark(int paramInt)
  {
    try
    {
      b = a.position();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean markSupported()
  {
    return true;
  }
  
  public int read()
  {
    if (!a.hasRemaining()) {
      return -1;
    }
    return a.get();
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!a.hasRemaining()) {
      return -1;
    }
    paramInt2 = Math.min(paramInt2, available());
    a.get(paramArrayOfByte, paramInt1, paramInt2);
    return paramInt2;
  }
  
  public void reset()
  {
    try
    {
      if (b == -1) {
        throw new IOException("Cannot reset to unset mark position");
      }
    }
    finally {}
    a.position(b);
  }
  
  public long skip(long paramLong)
  {
    if (!a.hasRemaining()) {
      return -1L;
    }
    paramLong = Math.min(paramLong, available());
    a.position((int)(a.position() + paramLong));
    return paramLong;
  }
}

/* Location:
 * Qualified Name:     avi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */