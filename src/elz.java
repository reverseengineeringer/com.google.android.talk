import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.text.TextUtils;

public final class elz
{
  private static final Typeface a;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21) {}
    for (Typeface localTypeface = Typeface.create("sans-serif-medium", 0);; localTypeface = Typeface.create("sans-serif", 1))
    {
      a = localTypeface;
      return;
    }
  }
  
  public static boolean a(Context paramContext, Bitmap paramBitmap, String paramString, float paramFloat, int paramInt1, int paramInt2)
  {
    if (TextUtils.isEmpty(paramString)) {}
    int i;
    char c;
    label51:
    do
    {
      return false;
      paramString = paramString.toCharArray();
      int j = paramString.length;
      i = 0;
      if (i >= j) {
        break label272;
      }
      c = paramString[i];
      if (!Character.isLetter(c)) {
        break;
      }
      paramString = Character.toString(Character.toUpperCase(c));
    } while (paramString == null);
    paramBitmap = new Canvas(paramBitmap);
    paramBitmap.drawColor(0, PorterDuff.Mode.CLEAR);
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setColor(paramContext.getResources().getColor(paramInt2));
    RectF localRectF = new RectF(0.0F, 0.0F, paramFloat + 0.0F, paramFloat + 0.0F);
    switch (ema.a[(paramInt1 - 1)])
    {
    default: 
      paramBitmap.drawOval(localRectF, localPaint);
    }
    for (;;)
    {
      localPaint = new Paint();
      localPaint.setTextAlign(Paint.Align.CENTER);
      localPaint.setColor(paramContext.getResources().getColor(17170443));
      localPaint.setTypeface(a);
      localPaint.setTextSize(0.6F * paramFloat);
      localPaint.setAntiAlias(true);
      paramContext = new Rect();
      localPaint.getTextBounds(paramString, 0, 1, paramContext);
      paramBitmap.drawText(paramString, paramFloat / 2.0F + 0.0F, (bottom + paramFloat - top) / 2.0F + 0.0F, localPaint);
      return true;
      if (!Character.isDigit(c))
      {
        i += 1;
        break;
      }
      label272:
      paramString = null;
      break label51;
      paramBitmap.drawRect(localRectF, localPaint);
    }
  }
}

/* Location:
 * Qualified Name:     elz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */