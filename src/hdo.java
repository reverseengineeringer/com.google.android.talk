import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import java.util.LinkedList;

public final class hdo
{
  private EGLDisplay a;
  private EGLContext b = EGL14.EGL_NO_CONTEXT;
  private EGLConfig c;
  private LinkedList<hdp> d = new LinkedList();
  
  public static void a(String paramString)
  {
    hbs.c();
    int i = 0;
    for (;;)
    {
      int j = EGL14.eglGetError();
      if (j == 12288) {
        break;
      }
      i = 1;
      String str = String.valueOf(Integer.toHexString(j));
      hlk.a(6, "vclib", String.valueOf(paramString).length() + 15 + String.valueOf(str).length() + paramString + ": EGL error: 0x" + str);
    }
    if (i != 0) {
      throw new RuntimeException(String.valueOf(paramString).concat(": EGL error encountered (see log)."));
    }
  }
  
  public EGLConfig a()
  {
    return c;
  }
  
  public boolean a(EGLSurface paramEGLSurface)
  {
    if (b == EGL14.EGL_NO_CONTEXT)
    {
      hlk.a(6, "vclib", "pushContext called with no created EGL context.");
      return false;
    }
    hdp localhdp = new hdp();
    a = EGL14.eglGetCurrentContext();
    c = EGL14.eglGetCurrentSurface(12377);
    b = EGL14.eglGetCurrentSurface(12378);
    if (!EGL14.eglMakeCurrent(a, paramEGLSurface, paramEGLSurface, b))
    {
      a("eglMakeCurrent");
      return false;
    }
    d.push(localhdp);
    return true;
  }
  
  public EGLDisplay b()
  {
    return a;
  }
  
  public boolean c()
  {
    if (b != EGL14.EGL_NO_CONTEXT)
    {
      hbs.a("Asked to re-initialize an EncoderGLContext.");
      return false;
    }
    a = EGL14.eglGetCurrentDisplay();
    hbs.b(a, EGL14.EGL_NO_DISPLAY);
    if (aen.f()) {}
    for (int i = 12344;; i = 12610)
    {
      localObject = new EGLConfig[1];
      int[] arrayOfInt = new int[1];
      if (EGL14.eglChooseConfig(a, new int[] { 12324, 8, 12323, 8, 12322, 8, 12352, 4, i, 1, 12344 }, 0, (EGLConfig[])localObject, 0, 1, arrayOfInt, 0)) {
        break;
      }
      hlk.a(6, "vclib", "Unable to find RGB8888+recordable ES2 EGL config.");
      return false;
    }
    c = localObject[0];
    Object localObject = new int[1];
    if (!EGL14.eglQueryContext(a, EGL14.eglGetCurrentContext(), 12440, (int[])localObject, 0))
    {
      hlk.a(6, "vclib", "Unable to get current EGL context client version.");
      return false;
    }
    i = localObject[0];
    b = EGL14.eglCreateContext(a, c, EGL14.eglGetCurrentContext(), new int[] { 12440, i, 12344 }, 0);
    a("eglCreateContext");
    return true;
  }
  
  public boolean d()
  {
    if (d.isEmpty())
    {
      hlk.a(6, "vclib", "popContext called with no saved EGL context.");
      return false;
    }
    hdp localhdp = (hdp)d.getLast();
    d.clear();
    EGL14.eglMakeCurrent(a, c, b, a);
    return true;
  }
}

/* Location:
 * Qualified Name:     hdo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */