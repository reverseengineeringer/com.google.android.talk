import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;

public final class ife<T extends ReadableByteChannel>
  implements ReadableByteChannel
{
  private final ifb a;
  private final T b;
  
  public ife(T paramT, ifa paramifa, long paramLong)
  {
    this(paramT, new ifb(paramifa, paramLong));
  }
  
  private ife(T paramT, ifb paramifb)
  {
    b = paramT;
    a = paramifb;
  }
  
  public void close()
  {
    b.close();
  }
  
  public boolean isOpen()
  {
    return b.isOpen();
  }
  
  public int read(ByteBuffer paramByteBuffer)
  {
    int i = b.read(paramByteBuffer);
    if (i >= 0) {
      a.b(i);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     ife
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */