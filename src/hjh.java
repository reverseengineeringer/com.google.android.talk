import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.view.Surface;
import java.util.Set;

final class hjh
  extends hjp
{
  hjh(hjg paramhjg)
  {
    super(paramhjg);
  }
  
  public void a(SurfaceTexture paramSurfaceTexture)
  {
    
    synchronized (a.s)
    {
      a.i = a.f();
      hlk.a(3, "vclib", "Setting camera buffer size to %s", new Object[] { a.i });
      paramSurfaceTexture.setDefaultBufferSize(a.i.a, a.i.b);
      if (a.d != null)
      {
        a.c.remove(a.d);
        a.d.release();
      }
      a.d = new Surface(paramSurfaceTexture);
      a.c.add(a.d);
      a.a(a.r);
      return;
    }
  }
  
  public void a(hlg paramhlg)
  {
    
    synchronized (a.s)
    {
      if (a.d != null)
      {
        a.c.remove(a.d);
        a.d.release();
      }
      if (a != null)
      {
        a.setDefaultBufferSize(a.i.a, a.i.b);
        a.d = new Surface(a);
        a.c.add(a.d);
      }
      a.c.addAll(b);
      if (a.o == null) {}
    }
  }
}

/* Location:
 * Qualified Name:     hjh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */