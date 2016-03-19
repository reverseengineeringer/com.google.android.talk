import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

public final class fcd
  extends Drawable
  implements exv
{
  private Paint a;
  private exs b;
  private Bitmap c;
  private boolean d = true;
  private Runnable e;
  
  public fcd(exs paramexs)
  {
    a(paramexs);
  }
  
  public void a()
  {
    if (b != null) {
      b.g();
    }
  }
  
  public void a(Bitmap paramBitmap)
  {
    if (e != null)
    {
      e.run();
      e = null;
    }
    c = paramBitmap;
    invalidateSelf();
  }
  
  public void a(exs paramexs)
  {
    a = new Paint(2);
    c();
    if (paramexs != null)
    {
      b = paramexs;
      b.a(this);
      b.a(d);
    }
  }
  
  public void a(Runnable paramRunnable)
  {
    e = paramRunnable;
  }
  
  public void b()
  {
    if (b != null) {
      b.h();
    }
  }
  
  public void c()
  {
    if (b != null)
    {
      b.h();
      b.a(null);
      b.j();
      b = null;
    }
    c = null;
    e = null;
  }
  
  public void d()
  {
    d = false;
    if (b != null) {
      b.a(false);
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    if ((c != null) && (!c.isRecycled())) {
      paramCanvas.drawBitmap(c, 0.0F, 0.0F, a);
    }
  }
  
  public int getIntrinsicHeight()
  {
    if (b != null) {
      return b.e();
    }
    return 0;
  }
  
  public int getIntrinsicWidth()
  {
    if (b != null) {
      return b.d();
    }
    return 0;
  }
  
  public int getOpacity()
  {
    return -1;
  }
  
  public void setAlpha(int paramInt)
  {
    a.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
  }
}

/* Location:
 * Qualified Name:     fcd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */