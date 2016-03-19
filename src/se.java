import android.app.Activity;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

public final class se
  extends Drawable
  implements qk
{
  private static final float c = (float)Math.toRadians(45.0D);
  public final Activity a;
  private final Paint b = new Paint();
  private float d;
  private float e;
  private float f;
  private float g;
  private boolean h;
  private final Path i = new Path();
  private final int j;
  private boolean k = false;
  private float l;
  private float m;
  private int n = 2;
  
  public se(Activity paramActivity, Context paramContext)
  {
    this(paramContext);
    a = paramActivity;
  }
  
  private se(Context paramContext)
  {
    b.setStyle(Paint.Style.STROKE);
    b.setStrokeJoin(Paint.Join.MITER);
    b.setStrokeCap(Paint.Cap.BUTT);
    b.setAntiAlias(true);
    paramContext = paramContext.getTheme().obtainStyledAttributes(null, sb.af, aen.S, aal.bv);
    a(paramContext.getColor(sb.aj, 0));
    b(paramContext.getDimension(sb.an, 0.0F));
    a(paramContext.getBoolean(sb.am, true));
    c(Math.round(paramContext.getDimension(sb.al, 0.0F)));
    j = paramContext.getDimensionPixelSize(sb.ak, 0);
    e = Math.round(paramContext.getDimension(sb.ai, 0.0F));
    d = Math.round(paramContext.getDimension(sb.ag, 0.0F));
    f = paramContext.getDimension(sb.ah, 0.0F);
    paramContext.recycle();
  }
  
  private void a(int paramInt)
  {
    if (paramInt != b.getColor())
    {
      b.setColor(paramInt);
      invalidateSelf();
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (h != paramBoolean)
    {
      h = paramBoolean;
      invalidateSelf();
    }
  }
  
  private void b(float paramFloat)
  {
    if (b.getStrokeWidth() != paramFloat)
    {
      b.setStrokeWidth(paramFloat);
      m = ((float)(paramFloat / 2.0F * Math.cos(c)));
      invalidateSelf();
    }
  }
  
  private void b(boolean paramBoolean)
  {
    if (k != paramBoolean)
    {
      k = paramBoolean;
      invalidateSelf();
    }
  }
  
  private void c(float paramFloat)
  {
    if (paramFloat != g)
    {
      g = paramFloat;
      invalidateSelf();
    }
  }
  
  private void d(float paramFloat)
  {
    if (l != paramFloat)
    {
      l = paramFloat;
      invalidateSelf();
    }
  }
  
  public void a(float paramFloat)
  {
    if (paramFloat == 1.0F) {
      b(true);
    }
    for (;;)
    {
      d(paramFloat);
      return;
      if (paramFloat == 0.0F) {
        b(false);
      }
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    int i1;
    float f1;
    float f2;
    switch (n)
    {
    case 2: 
    default: 
      if (fv.a.d(this) == 1)
      {
        i1 = 1;
        f1 = (float)Math.sqrt(d * d * 2.0F);
        f2 = e;
        float f6 = f2 + (f1 - f2) * l;
        f1 = e;
        float f3 = f1 + (f - f1) * l;
        float f4 = Math.round(0.0F + m * l);
        float f7 = 0.0F + c * l;
        if (i1 == 0) {
          break label480;
        }
        f1 = 0.0F;
        label144:
        if (i1 == 0) {
          break label487;
        }
        f2 = 180.0F;
        label152:
        float f5 = l;
        float f8 = (float)Math.round(f6 * Math.cos(f7));
        f6 = (float)Math.round(f6 * Math.sin(f7));
        i.rewind();
        f7 = g + b.getStrokeWidth();
        f7 += (-m - f7) * l;
        float f9 = -f3 / 2.0F;
        i.moveTo(f9 + f4, 0.0F);
        i.rLineTo(f3 - f4 * 2.0F, 0.0F);
        i.moveTo(f9, f7);
        i.rLineTo(f8, f6);
        i.moveTo(f9, -f7);
        i.rLineTo(f8, -f6);
        i.close();
        paramCanvas.save();
        f3 = b.getStrokeWidth();
        f3 = (float)(((int)(localRect.height() - 3.0F * f3 - g * 2.0F) / 4 << 1) + (f3 * 1.5D + g));
        paramCanvas.translate(localRect.centerX(), f3);
        if (!h) {
          break label498;
        }
        if ((i1 ^ k) == 0) {
          break label492;
        }
        i1 = -1;
        label407:
        paramCanvas.rotate(i1 * ((f2 - f1) * f5 + f1));
      }
      break;
    }
    for (;;)
    {
      paramCanvas.drawPath(i, b);
      paramCanvas.restore();
      return;
      i1 = 0;
      break;
      i1 = 1;
      break;
      if (fv.a.d(this) == 0)
      {
        i1 = 1;
        break;
      }
      i1 = 0;
      break;
      i1 = 0;
      break;
      label480:
      f1 = -180.0F;
      break label144;
      label487:
      f2 = 0.0F;
      break label152;
      label492:
      i1 = 1;
      break label407;
      label498:
      if (i1 != 0) {
        paramCanvas.rotate(180.0F);
      }
    }
  }
  
  public int getIntrinsicHeight()
  {
    return j;
  }
  
  public int getIntrinsicWidth()
  {
    return j;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public void setAlpha(int paramInt)
  {
    if (paramInt != b.getAlpha())
    {
      b.setAlpha(paramInt);
      invalidateSelf();
    }
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    b.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
}

/* Location:
 * Qualified Name:     se
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */