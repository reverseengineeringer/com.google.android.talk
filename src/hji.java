import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraDevice.StateCallback;
import android.hardware.camera2.CameraManager;
import java.util.ArrayList;
import java.util.Set;

final class hji
  extends CameraDevice.StateCallback
{
  hji(hjg paramhjg) {}
  
  public void onDisconnected(CameraDevice paramCameraDevice)
  {
    hbs.d();
    hlk.a(3, "vclib", "Camera disconnected");
    a.m();
  }
  
  public void onError(CameraDevice paramCameraDevice, int paramInt)
  {
    hbs.d();
    hlk.a(5, "vclib", 26 + "Camera error - " + paramInt);
    a.m();
    aal.a(a.m);
  }
  
  public void onOpened(CameraDevice paramCameraDevice)
  {
    hbs.d();
    hlk.a(3, "vclib", "Camera opened");
    synchronized (a.s)
    {
      a.g = paramCameraDevice;
      try
      {
        int i = ((Integer)a.a.getCameraCharacteristics(paramCameraDevice.getId()).get(CameraCharacteristics.SENSOR_ORIENTATION)).intValue();
        a.i = a.f();
        a.a(i, 0);
        if (!a.c.isEmpty()) {
          a.g.createCaptureSession(new ArrayList(a.c), a.b, a.o);
        }
        return;
      }
      catch (CameraAccessException paramCameraDevice)
      {
        for (;;)
        {
          hlk.a("vclib", "Failed to create camera capture session", paramCameraDevice);
          aal.a(a.m);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     hji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */