import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import java.util.concurrent.atomic.AtomicInteger;

final class hgi
  implements SurfaceTexture.OnFrameAvailableListener
{
  hgi(hge paramhge) {}
  
  public void onFrameAvailable(SurfaceTexture paramSurfaceTexture)
  {
    a.a.incrementAndGet();
    a.l.a(a);
  }
}

/* Location:
 * Qualified Name:     hgi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */