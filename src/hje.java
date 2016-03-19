import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.os.Handler;

public final class hje
  extends hjk
{
  int a = -1;
  int b = -1;
  int c = 0;
  int d = 0;
  Camera e;
  hlp f;
  private final hjf g = new hjf(this);
  
  public hje(Context paramContext)
  {
    super(paramContext);
    l = new hjp(this);
    for (;;)
    {
      try
      {
        paramContext = new Camera.CameraInfo();
        int j = Camera.getNumberOfCameras();
        if (i < j)
        {
          Camera.getCameraInfo(i, paramContext);
          if (facing == 1)
          {
            a = i;
            c = orientation;
          }
          else
          {
            b = i;
            d = orientation;
          }
        }
      }
      catch (RuntimeException paramContext)
      {
        hlk.a("vclib", "Failed to detect cameras", paramContext);
      }
      return;
      i += 1;
    }
  }
  
  public void a(hks paramhks, hld paramhld)
  {
    super.a(paramhks, paramhld);
    paramhld.a(l);
  }
  
  public boolean a()
  {
    return a != -1;
  }
  
  public boolean b()
  {
    return b != -1;
  }
  
  protected hlp c()
  {
    synchronized (s)
    {
      hlp localhlp = f;
      return localhlp;
    }
  }
  
  protected void d()
  {
    synchronized (s)
    {
      if (e != null)
      {
        hlk.a(3, "vclib", "Camera was already opened, ignoring");
        return;
      }
      if (x == 0)
      {
        hlk.a("vclib", "openCamera was called with no camera selected.");
        return;
      }
    }
    o.removeCallbacks(g);
    o.post(g);
  }
  
  protected void e()
  {
    o.removeCallbacks(g);
    synchronized (s)
    {
      if (e != null)
      {
        e.stopPreview();
        e.release();
        e = null;
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     hje
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */