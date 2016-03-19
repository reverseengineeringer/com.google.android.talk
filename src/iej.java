import android.os.ConditionVariable;
import java.io.IOException;
import org.chromium.net.HttpUrlRequest;
import org.chromium.net.HttpUrlRequestListener;

abstract class iej
{
  final ConditionVariable a = new ConditionVariable();
  int b;
  long c;
  byte[] d;
  IOException e;
  boolean f;
  public final HttpUrlRequestListener g = new iek(this);
  private final ihs h;
  
  protected iej(ihs paramihs)
  {
    h = paramihs;
  }
  
  public abstract void a();
  
  protected abstract void a(HttpUrlRequest paramHttpUrlRequest);
  
  protected abstract HttpUrlRequest b();
  
  public final void d()
  {
    a.close();
    b().h();
    a.block();
  }
  
  public int e()
  {
    return b;
  }
  
  public long f()
  {
    return c;
  }
  
  public byte[] g()
  {
    return d;
  }
  
  public IOException h()
  {
    return e;
  }
  
  public boolean i()
  {
    return f;
  }
  
  public ihs j()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     iej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */