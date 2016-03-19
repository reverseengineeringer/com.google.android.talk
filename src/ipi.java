import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Looper;
import android.util.Log;

public final class ipi
{
  private static final Paint a = new Paint(2);
  private static final Paint b = new Paint(2);
  private static volatile Thread c;
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    if (paramBitmap == null) {}
    Bitmap localBitmap;
    do
    {
      return null;
      if (Log.isLoggable("BitmapUtils", 3))
      {
        int i = paramBitmap.getWidth();
        int j = paramBitmap.getHeight();
        new StringBuilder(84).append("resizeToSquareBitmap: Input: ").append(i).append("x").append(j).append(", output:").append(paramInt).append("x").append(paramInt);
      }
      localBitmap = Bitmap.createBitmap(paramInt, paramInt, Bitmap.Config.ARGB_8888);
    } while (localBitmap == null);
    Canvas localCanvas = new Canvas(localBitmap);
    if ((paramBitmap.getWidth() != paramInt) || (paramBitmap.getHeight() != paramInt)) {
      a(localCanvas, paramBitmap, new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight()), new Rect(0, 0, paramInt, paramInt));
    }
    for (;;)
    {
      return localBitmap;
      localCanvas.drawBitmap(paramBitmap, 0.0F, 0.0F, null);
    }
  }
  
  public static Bitmap a(Bitmap paramBitmap1, int paramInt1, int paramInt2, Bitmap paramBitmap2)
  {
    if ((paramBitmap1 == null) || (paramInt1 == 0) || (paramInt2 == 0)) {
      localObject = null;
    }
    do
    {
      return (Bitmap)localObject;
      if (Log.isLoggable("BitmapUtils", 3))
      {
        i = paramBitmap1.getWidth();
        j = paramBitmap1.getHeight();
        new StringBuilder(83).append("resizeAndCropBitmap: Input: ").append(i).append("x").append(j).append(", output:").append(paramInt1).append("x").append(paramInt2);
      }
      if (paramBitmap1.getWidth() != paramInt1) {
        break;
      }
      localObject = paramBitmap1;
    } while (paramBitmap1.getHeight() == paramInt2);
    if (paramBitmap2 == null) {
      paramBitmap2 = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
    }
    while (paramBitmap2 == null) {
      return null;
    }
    Object localObject = new Canvas(paramBitmap2);
    int j = paramBitmap1.getWidth();
    int i = paramBitmap1.getHeight();
    if (paramBitmap1.getWidth() * paramInt2 > paramBitmap1.getHeight() * paramInt1) {
      j = paramBitmap1.getHeight() * paramInt1 / paramInt2;
    }
    for (;;)
    {
      int k = (paramBitmap1.getWidth() - j) / 2;
      int m = (paramBitmap1.getHeight() - i) / 2;
      a((Canvas)localObject, paramBitmap1, new Rect(k, m, j + k, i + m), new Rect(0, 0, paramInt1, paramInt2));
      return paramBitmap2;
      i = paramBitmap1.getWidth() * paramInt2 / paramInt1;
    }
  }
  
  private static void a(Canvas paramCanvas, Bitmap paramBitmap, Rect paramRect1, Rect paramRect2)
  {
    if (c == null) {
      c = Looper.getMainLooper().getThread();
    }
    if (Thread.currentThread() == c)
    {
      paramCanvas.drawBitmap(paramBitmap, paramRect1, paramRect2, a);
      return;
    }
    synchronized (b)
    {
      paramCanvas.drawBitmap(paramBitmap, paramRect1, paramRect2, b);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     ipi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */