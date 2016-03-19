import android.util.Log;
import java.io.File;
import java.io.IOException;
import org.chromium.net.ChunkedWritableByteChannel;
import org.chromium.net.HttpUrlRequest;
import org.chromium.net.HttpUrlRequestListener;
import org.chromium.net.ResponseTooLargeException;

final class hyp
  implements HttpUrlRequestListener
{
  hyp(hyo paramhyo) {}
  
  public void a(HttpUrlRequest paramHttpUrlRequest)
  {
    a.c = System.currentTimeMillis();
    a.d = paramHttpUrlRequest.k();
    if (a.h != null) {
      a.h.a(paramHttpUrlRequest.a());
    }
  }
  
  public void b(HttpUrlRequest paramHttpUrlRequest)
  {
    for (;;)
    {
      synchronized (a)
      {
        if (paramHttpUrlRequest != a.g) {
          return;
        }
        a.g = null;
        a.g();
        ??? = a;
        e += 1;
        ??? = paramHttpUrlRequest.d();
        if (!(??? instanceof ResponseTooLargeException)) {
          break label502;
        }
        Object localObject2 = String.valueOf(a.a.l());
        new StringBuilder(String.valueOf(localObject2).length() + 20).append("Response too large: ").append((String)localObject2);
        if ((a.a.l()).i & 0x800) == 0) {
          break label497;
        }
        a.i = true;
        ??? = null;
        i = 1;
        if (??? == null) {
          break label295;
        }
        if (Log.isLoggable("ImageResource", 3))
        {
          paramHttpUrlRequest = String.valueOf(a.a.l());
          new StringBuilder(String.valueOf(paramHttpUrlRequest).length() + 25).append("Network Exception: Id is:").append(paramHttpUrlRequest);
        }
        localObject2 = a.a;
        paramHttpUrlRequest = String.valueOf(((IOException)???).getMessage());
        if (paramHttpUrlRequest.length() != 0)
        {
          paramHttpUrlRequest = "Network exception: ".concat(paramHttpUrlRequest);
          ((hya)localObject2).a(paramHttpUrlRequest, (Throwable)???);
          paramHttpUrlRequest = a.a;
          if (i == 0) {
            break label290;
          }
          i = 5;
          paramHttpUrlRequest.a(i);
          return;
        }
      }
      paramHttpUrlRequest = new String("Network exception: ");
      continue;
      label290:
      int i = 4;
      continue;
      label295:
      i = paramHttpUrlRequest.b();
      if (i != 200)
      {
        if (a.j != null) {
          a.j.delete();
        }
        a.a.a(i, null);
        return;
      }
      if (a.a.m() != 2) {
        a.i = true;
      }
      long l = paramHttpUrlRequest.a();
      if (l == -1L)
      {
        a.f = -1L;
        ??? = (igq)a.a.l();
        if (a.h == null) {
          break label472;
        }
        paramHttpUrlRequest = ((ChunkedWritableByteChannel)a.h.a()).a();
      }
      for (;;)
      {
        a.b.a(a.a, paramHttpUrlRequest);
        return;
        a.f = (l + a.f);
        break;
        label472:
        if ((i & 0x2) == 0) {
          paramHttpUrlRequest = paramHttpUrlRequest.e();
        } else {
          paramHttpUrlRequest = null;
        }
      }
      label497:
      i = 1;
      continue;
      label502:
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     hyp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */