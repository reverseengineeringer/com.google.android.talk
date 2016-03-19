import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

final class hjf
  implements Runnable
{
  hjf(hje paramhje) {}
  
  public void run()
  {
    boolean bool;
    Camera.Parameters localParameters;
    synchronized (a.s)
    {
      if ((a.e != null) || (a.p == null) || (a.t == null)) {
        return;
      }
      if (a.x != 0) {
        break label1015;
      }
      bool = true;
      hbs.b("Attempted to open camera without a camera selected", bool);
      if (a.x == 1) {
        i = a.a;
      }
      try
      {
        a.e = Camera.open(i);
        localParameters = a.e.getParameters();
        localObject4 = localParameters.getSupportedPreviewFpsRange();
        int[] arrayOfInt = (int[])((List)localObject4).get(((List)localObject4).size() - 1);
        i = a.t.c;
        localIterator = ((List)localObject4).iterator();
        label159:
        if (!localIterator.hasNext()) {
          break label315;
        }
        localObject5 = (int[])localIterator.next();
        hlk.a(3, "vclib", "Camera FPS range: %d-%d", new Object[] { Integer.valueOf(localObject5[0]), Integer.valueOf(localObject5[1]) });
        if ((localObject5[1] > arrayOfInt[1]) || (localObject5[1] < i * 1000)) {
          break label1001;
        }
        localObject4 = localObject5;
        if (localObject5[1] < arrayOfInt[1]) {
          break label1008;
        }
        if (localObject5[0] > arrayOfInt[0]) {
          break label1001;
        }
        localObject4 = localObject5;
      }
      catch (RuntimeException localRuntimeException)
      {
        hlk.a("vclib", "Error opening camera", localRuntimeException);
        aal.a(a.m);
        return;
      }
      i = a.b;
    }
    label315:
    hlk.a("vclib", "Using camera FPS range: %d-%d", new Object[] { Integer.valueOf(localObject1[0]), Integer.valueOf(localObject1[1]) });
    localParameters.setPreviewFpsRange(localObject1[0], localObject1[1]);
    Object localObject5 = hlp.b(a.v, new hlp(a.t.d, a.t.e));
    Object localObject2 = localParameters.getSupportedPreviewSizes();
    Object localObject4 = null;
    int i = Integer.MAX_VALUE;
    Iterator localIterator = ((List)localObject2).iterator();
    label421:
    int k;
    int m;
    int j;
    float f3;
    float f1;
    if (localIterator.hasNext())
    {
      localObject2 = (Camera.Size)localIterator.next();
      hlk.a(3, "vclib", "Camera preview candidate: %d x %d", new Object[] { Integer.valueOf(width), Integer.valueOf(height) });
      k = width - a;
      m = height - b;
      j = k;
      if (k < 0) {
        j = k * -4;
      }
    }
    else
    {
      localParameters.setPreviewSize(width, height);
      f3 = width / height;
      localObject5 = localParameters.getSupportedPictureSizes();
      localObject2 = null;
      f1 = Float.MAX_VALUE;
      i = Integer.MAX_VALUE;
      localIterator = ((List)localObject5).iterator();
    }
    label984:
    label1001:
    label1008:
    label1015:
    label1055:
    label1062:
    label1072:
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localObject5 = (Camera.Size)localIterator.next();
        hlk.a(3, "vclib", "Camera picture candidate: %d x %d", new Object[] { Integer.valueOf(width), Integer.valueOf(height) });
        if ((width < width) || (height < height)) {
          continue;
        }
        if ((width != width) || (height != height)) {}
      }
      float f2;
      for (;;)
      {
        if (localObject5 == null) {
          hlk.a(5, "vclib", "No picture size appropriate for current preview size.");
        }
        for (;;)
        {
          a.e.setParameters(localParameters);
          a.f = new hlp(getPreviewSizewidth, getPreviewSizeheight);
          hlk.a("vclib", "Camera preview size: %s ", new Object[] { a.f });
          try
          {
            a.w.setDefaultBufferSize(a.f.a, a.f.b);
            a.e.setPreviewTexture(a.w);
            a.e.startPreview();
            if (a.x == 1)
            {
              i = a.c;
              a.a(i, i);
              return;
              f2 = Math.abs(width / height - f3);
              j = width * height;
              if (f2 < f1) {
                break label1062;
              }
              if ((f2 != f1) || (j >= i)) {
                break label984;
              }
              break label1062;
              hlk.a("vclib", "Camera picture size: %d x %d ", new Object[] { Integer.valueOf(width), Integer.valueOf(height) });
              localParameters.setPictureSize(width, height);
            }
          }
          catch (IOException localIOException)
          {
            for (;;)
            {
              hlk.b("vclib", "Failure setting surface texture", localIOException);
              continue;
              i = a.d;
            }
          }
        }
        break label1072;
        localObject5 = localIOException;
      }
      do
      {
        localObject3 = localObject4;
        break label1055;
        localObject4 = localObject3;
        localObject3 = localObject4;
        break label159;
        bool = false;
        break;
        k = m;
        if (m < 0) {
          k = m * -4;
        }
        j = k + j;
      } while (j >= i);
      i = j;
      localObject4 = localObject3;
      break label421;
      f1 = f2;
      Object localObject3 = localObject5;
      i = j;
    }
  }
}

/* Location:
 * Qualified Name:     hjf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */