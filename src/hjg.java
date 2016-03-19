import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Size;
import android.view.Surface;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.CountDownLatch;

public final class hjg
  extends hjk
{
  private final hji A;
  private final boolean B;
  private boolean C;
  final CameraManager a;
  final hjj b;
  final Set<Surface> c = new HashSet();
  Surface d;
  String e;
  String f;
  CameraDevice g;
  CameraCaptureSession h;
  hlp i;
  CountDownLatch j;
  
  public hjg(Context paramContext, boolean paramBoolean)
  {
    super(paramContext);
    B = paramBoolean;
    l = new hjh(this);
    A = new hji(this);
    b = new hjj(this);
    a = ((CameraManager)paramContext.getSystemService("camera"));
    o();
  }
  
  public static boolean a(Context paramContext)
  {
    paramContext = (CameraManager)paramContext.getSystemService("camera");
    try
    {
      String[] arrayOfString = paramContext.getCameraIdList();
      int m = arrayOfString.length;
      int k = 0;
      while (k < m)
      {
        int n = ((Integer)paramContext.getCameraCharacteristics(arrayOfString[k]).get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL)).intValue();
        if (n == 2) {
          return false;
        }
        k += 1;
      }
      return true;
    }
    catch (CameraAccessException paramContext)
    {
      hlk.a("vclib", "Exception reading camera properties", paramContext);
    }
    return false;
  }
  
  private void o()
  {
    for (;;)
    {
      int k;
      try
      {
        String[] arrayOfString = a.getCameraIdList();
        int m = arrayOfString.length;
        k = 0;
        if (k < m)
        {
          String str = arrayOfString[k];
          if (((Integer)a.getCameraCharacteristics(str).get(CameraCharacteristics.LENS_FACING)).intValue() == 0) {
            e = str;
          } else {
            f = str;
          }
        }
      }
      catch (CameraAccessException localCameraAccessException)
      {
        hlk.a("vclib", "Failed to detect cameras", localCameraAccessException);
      }
      return;
      k += 1;
    }
  }
  
  public void a(hks paramhks)
  {
    super.a(paramhks);
    if (d != null)
    {
      d.release();
      d = null;
    }
    c.clear();
  }
  
  public void a(hks paramhks, hld paramhld)
  {
    super.a(paramhks, paramhld);
    paramhld.d(B);
    hlk.a(3, "vclib", "Camera2 useMultipleSurfaces: %b", new Object[] { Boolean.valueOf(B) });
    paramhld.a(l);
    a(r);
  }
  
  public boolean a()
  {
    return e != null;
  }
  
  public boolean b()
  {
    return f != null;
  }
  
  protected hlp c()
  {
    synchronized (s)
    {
      hlp localhlp = i;
      return localhlp;
    }
  }
  
  protected void d()
  {
    synchronized (s)
    {
      if (C)
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
    C = true;
    if (g == null)
    {
      hlk.a(3, "vclib", "Opening camera");
      String str;
      if (x == 1) {
        str = e;
      }
      try
      {
        for (;;)
        {
          a.openCamera(str, A, o);
          return;
          str = f;
        }
      }
      catch (CameraAccessException localCameraAccessException)
      {
        for (;;)
        {
          hlk.a("vclib", "Failed to open cameras", localCameraAccessException);
          aal.a(m);
        }
      }
    }
  }
  
  protected void e()
  {
    synchronized (s)
    {
      if (h != null)
      {
        hlk.a(3, "vclib", "Stopping capture session: %s", new Object[] { h });
        h.close();
        h = null;
      }
      if (g != null)
      {
        hlk.a(3, "vclib", "Closing camera");
        g.close();
        g = null;
      }
      C = false;
      return;
    }
  }
  
  hlp f()
  {
    Object localObject1;
    synchronized (s)
    {
      if (x == 1) {
        localObject1 = e;
      }
    }
    label301:
    for (;;)
    {
      try
      {
        ??? = (StreamConfigurationMap)a.getCameraCharacteristics((String)localObject1).get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        hlp localhlp2 = hlp.b(v, new hlp(t.d, t.e));
        localObject1 = new Size(0, 0);
        int k = Integer.MAX_VALUE;
        Size[] arrayOfSize = ((StreamConfigurationMap)???).getOutputSizes(SurfaceTexture.class);
        int i3 = arrayOfSize.length;
        int m = 0;
        if (m < i3)
        {
          ??? = arrayOfSize[m];
          hlk.a(3, "vclib", "Camera candidate size: %s ", new Object[] { ??? });
          int i1 = ((Size)???).getWidth() - a;
          int n = ((Size)???).getHeight();
          int i2 = b;
          i2 = n - i2;
          n = i1;
          if (i1 < 0) {
            n = i1 * -4;
          }
          i1 = i2;
          if (i2 < 0) {
            i1 = i2 * -4;
          }
          n = i1 + n;
          if (n >= k) {
            break label301;
          }
          localObject1 = ???;
          k = n;
          m += 1;
          continue;
          localObject1 = f;
          break;
          localObject2 = finally;
          throw ((Throwable)localObject2);
        }
        hlk.a("vclib", "Camera preview size: %s", new Object[] { localObject2 });
        hlp localhlp1 = new hlp(((Size)localObject2).getWidth(), ((Size)localObject2).getHeight());
        return localhlp1;
      }
      catch (CameraAccessException localCameraAccessException)
      {
        hlk.a("vclib", "Failed to read camera capture sizes", localCameraAccessException);
        return new hlp(0, 0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     hjg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */