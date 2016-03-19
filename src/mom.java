import java.nio.ByteBuffer;
import org.chromium.net.CronetUrlRequest;
import org.chromium.net.UrlRequest.Callback;
import org.chromium.net.UrlResponseInfo;

public final class mom
  implements Runnable
{
  public ByteBuffer a;
  
  public mom(CronetUrlRequest paramCronetUrlRequest) {}
  
  public void run()
  {
    if (b.c()) {
      return;
    }
    try
    {
      synchronized (b.d)
      {
        if (b.a == 0L) {
          return;
        }
      }
      b.c = true;
    }
    catch (Exception localException)
    {
      b.a(localException);
      return;
    }
    ByteBuffer localByteBuffer = a;
    a = null;
    UrlRequest.Callback localCallback = b.e;
    CronetUrlRequest localCronetUrlRequest = b;
    UrlResponseInfo localUrlResponseInfo = b.f;
    localCallback.a(localCronetUrlRequest, localByteBuffer);
  }
}

/* Location:
 * Qualified Name:     mom
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */