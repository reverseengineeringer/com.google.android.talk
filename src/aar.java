import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

final class aar
  extends Drawable
{
  private float a;
  private final Paint b;
  private final RectF c;
  private final Rect d;
  private float e;
  private boolean f = false;
  private boolean g = true;
  
  public aar(int paramInt, float paramFloat)
  {
    a = paramFloat;
    b = new Paint(5);
    b.setColor(paramInt);
    c = new RectF();
    d = new Rect();
  }
  
  private void a(Rect paramRect)
  {
    Rect localRect = paramRect;
    if (paramRect == null) {
      localRect = getBounds();
    }
    c.set(left, top, right, bottom);
    d.set(localRect);
    if (f)
    {
      float f1 = aas.a(e, a, g);
      float f2 = aas.b(e, a, g);
      d.inset((int)Math.ceil(f2), (int)Math.ceil(f1));
      c.set(d);
    }
  }
  
  float a()
  {
    return e;
  }
  
  void a(float paramFloat, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramFloat == e) && (f == paramBoolean1) && (g == paramBoolean2)) {
      return;
    }
    e = paramFloat;
    f = paramBoolean1;
    g = paramBoolean2;
    a(null);
    invalidateSelf();
  }
  
  public float b()
  {
    return a;
  }
  
  public void draw(Canvas paramCanvas)
  {
    paramCanvas.drawRoundRect(c, a, a, b);
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public void getOutline(Outline paramOutline)
  {
    paramOutline.setRoundRect(d, a);
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    a(paramRect);
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}

/* Location:
 * Qualified Name:     aar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */