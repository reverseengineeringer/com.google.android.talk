import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.view.Gravity;
import java.nio.ByteBuffer;

public class asn
  extends Drawable
  implements Animatable, ast
{
  private final aso a;
  private boolean b;
  private boolean c;
  private boolean d;
  private boolean e = true;
  private int f;
  private int g = -1;
  private boolean h;
  private Paint i;
  private Rect j;
  
  public asn(Context paramContext, aik paramaik, amd paramamd, ajd<Bitmap> paramajd, int paramInt1, int paramInt2, Bitmap paramBitmap)
  {
    this(new aso(paramContext, paramamd, new asr(paramContext, paramaik, paramInt1, paramInt2, paramajd, paramBitmap)));
  }
  
  asn(aso paramaso)
  {
    a = ((aso)aal.a(paramaso, "Argument must not be null"));
  }
  
  private void h()
  {
    if (a.c.g() == 1) {
      invalidateSelf();
    }
    while (b) {
      return;
    }
    b = true;
    a.c.a(this);
    invalidateSelf();
  }
  
  private void i()
  {
    b = false;
    a.c.b(this);
  }
  
  private Rect j()
  {
    if (j == null) {
      j = new Rect();
    }
    return j;
  }
  
  private Paint k()
  {
    if (i == null) {
      i = new Paint(2);
    }
    return i;
  }
  
  public int a()
  {
    return a.c.d();
  }
  
  public void a(ajd<Bitmap> paramajd, Bitmap paramBitmap)
  {
    a.c.a(paramajd, paramBitmap);
  }
  
  public Bitmap b()
  {
    return a.c.a();
  }
  
  public ByteBuffer c()
  {
    return a.c.f();
  }
  
  public int d()
  {
    return a.c.g();
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (d) {
      return;
    }
    if (h)
    {
      Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), j());
      h = false;
    }
    paramCanvas.drawBitmap(a.c.i(), null, j(), k());
  }
  
  public int e()
  {
    return a.c.e();
  }
  
  public void f()
  {
    if ((Build.VERSION.SDK_INT >= 11) && (getCallback() == null))
    {
      stop();
      invalidateSelf();
    }
    do
    {
      return;
      invalidateSelf();
      if (e() == d() - 1) {
        f += 1;
      }
    } while ((g == -1) || (f < g));
    stop();
  }
  
  public void g()
  {
    d = true;
    a.c.h();
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return a;
  }
  
  public int getIntrinsicHeight()
  {
    return a.c.c();
  }
  
  public int getIntrinsicWidth()
  {
    return a.c.b();
  }
  
  public int getOpacity()
  {
    return -2;
  }
  
  public boolean isRunning()
  {
    return b;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    h = true;
  }
  
  public void setAlpha(int paramInt)
  {
    k().setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    k().setColorFilter(paramColorFilter);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    e = paramBoolean1;
    if (!paramBoolean1) {
      i();
    }
    for (;;)
    {
      return super.setVisible(paramBoolean1, paramBoolean2);
      if (c) {
        h();
      }
    }
  }
  
  public void start()
  {
    c = true;
    f = 0;
    if (e) {
      h();
    }
  }
  
  public void stop()
  {
    c = false;
    i();
  }
}

/* Location:
 * Qualified Name:     asn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */