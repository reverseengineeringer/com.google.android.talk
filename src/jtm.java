import java.io.Closeable;
import java.util.concurrent.atomic.AtomicBoolean;

public final class jtm
  implements Closeable, Runnable
{
  private static final imw b = new imw("SpanEndSignal");
  final Throwable a;
  private final AtomicBoolean c = new AtomicBoolean(false);
  private jtn d;
  
  jtm(jtn paramjtn)
  {
    d = paramjtn;
    a = null;
  }
  
  public void close()
  {
    if (!c.compareAndSet(false, true)) {
      throw new IllegalStateException("Span was already closed!");
    }
    d.a();
    d = null;
  }
  
  public void finalize()
  {
    super.finalize();
  }
  
  public void run()
  {
    close();
  }
}

/* Location:
 * Qualified Name:     jtm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */