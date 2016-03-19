import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class arr
{
  private final ByteBuffer a;
  
  public arr(byte[] paramArrayOfByte, int paramInt)
  {
    a = ((ByteBuffer)ByteBuffer.wrap(paramArrayOfByte).order(ByteOrder.BIG_ENDIAN).limit(paramInt));
  }
  
  public int a()
  {
    return a.remaining();
  }
  
  public int a(int paramInt)
  {
    return a.getInt(paramInt);
  }
  
  public void a(ByteOrder paramByteOrder)
  {
    a.order(paramByteOrder);
  }
  
  public short b(int paramInt)
  {
    return a.getShort(paramInt);
  }
}

/* Location:
 * Qualified Name:     arr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */