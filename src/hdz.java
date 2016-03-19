import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLSurface;

final class hdz
  extends Thread
{
  Handler a;
  volatile boolean b;
  private final CountDownLatch d = new CountDownLatch(1);
  private EGLSurface e;
  
  hdz(hee paramhee)
  {
    super("GLThread.vclib");
  }
  
  public Handler a()
  {
    try
    {
      d.await();
      return a;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        hlk.a(5, "vclib", "Failed to initialize gl thread handler before getting interrupted");
      }
    }
  }
  
  public boolean b()
  {
    return c.b.a.eglMakeCurrent(c.b.b, e, e, c.b.c);
  }
  
  public void c()
  {
    a.sendEmptyMessage(2);
  }
  
  public boolean d()
  {
    return b;
  }
  
  public void run()
  {
    c.b.a();
    Object localObject2 = new SurfaceTexture(aal.q());
    e = c.b.a.eglCreateWindowSurface(c.b.b, c.b.d, localObject2, null);
    Looper.prepare();
    a = new hea(this);
    try
    {
      if (!b()) {
        aal.B("eglMakeCurrent failed");
      }
      d.countDown();
      Looper.loop();
      c.b.a.eglDestroySurface(c.b.b, e);
      ((SurfaceTexture)localObject2).release();
      Iterator localIterator = c.a.iterator();
      while (localIterator.hasNext()) {
        ((hec)localIterator.next()).a();
      }
      c.a.clear();
      c.b.b();
      return;
    }
    finally
    {
      c.b.a.eglDestroySurface(c.b.b, e);
      ((SurfaceTexture)localObject2).release();
      localObject2 = c.a.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((hec)((Iterator)localObject2).next()).a();
      }
      c.a.clear();
      c.b.b();
    }
  }
}

/* Location:
 * Qualified Name:     hdz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */