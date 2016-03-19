import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import java.util.ArrayList;
import java.util.List;

public class gvz
  extends Drawable
  implements Animatable, Handler.Callback
{
  private static final String a = gvz.class.getSimpleName();
  private final int b;
  private final int c;
  private gwb[] d;
  private Bitmap e;
  private Handler f;
  private List<aak> g;
  private boolean h = false;
  private boolean i = false;
  private int j = -1;
  private int k = 33;
  
  public gvz(Bitmap paramBitmap, msw parammsw, boolean paramBoolean)
  {
    b = a;
    c = b;
    if ((parammsw == null) || (c == null) || (c.length == 0)) {
      return;
    }
    h = paramBoolean;
    g = new ArrayList();
    e = paramBitmap;
    d = new gwb[c.length];
    int m = 0;
    label97:
    gwb localgwb;
    if (m < c.length)
    {
      paramBitmap = c[m];
      localgwb = new gwb(this);
      d[m] = localgwb;
      if (a != null) {
        break label159;
      }
      a = new gwa[0];
    }
    for (;;)
    {
      m += 1;
      break label97;
      break;
      label159:
      a = new gwa[a.length];
      int n = 0;
      while (n < a.length)
      {
        msv localmsv = a[n];
        Rect localRect = new Rect(c, d, c + e, d + f);
        a[n] = new gwa(this, localRect, a, b);
        n += 1;
      }
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    Object localObject1 = getBounds();
    paramCanvas.scale(((Rect)localObject1).width() / b, ((Rect)localObject1).height() / c);
    int m = 0;
    while (m <= j)
    {
      localObject1 = d[m].a;
      int i1 = localObject1.length;
      int n = 0;
      while (n < i1)
      {
        Object localObject2 = localObject1[n];
        paramCanvas.drawBitmap(e, a, b, null);
        n += 1;
      }
      m += 1;
    }
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    int m = 0;
    if (!i) {
      return false;
    }
    switch (what)
    {
    default: 
      return false;
    }
    long l1 = System.currentTimeMillis();
    j += 1;
    if (j >= d.length)
    {
      if (h) {
        j = 0;
      }
      while (m < g.size())
      {
        g.get(m);
        m += 1;
        continue;
        j = (d.length - 1);
      }
    }
    invalidateSelf();
    long l2 = System.currentTimeMillis();
    f.sendEmptyMessageDelayed(10, Math.max(0L, k - (l2 - l1)));
    return true;
  }
  
  public boolean isRunning()
  {
    return i;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool = super.setVisible(paramBoolean1, paramBoolean2);
    if (paramBoolean1)
    {
      if ((bool) || (paramBoolean2)) {
        start();
      }
      return bool;
    }
    stop();
    return bool;
  }
  
  public void start()
  {
    i = true;
    f = new Handler(this);
    f.sendEmptyMessage(10);
  }
  
  public void stop()
  {
    i = false;
    f.removeCallbacksAndMessages(null);
  }
}

/* Location:
 * Qualified Name:     gvz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */