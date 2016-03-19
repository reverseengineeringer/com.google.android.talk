import android.content.Context;
import android.graphics.SurfaceTexture;
import com.google.android.libraries.hangouts.video.sdk.ScreenVideoCapturer;

public final class hkk
  extends hle
{
  public hkk(ScreenVideoCapturer paramScreenVideoCapturer) {}
  
  public void a()
  {
    ScreenVideoCapturer localScreenVideoCapturer = a;
    hlp localhlp;
    int i;
    if (c != null)
    {
      localhlp = localScreenVideoCapturer.a();
      if (f <= 0) {
        break label98;
      }
      i = f;
    }
    for (;;)
    {
      e = i;
      c.setDefaultBufferSize(a, b);
      b.a(new hlc().a(a, b).a(true));
      b.a(e);
      localScreenVideoCapturer.b();
      return;
      label98:
      if (b.k().a >= 1280) {
        i = gvj.a(a.getContentResolver(), "babel_hangout_screen_capture_framerate_hw", 10);
      } else {
        i = gvj.a(a.getContentResolver(), "babel_hangout_screen_capture_framerate_sw", 5);
      }
    }
  }
  
  public void a(SurfaceTexture paramSurfaceTexture)
  {
    a.c = paramSurfaceTexture;
    hlp localhlp;
    int i;
    if (a.d == null)
    {
      paramSurfaceTexture = a;
      if (c != null)
      {
        localhlp = paramSurfaceTexture.a();
        if (f <= 0) {
          break label116;
        }
        i = f;
      }
    }
    for (;;)
    {
      e = i;
      c.setDefaultBufferSize(a, b);
      b.a(new hlc().a(a, b).a(true));
      b.a(e);
      paramSurfaceTexture.b();
      return;
      label116:
      if (b.k().a >= 1280) {
        i = gvj.a(a.getContentResolver(), "babel_hangout_screen_capture_framerate_hw", 10);
      } else {
        i = gvj.a(a.getContentResolver(), "babel_hangout_screen_capture_framerate_sw", 5);
      }
    }
  }
}

/* Location:
 * Qualified Name:     hkk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */