import android.os.Build.VERSION;
import java.net.HttpURLConnection;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;
import org.chromium.net.UploadDataProvider;

final class mqf
  implements mpz
{
  mqf(mqa parammqa, boolean paramBoolean) {}
  
  public void a()
  {
    b.h = b.f.a();
    if (b.h == 0L)
    {
      b.d();
      return;
    }
    if ((b.h > 0L) && (b.h < 8192L))
    {
      b.g = ByteBuffer.allocateDirect((int)b.h + 1);
      if ((b.h <= 0L) || (b.h > 2147483647L)) {
        break label158;
      }
      b.d.setFixedLengthStreamingMode((int)b.h);
    }
    for (;;)
    {
      if (!a) {
        break label216;
      }
      b.c();
      return;
      b.g = ByteBuffer.allocateDirect(8192);
      break;
      label158:
      if ((b.h > 2147483647L) && (Build.VERSION.SDK_INT >= 19)) {
        b.d.setFixedLengthStreamingMode(b.h);
      } else {
        b.d.setChunkedStreamingMode(8192);
      }
    }
    label216:
    b.a.set(mqg.b);
    b.f.a(b);
  }
}

/* Location:
 * Qualified Name:     mqf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */