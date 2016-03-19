import android.graphics.SurfaceTexture;
import android.os.Build.VERSION;
import android.view.Surface;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLSurface;

final class hec
{
  hla a;
  hgn b;
  private final hgt d = new hgt();
  private boolean e;
  private EGLSurface f = EGL10.EGL_NO_SURFACE;
  private int g;
  private int h;
  
  hec(hee paramhee, hla paramhla, hgn paramhgn)
  {
    a(paramhla, paramhgn);
  }
  
  private void c()
  {
    if (e)
    {
      hlk.a(3, "vclib", "Destroying surface for %s.", new Object[] { b });
      c.c.b();
      c.b.a.eglDestroySurface(c.b.b, f);
      f = EGL10.EGL_NO_SURFACE;
      e = false;
    }
  }
  
  void a()
  {
    d.a();
    c();
  }
  
  void a(hla paramhla, hgn paramhgn)
  {
    if (a != null) {
      hbs.a(a, paramhla);
    }
    a = paramhla;
    b = paramhgn;
    d.a(a, b);
  }
  
  void b()
  {
    Object localObject = b.n();
    if ((((hlc)localObject).d() != g) || (((hlc)localObject).e() != h))
    {
      g = ((hlc)localObject).d();
      h = ((hlc)localObject).e();
      c();
    }
    int i;
    if (!e) {
      if ((a.b() != null) && (!a.b().isValid()))
      {
        hlk.a(6, "vclib", "Invalid native window provided");
        i = 12299;
        label93:
        if (i == 12288) {
          break label481;
        }
      }
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        hlk.a(5, "vclib", 49 + "GlManager failed to render. GL error: " + i);
      case 12288: 
        return;
        if (a.a() != null)
        {
          localObject = c.b.a.eglCreateWindowSurface(c.b.b, c.b.d, a.a(), null);
          if ((localObject == null) || (c.b.a.eglGetError() != 12288))
          {
            i = 12301;
            break label93;
          }
          c.b.a.eglDestroySurface(c.b.b, (EGLSurface)localObject);
          a.a().setDefaultBufferSize(g, h);
          localObject = a.a();
        }
        for (;;)
        {
          f = c.b.a.eglCreateWindowSurface(c.b.b, c.b.d, localObject, null);
          aal.B("OutputRenderer.initializeGlSurface");
          i = c.b.a.eglGetError();
          if (i == 12288) {
            break label448;
          }
          hlk.a(6, "vclib", 47 + "createWindowSurface failed because: " + i);
          break;
          if (Build.VERSION.SDK_INT >= 17) {
            localObject = a.b();
          } else {
            localObject = new hdx(a.b());
          }
        }
        label448:
        if (f == EGL10.EGL_NO_SURFACE)
        {
          hlk.a(6, "vclib", "createWindowSurface failed to create a surface!");
          i = 12301;
          break label93;
        }
        i = 12288;
        break label93;
        label481:
        e = true;
        if (f == EGL10.EGL_NO_SURFACE) {
          throw new IllegalStateException("Attempted to render a released OutputRenderer");
        }
        if (!c.b.a.eglMakeCurrent(c.b.b, f, f, c.b.c)) {
          i = c.b.a.eglGetError();
        } else if ((d.d()) && (!c.b.a.eglSwapBuffers(c.b.b, f))) {
          i = c.b.a.eglGetError();
        } else {
          i = 12288;
        }
        break;
      }
    }
    hlk.a(5, "vclib", "Failed to initialize OutputRenderer; no surface created");
    c.a(a);
    return;
    hlk.a(5, "vclib", "Failed to render frame: invalid native window");
    c.a(a);
  }
}

/* Location:
 * Qualified Name:     hec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */