import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;

class fbx
  extends ImageSpan
{
  final int a;
  final int b;
  private Bitmap d;
  private boolean e = false;
  
  public fbx(fbu paramfbu, Drawable paramDrawable, String paramString, int paramInt1, int paramInt2)
  {
    super(paramDrawable, paramString, 1);
    a = paramInt1;
    b = paramInt2;
  }
  
  void a()
  {
    try
    {
      e = true;
      if (d != null)
      {
        c.a.a(d);
        d = null;
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  void a(Bitmap paramBitmap)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 22	fbx:e	Z
    //   6: ifeq +17 -> 23
    //   9: aload_0
    //   10: getfield 17	fbx:c	Lfbu;
    //   13: getfield 35	fbu:a	Lexd;
    //   16: aload_1
    //   17: invokevirtual 40	exd:a	(Landroid/graphics/Bitmap;)V
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: aload_0
    //   24: aload_1
    //   25: putfield 30	fbx:d	Landroid/graphics/Bitmap;
    //   28: goto -8 -> 20
    //   31: astore_1
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	fbx
    //   0	36	1	paramBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   2	20	31	finally
    //   20	22	31	finally
    //   23	28	31	finally
    //   32	34	31	finally
  }
  
  public void draw(Canvas paramCanvas, CharSequence paramCharSequence, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4, int paramInt5, Paint paramPaint)
  {
    if (d != null)
    {
      paramInt1 = aal.oJ.getResources().getDimensionPixelOffset(aal.dZ);
      fbu.c.set(0, 0, d.getWidth(), d.getHeight());
      paramCharSequence = fbu.d;
      paramInt2 = (int)paramFloat;
      float f = a;
      paramCharSequence.set(paramInt2 + paramInt1, paramInt3, (int)(paramInt1 + (f + paramFloat)), b + paramInt3);
      paramCanvas.drawBitmap(d, fbu.c, fbu.d, null);
    }
  }
  
  public int getSize(Paint paramPaint, CharSequence paramCharSequence, int paramInt1, int paramInt2, Paint.FontMetricsInt paramFontMetricsInt)
  {
    paramInt1 = super.getSize(paramPaint, paramCharSequence, paramInt1, paramInt2, paramFontMetricsInt);
    if (paramFontMetricsInt != null)
    {
      paramPaint.getFontMetrics(c.b);
      ascent = ((int)(c.b.ascent + 0.5D));
      descent = ((int)(c.b.descent + 0.5D));
      top = ((int)(c.b.top + 0.5D));
      bottom = ((int)(c.b.bottom + 0.5D));
    }
    return paramInt1;
  }
}

/* Location:
 * Qualified Name:     fbx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */