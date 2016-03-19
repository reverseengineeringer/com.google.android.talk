import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;

final class gmm
  extends AsyncTask<Void, Void, Bitmap>
{
  final gml a;
  final ParcelFileDescriptor b;
  final int c;
  final int d;
  final int e;
  
  gmm(gmk paramgmk, gml paramgml, ParcelFileDescriptor paramParcelFileDescriptor, int paramInt1, int paramInt2, int paramInt3)
  {
    a = paramgml;
    b = paramParcelFileDescriptor;
    c = paramInt1;
    d = paramInt2;
    e = paramInt3;
  }
  
  private Bitmap a()
  {
    try
    {
      Bitmap localBitmap;
      if (f.e)
      {
        localBitmap = aal.a(b);
        if (localBitmap == null) {
          localBitmap = null;
        }
      }
      for (;;)
      {
        if (localBitmap != null) {
          f.d.put(a.g, localBitmap);
        }
        if (b != null) {}
        try
        {
          b.close();
          return localBitmap;
        }
        catch (IOException localIOException1)
        {
          localIOException1.getMessage();
          return localBitmap;
        }
        localBitmap = aal.b(localBitmap);
        continue;
        localBitmap = gmk.a(b, c, d, e, (int)(c * f.f / f.g));
        if (localBitmap == null) {
          localBitmap = null;
        } else {
          localBitmap = gmk.a(localBitmap, c, f.f / f.g);
        }
      }
      try
      {
        b.close();
        throw ((Throwable)localObject);
      }
      catch (IOException localIOException2)
      {
        for (;;)
        {
          localIOException2.getMessage();
        }
      }
    }
    finally
    {
      if (b == null) {}
    }
  }
}

/* Location:
 * Qualified Name:     gmm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */