import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;

public final class gvs
  extends Drawable
{
  static final double a = Math.cos(Math.toRadians(45.0D));
  static aat c;
  final int b;
  Paint d;
  Paint e;
  Paint f;
  final RectF g;
  float h;
  Path i;
  float j;
  float k;
  float l;
  private boolean m;
  private final int n;
  private final int o;
  
  float a()
  {
    return Math.max(j, h + b + j / 2.0F) * 2.0F + (j + b) * 2.0F;
  }
  
  float b()
  {
    return Math.max(j, h + b + j * 1.5F / 2.0F) * 2.0F + (j * 1.5F + b) * 2.0F;
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i2 = 1;
    if (h + k == 0.0F) {
      return;
    }
    float f1;
    float f2;
    float f3;
    int i1;
    int i3;
    float f4;
    if (m)
    {
      Object localObject1 = getBounds();
      g.set((Rect)localObject1);
      localObject1 = new RectF(-h, -h, h, h);
      Object localObject2 = new RectF((RectF)localObject1);
      ((RectF)localObject2).inset(-k, -k);
      if (i == null)
      {
        i = new Path();
        i.setFillType(Path.FillType.EVEN_ODD);
        i.moveTo(-h, 0.0F);
        i.rLineTo(-k, 0.0F);
        i.arcTo((RectF)localObject2, 180.0F, 90.0F, false);
        i.arcTo((RectF)localObject1, 270.0F, -90.0F, false);
        i.close();
        f1 = h / (h + k);
        localObject1 = e;
        f2 = h;
        f3 = k;
        i1 = n;
        i3 = n;
        int i4 = o;
        localObject2 = Shader.TileMode.CLAMP;
        ((Paint)localObject1).setShader(new RadialGradient(0.0F, 0.0F, f2 + f3, new int[] { i1, i3, i4 }, new float[] { 0.0F, f1, 1.0F }, (Shader.TileMode)localObject2));
        localObject1 = f;
        f1 = -h;
        f2 = k;
        f3 = -h;
        f4 = k;
        i1 = n;
        i3 = n;
        i4 = o;
        localObject2 = Shader.TileMode.CLAMP;
        ((Paint)localObject1).setShader(new LinearGradient(0.0F, f1 + f2, 0.0F, f3 - f4, new int[] { i1, i3, i4 }, new float[] { 0.0F, 0.5F, 1.0F }, (Shader.TileMode)localObject2));
        f.setAntiAlias(false);
        m = false;
      }
    }
    else
    {
      paramCanvas.translate(0.0F, l / 2.0F);
      f1 = -h - k;
      f2 = h + b + l / 2.0F;
      if (g.width() - f2 * 2.0F <= 0.0F) {
        break label874;
      }
      i1 = 1;
      label475:
      if (g.height() - f2 * 2.0F <= 0.0F) {
        break label880;
      }
    }
    for (;;)
    {
      i3 = paramCanvas.save();
      paramCanvas.translate(g.left + f2, g.top + f2);
      paramCanvas.drawPath(i, e);
      if (i1 != 0) {
        paramCanvas.drawRect(0.0F, f1, g.width() - f2 * 2.0F, -h, f);
      }
      paramCanvas.restoreToCount(i3);
      i3 = paramCanvas.save();
      paramCanvas.translate(g.right - f2, g.bottom - f2);
      paramCanvas.rotate(180.0F);
      paramCanvas.drawPath(i, e);
      if (i1 != 0)
      {
        f3 = g.width();
        f4 = -h;
        paramCanvas.drawRect(0.0F, f1, f3 - f2 * 2.0F, k + f4, f);
      }
      paramCanvas.restoreToCount(i3);
      i1 = paramCanvas.save();
      paramCanvas.translate(g.left + f2, g.bottom - f2);
      paramCanvas.rotate(270.0F);
      paramCanvas.drawPath(i, e);
      if (i2 != 0) {
        paramCanvas.drawRect(0.0F, f1, g.height() - f2 * 2.0F, -h, f);
      }
      paramCanvas.restoreToCount(i1);
      i1 = paramCanvas.save();
      paramCanvas.translate(g.right - f2, g.top + f2);
      paramCanvas.rotate(90.0F);
      paramCanvas.drawPath(i, e);
      if (i2 != 0) {
        paramCanvas.drawRect(0.0F, f1, g.height() - f2 * 2.0F, -h, f);
      }
      paramCanvas.restoreToCount(i1);
      paramCanvas.translate(0.0F, -l / 2.0F);
      c.a(paramCanvas, g, h, d);
      return;
      i.reset();
      break;
      label874:
      i1 = 0;
      break label475;
      label880:
      i2 = 0;
    }
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    m = true;
  }
  
  public void setAlpha(int paramInt)
  {
    d.setAlpha(paramInt);
    e.setAlpha(paramInt);
    f.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    d.setColorFilter(paramColorFilter);
    e.setColorFilter(paramColorFilter);
    f.setColorFilter(paramColorFilter);
  }
}

/* Location:
 * Qualified Name:     gvs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */