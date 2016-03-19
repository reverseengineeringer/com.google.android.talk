import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.util.concurrent.atomic.AtomicBoolean;

final class mpa
  implements ReadableByteChannel
{
  private final InputStream a;
  private final AtomicBoolean b = new AtomicBoolean(true);
  
  private mpa(InputStream paramInputStream)
  {
    a = paramInputStream;
  }
  
  static ReadableByteChannel a(InputStream paramInputStream)
  {
    if ((paramInputStream instanceof FileInputStream)) {
      return ((FileInputStream)paramInputStream).getChannel();
    }
    return new mpa(paramInputStream);
  }
  
  public void close()
  {
    if (b.compareAndSet(true, false)) {
      a.close();
    }
  }
  
  public boolean isOpen()
  {
    return b.get();
  }
  
  public int read(ByteBuffer paramByteBuffer)
  {
    int j;
    int i;
    if (paramByteBuffer.hasArray())
    {
      j = a.read(paramByteBuffer.array(), paramByteBuffer.arrayOffset() + paramByteBuffer.position(), paramByteBuffer.remaining());
      i = j;
      if (j > 0)
      {
        paramByteBuffer.position(paramByteBuffer.position() + j);
        i = j;
      }
    }
    byte[] arrayOfByte;
    do
    {
      return i;
      arrayOfByte = new byte[Math.min(16384, Math.min(Math.max(a.available(), 4096), paramByteBuffer.remaining()))];
      j = a.read(arrayOfByte);
      i = j;
    } while (j <= 0);
    paramByteBuffer.put(arrayOfByte, 0, j);
    return j;
  }
}

/* Location:
 * Qualified Name:     mpa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */