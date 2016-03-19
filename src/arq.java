import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class arq
  implements ars
{
  private final ByteBuffer a;
  
  public arq(ByteBuffer paramByteBuffer)
  {
    a = paramByteBuffer;
    paramByteBuffer.order(ByteOrder.BIG_ENDIAN);
  }
  
  public int a()
  {
    return c() << 8 & 0xFF00 | c() & 0xFF;
  }
  
  public int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = Math.min(paramInt, a.remaining());
    a.get(paramArrayOfByte, 0, paramInt);
    return i;
  }
  
  public long a(long paramLong)
  {
    int i = (int)Math.min(a.remaining(), paramLong);
    a.position(a.position() + i);
    return i;
  }
  
  public short b()
  {
    return (short)(c() & 0xFF);
  }
  
  public int c()
  {
    if (a.remaining() <= 0) {
      return -1;
    }
    return a.get();
  }
}

/* Location:
 * Qualified Name:     arq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */