import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

final class mqc
  implements mpz
{
  mqc(mqa parammqa, boolean paramBoolean) {}
  
  public void a()
  {
    b.g.flip();
    while (b.g.hasRemaining())
    {
      mqa localmqa = b;
      i += b.e.write(b.g);
    }
    if ((b.i < b.h) || ((b.h == -1L) && (!a)))
    {
      b.g.clear();
      b.a.set(mqg.a);
      b.b.execute(new mph(b.j, new mqd(this)));
      return;
    }
    if (b.h == -1L)
    {
      b.d();
      return;
    }
    if (b.h == b.i)
    {
      b.d();
      return;
    }
    throw new IllegalStateException("Wrote more bytes than were available");
  }
}

/* Location:
 * Qualified Name:     mqc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */