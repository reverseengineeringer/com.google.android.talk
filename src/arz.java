import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class arz
{
  static final Lock a;
  private static final Paint b = new Paint(6);
  private static final Paint c = new Paint(7);
  private static final Paint d;
  
  static
  {
    if (("XT1097".equals(Build.MODEL)) && (Build.VERSION.SDK_INT == 22)) {}
    for (Object localObject = new ReentrantLock();; localObject = new asa())
    {
      a = (Lock)localObject;
      localObject = new Paint(7);
      d = (Paint)localObject;
      ((Paint)localObject).setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      return;
    }
  }
  
  public static int a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 0;
    case 5: 
    case 6: 
      return 90;
    case 3: 
    case 4: 
      return 180;
    }
    return 270;
  }
  
  private static Bitmap.Config a(Bitmap paramBitmap)
  {
    if (paramBitmap.getConfig() != null) {
      return paramBitmap.getConfig();
    }
    return Bitmap.Config.ARGB_8888;
  }
  
  public static Bitmap a(amd paramamd, Bitmap paramBitmap, int paramInt)
  {
    Matrix localMatrix = new Matrix();
    switch (paramInt)
    {
    }
    while (localMatrix.isIdentity())
    {
      return paramBitmap;
      localMatrix.setScale(-1.0F, 1.0F);
      continue;
      localMatrix.setRotate(180.0F);
      continue;
      localMatrix.setRotate(180.0F);
      localMatrix.postScale(-1.0F, 1.0F);
      continue;
      localMatrix.setRotate(90.0F);
      localMatrix.postScale(-1.0F, 1.0F);
      continue;
      localMatrix.setRotate(90.0F);
      continue;
      localMatrix.setRotate(-90.0F);
      localMatrix.postScale(-1.0F, 1.0F);
      continue;
      localMatrix.setRotate(-90.0F);
    }
    RectF localRectF = new RectF(0.0F, 0.0F, paramBitmap.getWidth(), paramBitmap.getHeight());
    localMatrix.mapRect(localRectF);
    paramamd = paramamd.a(Math.round(localRectF.width()), Math.round(localRectF.height()), a(paramBitmap));
    localMatrix.postTranslate(-left, -top);
    a(paramBitmap, paramamd, localMatrix);
    return paramamd;
  }
  
  public static Bitmap a(amd paramamd, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    float f1 = 0.0F;
    if ((paramBitmap.getWidth() == paramInt1) && (paramBitmap.getHeight() == paramInt2)) {
      return paramBitmap;
    }
    Matrix localMatrix = new Matrix();
    float f3;
    float f2;
    if (paramBitmap.getWidth() * paramInt2 > paramBitmap.getHeight() * paramInt1)
    {
      f3 = paramInt2 / paramBitmap.getHeight();
      f2 = (paramInt1 - paramBitmap.getWidth() * f3) * 0.5F;
    }
    for (;;)
    {
      localMatrix.setScale(f3, f3);
      localMatrix.postTranslate((int)(f2 + 0.5F), (int)(f1 + 0.5F));
      paramamd = paramamd.a(paramInt1, paramInt2, a(paramBitmap));
      a(paramBitmap, paramamd);
      a(paramBitmap, paramamd, localMatrix);
      return paramamd;
      f3 = paramInt1 / paramBitmap.getWidth();
      f1 = paramInt2;
      float f4 = paramBitmap.getHeight();
      f2 = 0.0F;
      f1 = (f1 - f4 * f3) * 0.5F;
    }
  }
  
  private static void a(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    a(paramBitmap2, paramBitmap1.hasAlpha());
  }
  
  private static void a(Bitmap paramBitmap1, Bitmap paramBitmap2, Matrix paramMatrix)
  {
    a.lock();
    try
    {
      paramBitmap2 = new Canvas(paramBitmap2);
      paramBitmap2.drawBitmap(paramBitmap1, paramMatrix, b);
      paramBitmap2.setBitmap(null);
      return;
    }
    finally
    {
      a.unlock();
    }
  }
  
  private static void a(Bitmap paramBitmap, boolean paramBoolean)
  {
    if ((Build.VERSION.SDK_INT >= 12) && (paramBitmap != null)) {
      paramBitmap.setHasAlpha(paramBoolean);
    }
  }
  
  public static Bitmap b(amd paramamd, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if ((paramBitmap.getWidth() == paramInt1) && (paramBitmap.getHeight() == paramInt2)) {}
    float f;
    int i;
    int j;
    do
    {
      return paramBitmap;
      f = Math.min(paramInt1 / paramBitmap.getWidth(), paramInt2 / paramBitmap.getHeight());
      i = (int)(paramBitmap.getWidth() * f);
      j = (int)(paramBitmap.getHeight() * f);
    } while ((paramBitmap.getWidth() == i) && (paramBitmap.getHeight() == j));
    paramamd = paramamd.a(i, j, a(paramBitmap));
    a(paramBitmap, paramamd);
    if (Log.isLoggable("TransformationUtils", 2))
    {
      new StringBuilder(32).append("request: ").append(paramInt1).append("x").append(paramInt2);
      paramInt1 = paramBitmap.getWidth();
      paramInt2 = paramBitmap.getHeight();
      new StringBuilder(32).append("toFit:   ").append(paramInt1).append("x").append(paramInt2);
      paramInt1 = paramamd.getWidth();
      paramInt2 = paramamd.getHeight();
      new StringBuilder(32).append("toReuse: ").append(paramInt1).append("x").append(paramInt2);
      new StringBuilder(25).append("minPct:   ").append(f);
    }
    Matrix localMatrix = new Matrix();
    localMatrix.setScale(f, f);
    a(paramBitmap, paramamd, localMatrix);
    return paramamd;
  }
  
  public static Bitmap c(amd paramamd, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if ((paramBitmap.getWidth() <= paramInt1) && (paramBitmap.getHeight() <= paramInt2)) {
      return paramBitmap;
    }
    return b(paramamd, paramBitmap, paramInt1, paramInt2);
  }
  
  public static Bitmap d(amd paramamd, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    paramInt1 = Math.min(paramInt1, paramInt2);
    float f1 = paramInt1 / 2.0F;
    paramInt2 = paramBitmap.getWidth();
    int i = paramBitmap.getHeight();
    float f3 = Math.max(paramInt1 / paramInt2, paramInt1 / i);
    float f2 = paramInt2 * f3;
    f3 = i * f3;
    float f4 = (paramInt1 - f2) / 2.0F;
    float f5 = (paramInt1 - f3) / 2.0F;
    RectF localRectF = new RectF(f4, f5, f2 + f4, f3 + f5);
    Bitmap localBitmap1;
    if (Bitmap.Config.ARGB_8888.equals(paramBitmap.getConfig())) {
      localBitmap1 = paramBitmap;
    }
    for (;;)
    {
      Bitmap localBitmap2 = paramamd.a(paramInt1, paramInt1, Bitmap.Config.ARGB_8888);
      a(localBitmap2, true);
      a.lock();
      try
      {
        Canvas localCanvas = new Canvas(localBitmap2);
        localCanvas.drawCircle(f1, f1, f1, c);
        localCanvas.drawBitmap(localBitmap1, null, localRectF, d);
        localCanvas.setBitmap(null);
        a.unlock();
        if (!localBitmap1.equals(paramBitmap)) {}
        return localBitmap2;
      }
      finally
      {
        a.unlock();
      }
      localBitmap1 = paramamd.a(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
      new Canvas(localBitmap1).drawBitmap(paramBitmap, 0.0F, 0.0F, null);
    }
  }
}

/* Location:
 * Qualified Name:     arz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */