import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

final class hdy
{
  EGL10 a;
  EGLDisplay b;
  EGLContext c;
  EGLConfig d;
  private final int[] f = { 12324, 8, 12323, 8, 12322, 8, 12352, 4, 12344 };
  
  hdy(hee paramhee) {}
  
  private static int a(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, int paramInt)
  {
    int i = 0;
    int[] arrayOfInt = new int[1];
    if (paramEGL10.eglGetConfigAttrib(paramEGLDisplay, paramEGLConfig, paramInt, arrayOfInt)) {
      i = arrayOfInt[0];
    }
    return i;
  }
  
  private EGLConfig a(EGLConfig[] paramArrayOfEGLConfig)
  {
    int j = paramArrayOfEGLConfig.length;
    int i = 0;
    while (i < j)
    {
      EGLConfig localEGLConfig = paramArrayOfEGLConfig[i];
      int k = a(a, b, localEGLConfig, 12324);
      int m = a(a, b, localEGLConfig, 12323);
      int n = a(a, b, localEGLConfig, 12322);
      if ((k == 8) && (m == 8) && (n == 8)) {
        return localEGLConfig;
      }
      i += 1;
    }
    throw new IllegalArgumentException("Unable to identify a supported opengl configuration");
  }
  
  void a()
  {
    a = ((EGL10)EGLContext.getEGL());
    b = a.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
    Object localObject = new int[2];
    if (!a.eglInitialize(b, (int[])localObject)) {
      throw new RuntimeException("eglInitialize failed");
    }
    localObject = a;
    EGLDisplay localEGLDisplay = b;
    int[] arrayOfInt = new int[1];
    if (!((EGL10)localObject).eglChooseConfig(localEGLDisplay, f, null, 0, arrayOfInt)) {
      throw new IllegalArgumentException("eglChooseConfig failed");
    }
    int i = arrayOfInt[0];
    if (i <= 0) {
      throw new IllegalArgumentException("No configs match configSpec");
    }
    EGLConfig[] arrayOfEGLConfig = new EGLConfig[i];
    if (!((EGL10)localObject).eglChooseConfig(localEGLDisplay, f, arrayOfEGLConfig, i, arrayOfInt)) {
      throw new IllegalArgumentException("eglChooseConfig#2 failed");
    }
    localObject = a(arrayOfEGLConfig);
    if (localObject == null) {
      throw new IllegalArgumentException("No config chosen");
    }
    d = ((EGLConfig)localObject);
    c = a.eglCreateContext(b, d, EGL10.EGL_NO_CONTEXT, new int[] { 12440, 2, 12344 });
    if ((c == null) || (c == EGL10.EGL_NO_CONTEXT)) {
      throw new RuntimeException("eglCreateContext failed");
    }
  }
  
  void b()
  {
    if (!a.eglDestroyContext(b, c)) {
      hlk.a(6, "vclib", "Unable to destroy eglContext");
    }
    a.eglTerminate(b);
    a = null;
    c = null;
    b = null;
    d = null;
  }
}

/* Location:
 * Qualified Name:     hdy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */