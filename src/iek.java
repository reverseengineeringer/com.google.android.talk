import android.os.ConditionVariable;
import org.chromium.net.HttpUrlRequest;
import org.chromium.net.HttpUrlRequestListener;

final class iek
  implements HttpUrlRequestListener
{
  iek(iej paramiej) {}
  
  public void a(HttpUrlRequest paramHttpUrlRequest)
  {
    a.a(paramHttpUrlRequest);
  }
  
  public void b(HttpUrlRequest paramHttpUrlRequest)
  {
    try
    {
      a.b = paramHttpUrlRequest.b();
      a.c = paramHttpUrlRequest.a();
      a.d = paramHttpUrlRequest.f();
      a.e = paramHttpUrlRequest.d();
      a.f = paramHttpUrlRequest.j();
      return;
    }
    finally
    {
      a.a.open();
    }
  }
}

/* Location:
 * Qualified Name:     iek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */