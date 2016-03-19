import android.opengl.EGL14;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.view.Surface;

public final class hdq
{
  private hdo a;
  private EGLSurface b;
  private Surface c;
  
  public hdq(hdo paramhdo, Surface paramSurface)
  {
    a = paramhdo;
    c = paramSurface;
    b = null;
  }
  
  public boolean a()
  {
    if (b != null) {
      return false;
    }
    b = EGL14.eglCreateWindowSurface(a.b(), a.a(), c, new int[] { 12344 }, 0);
    hdo.a("eglCreateWindowSurface");
    if ((b == null) || (b == EGL14.EGL_NO_SURFACE))
    {
      b = null;
      hlk.a(6, "vclib", "Unable to create EGL surface for encoder input.");
      return false;
    }
    return true;
  }
  
  public boolean a(long paramLong)
  {
    if (b == null) {}
    while (!a.a(b)) {
      return false;
    }
    EGLExt.eglPresentationTimeANDROID(a.b(), b, paramLong);
    return true;
  }
  
  public void b()
  {
    if (b != null) {
      EGL14.eglDestroySurface(a.b(), b);
    }
    b = EGL14.EGL_NO_SURFACE;
    c.release();
    c = null;
  }
  
  public boolean c()
  {
    if (!EGL14.eglSwapBuffers(a.b(), b))
    {
      hdo.a("eglSwapBuffers");
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     hdq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */