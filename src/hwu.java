import java.io.InputStream;
import java.nio.ByteBuffer;

final class hwu
  extends InputStream
{
  private ByteBuffer a;
  
  public hwu(ByteBuffer paramByteBuffer)
  {
    a = paramByteBuffer;
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
    if (!a.hasRemaining()) {
      return -1;
    }
    paramInt2 = Math.min(paramInt2, a.remaining());
    a.get(paramArrayOfByte, paramInt1, paramInt2);
    return paramInt2;
  }
}

/* Location:
 * Qualified Name:     hwu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */