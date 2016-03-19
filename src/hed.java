import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.google.android.libraries.hangouts.video.internal.GlRemoteRenderer;

public final class hed
  implements Runnable
{
  public hed(GlRemoteRenderer paramGlRemoteRenderer) {}
  
  public void run()
  {
    if (a.b != null)
    {
      a.b.release();
      a.b = null;
      a.c.release();
      a.c = null;
      int i = a.a;
      a.a = 0;
      aal.s(i);
    }
  }
}

/* Location:
 * Qualified Name:     hed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */