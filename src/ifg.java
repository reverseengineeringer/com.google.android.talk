import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

public final class ifg<T extends WritableByteChannel>
  implements WritableByteChannel
{
  private final ifb a;
  private final T b;
  
  public ifg(T paramT, ifa paramifa)
  {
    b = paramT;
    a = new ifb(paramifa);
  }
  
  public T a()
  {
    return b;
  }
  
  public void a(long paramLong)
  {
    a.a(paramLong);
  }
  
  public void close()
  {
    b.close();
  }
  
  public boolean isOpen()
  {
    return b.isOpen();
  }
  
  public int write(ByteBuffer paramByteBuffer)
  {
    int i = b.write(paramByteBuffer);
    a.b(i);
    return i;
  }
}

/* Location:
 * Qualified Name:     ifg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */