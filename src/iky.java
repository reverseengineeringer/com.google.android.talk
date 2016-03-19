import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.os.Build.VERSION;
import android.util.Log;

public final class iky
{
  private static final hxq<Paint> a = new hxq((byte)0);
  private static final hxq<Paint> b = new hxq((byte)0);
  
  public static Bitmap a(Bitmap arg0)
  {
    long l1 = System.nanoTime();
    if (Build.VERSION.SDK_INT >= 12) {
      ???.setHasAlpha(true);
    }
    Bitmap localBitmap;
    if (???.isMutable())
    {
      localBitmap = ???;
      if (???.hasAlpha()) {}
    }
    else
    {
      localBitmap = ???.copy(Bitmap.Config.ARGB_8888, true);
    }
    Canvas localCanvas = new Canvas(localBitmap);
    if (aal.v()) {
      a(localCanvas, (Paint)a.b());
    }
    for (;;)
    {
      if (Log.isLoggable("BitmapShapeUtils", 3))
      {
        long l2 = System.nanoTime();
        new StringBuilder(43).append("Avatar rounding took ").append(l2 - l1).append("ns");
      }
      return localBitmap;
      synchronized ((Paint)b.b())
      {
        a(localCanvas, ???);
      }
    }
  }
  
  public static Bitmap a(Bitmap paramBitmap, float paramFloat)
  {
    return a(paramBitmap, paramFloat, null);
  }
  
  public static Bitmap a(Bitmap paramBitmap1, float paramFloat, Bitmap paramBitmap2)
  {
    if (paramBitmap1 == null) {
      return null;
    }
    Object localObject1;
    int i;
    if ((paramBitmap2 != null) && ((paramBitmap2.getWidth() != paramBitmap1.getWidth()) || (paramBitmap2.getHeight() != paramBitmap1.getHeight()) || (!paramBitmap2.isMutable())))
    {
      localObject1 = String.valueOf("Given bitmap cannot be reused; Invalid dimensions or immutable: mutable=");
      boolean bool = paramBitmap2.isMutable();
      i = paramBitmap2.getWidth();
      j = paramBitmap2.getHeight();
      k = paramBitmap1.getWidth();
      int m = paramBitmap1.getHeight();
      throw new IllegalArgumentException(String.valueOf(localObject1).length() + 85 + (String)localObject1 + bool + " forMask dimens=[" + i + "x" + j + " bitmap dimens=[" + k + "x" + m + "]");
    }
    int j = paramBitmap1.getWidth();
    int k = paramBitmap1.getHeight();
    if (paramBitmap2 != null)
    {
      i = 1;
      label176:
      if (paramBitmap2 != null) {
        break label250;
      }
    }
    for (;;)
    {
      try
      {
        localObject1 = Bitmap.createBitmap(j, k, Bitmap.Config.ARGB_8888);
        paramBitmap2 = (Bitmap)localObject1;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        continue;
      }
      if (paramBitmap2 != null) {
        break label266;
      }
      if (!Log.isLoggable("BitmapShapeUtils", 5)) {
        break;
      }
      new StringBuilder(85).append("Failed to allocate a bitmap for roundedCornersBitmap of size: ").append(j).append("x").append(k);
      return null;
      i = 0;
      break label176;
      label250:
      if (Build.VERSION.SDK_INT >= 12) {
        paramBitmap2.setHasAlpha(true);
      }
    }
    label266:
    Object localObject2 = new BitmapShader(paramBitmap1, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setShader((Shader)localObject2);
    paramBitmap1 = new RectF(0.0F, 0.0F, paramBitmap1.getWidth(), paramBitmap1.getHeight());
    localObject2 = new Canvas(paramBitmap2);
    if (i != 0) {
      ((Canvas)localObject2).drawColor(0, PorterDuff.Mode.CLEAR);
    }
    ((Canvas)localObject2).drawRoundRect(paramBitmap1, paramFloat, paramFloat, localPaint);
    return paramBitmap2;
  }
  
  private static void a(Canvas paramCanvas, Paint paramPaint)
  {
    float f1 = Math.min(paramCanvas.getWidth(), paramCanvas.getHeight()) / 2.0F;
    float f2 = (float)Math.hypot(paramCanvas.getWidth(), paramCanvas.getHeight()) - f1;
    paramPaint.setStrokeWidth(f2);
    paramCanvas.drawCircle(paramCanvas.getWidth() / 2.0F, paramCanvas.getHeight() / 2.0F, f1 + f2 / 2.0F, paramPaint);
  }
}

/* Location:
 * Qualified Name:     iky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */