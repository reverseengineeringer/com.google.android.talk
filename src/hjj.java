import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCaptureSession.StateCallback;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureRequest.Builder;
import android.util.Range;
import android.view.Surface;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CountDownLatch;

final class hjj
  extends CameraCaptureSession.StateCallback
{
  hjj(hjg paramhjg) {}
  
  public void onClosed(CameraCaptureSession paramCameraCaptureSession)
  {
    hbs.d();
    hlk.a(3, "vclib", "Camera capture session closed: %s", new Object[] { paramCameraCaptureSession });
    if (paramCameraCaptureSession == a.h) {
      a.h = null;
    }
  }
  
  public void onConfigureFailed(CameraCaptureSession paramCameraCaptureSession)
  {
    hbs.d();
    hlk.c("vclib", "Unable to start camera capture session: %s", new Object[] { paramCameraCaptureSession });
    a.m();
    if (a.j != null) {
      a.j.countDown();
    }
    a.j = null;
    aal.a(a.m);
  }
  
  public void onConfigured(CameraCaptureSession paramCameraCaptureSession)
  {
    hbs.d();
    hlk.a(3, "vclib", "Camera capture session configured: %s", new Object[] { paramCameraCaptureSession });
    for (;;)
    {
      CaptureRequest.Builder localBuilder;
      int j;
      Range localRange;
      synchronized (a.s)
      {
        if (a.g == null)
        {
          hlk.a(5, "vclib", "Session configured without an open device");
          return;
        }
        try
        {
          localBuilder = a.g.createCaptureRequest(3);
          if (a.x == 1)
          {
            localObject1 = a.e;
            Range[] arrayOfRange = (Range[])a.a.getCameraCharacteristics((String)localObject1).get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
            localObject1 = arrayOfRange[(arrayOfRange.length - 1)];
            int i = a.t.c;
            if (((Integer)((Range)localObject1).getUpper()).intValue() <= 1000) {
              break label499;
            }
            hlk.a(3, "vclib", "Appears to be a LEGACY camera; multiplying fps by 1000");
            i *= 1000;
            int k = arrayOfRange.length;
            j = 0;
            if (j < k)
            {
              localRange = arrayOfRange[j];
              hlk.a(3, "vclib", "Camera FPS range: %s", new Object[] { localRange });
              if ((((Integer)localRange.getUpper()).intValue() > ((Integer)((Range)localObject1).getUpper()).intValue()) || (((Integer)localRange.getUpper()).intValue() < i)) {
                break label496;
              }
              if (((Integer)localRange.getUpper()).intValue() < ((Integer)((Range)localObject1).getUpper()).intValue()) {
                break label502;
              }
              if (((Integer)localRange.getLower()).intValue() > ((Integer)((Range)localObject1).getLower()).intValue()) {
                break label496;
              }
              break label502;
            }
          }
          else
          {
            localObject1 = a.f;
            continue;
          }
          hlk.a("vclib", "Using camera FPS range: %s", new Object[] { localObject1 });
          localBuilder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, localObject1);
          localBuilder.set(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(1));
          localBuilder.set(CaptureRequest.CONTROL_AE_LOCK, Boolean.valueOf(false));
          localObject1 = a.c.iterator();
          if (((Iterator)localObject1).hasNext())
          {
            localBuilder.addTarget((Surface)((Iterator)localObject1).next());
            continue;
            paramCameraCaptureSession = finally;
          }
        }
        catch (CameraAccessException paramCameraCaptureSession)
        {
          hlk.a("vclib", "Failed to start capture request", paramCameraCaptureSession);
          aal.a(a.m);
          return;
        }
      }
      paramCameraCaptureSession.setRepeatingRequest(localBuilder.build(), null, a.o);
      a.h = paramCameraCaptureSession;
      if (a.j != null) {
        a.j.countDown();
      }
      a.j = null;
      hlk.a(3, "vclib", "Camera capture session fully configured: %s", new Object[] { paramCameraCaptureSession });
      continue;
      label496:
      break label506;
      label499:
      continue;
      label502:
      Object localObject1 = localRange;
      label506:
      j += 1;
    }
  }
}

/* Location:
 * Qualified Name:     hjj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */