import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import org.chromium.net.UrlRequest.Callback;
import org.chromium.net.UrlRequestException;
import org.chromium.net.UrlResponseInfo;

final class mpt
{
  final UrlRequest.Callback a;
  final Executor b;
  
  mpt(mpe parammpe, UrlRequest.Callback paramCallback, Executor paramExecutor)
  {
    a = paramCallback;
    b = paramExecutor;
  }
  
  private void a(mqh parammqh, mpz parammpz)
  {
    try
    {
      b.execute(new mps(c, parammpz, parammqh));
      return;
    }
    catch (RejectedExecutionException parammpz)
    {
      c.a(parammqh, new UrlRequestException("User Error", parammpz));
    }
  }
  
  void a()
  {
    a(mqh.e, new mpv(this));
  }
  
  void a(UrlResponseInfo paramUrlResponseInfo)
  {
    b.execute(new mpx(this, paramUrlResponseInfo));
  }
  
  void a(UrlResponseInfo paramUrlResponseInfo, String paramString)
  {
    a(mqh.d, new mpu(this, paramUrlResponseInfo, paramString));
  }
  
  void a(UrlResponseInfo paramUrlResponseInfo, ByteBuffer paramByteBuffer)
  {
    a(mqh.e, new mpw(this, paramUrlResponseInfo, paramByteBuffer));
  }
  
  void a(UrlResponseInfo paramUrlResponseInfo, UrlRequestException paramUrlRequestException)
  {
    ReadableByteChannel localReadableByteChannel = c.m;
    if (localReadableByteChannel != null) {}
    try
    {
      localReadableByteChannel.close();
      b.execute(new mpy(this, paramUrlResponseInfo, paramUrlRequestException));
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     mpt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */