import java.nio.ByteBuffer;
import java.util.Queue;

final class asm
{
  private final Queue<aio> a = avq.a(0);
  
  public aio a(ByteBuffer paramByteBuffer)
  {
    try
    {
      aio localaio2 = (aio)a.poll();
      aio localaio1 = localaio2;
      if (localaio2 == null) {
        localaio1 = new aio();
      }
      paramByteBuffer = localaio1.a(paramByteBuffer);
      return paramByteBuffer;
    }
    finally {}
  }
  
  public void a(aio paramaio)
  {
    try
    {
      paramaio.a();
      a.offer(paramaio);
      return;
    }
    finally
    {
      paramaio = finally;
      throw paramaio;
    }
  }
}

/* Location:
 * Qualified Name:     asm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */