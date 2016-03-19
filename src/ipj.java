import java.io.InputStream;
import java.nio.ByteBuffer;

public final class ipj
  extends InputStream
{
  private final ByteBuffer a;
  private int b = 0;
  
  public ipj(ByteBuffer paramByteBuffer)
  {
    a = paramByteBuffer;
  }
  
  public int available()
  {
    return a.remaining();
  }
  
  public void mark(int paramInt)
  {
    b = a.position();
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
    return a.get() & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (a.hasRemaining())
    {
      paramInt2 = Math.min(a.remaining(), paramInt2);
      a.get(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt2;
    }
    return -1;
  }
  
  public void reset()
  {
    a.position(b);
  }
  
  public long skip(long paramLong)
  {
    int i = (int)Math.min(paramLong, a.remaining());
    a.position(a.position() + i);
    return i;
  }
}

/* Location:
 * Qualified Name:     ipj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */