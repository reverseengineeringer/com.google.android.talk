import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;

public final class bty
  extends LinearLayout
{
  private final int a;
  private final int b;
  private final Paint c;
  private final int d;
  private final Paint e;
  private int f;
  private float g;
  
  public bty(Context paramContext, int paramInt)
  {
    this(paramContext, paramInt, (byte)0);
  }
  
  private bty(Context paramContext, int paramInt, byte paramByte)
  {
    super(paramContext, null);
    setWillNotDraw(false);
    a = paramInt;
    float f1 = getResourcesgetDisplayMetricsdensity;
    TypedValue localTypedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(16842800, localTypedValue, true);
    paramInt = data;
    b = ((int)(0.0F * f1));
    c = new Paint();
    c.setColor(Color.argb(38, Color.red(paramInt), Color.green(paramInt), Color.blue(paramInt)));
    d = ((int)(f1 * 3.0F));
    e = new Paint();
    e.setColor(getResources().getColor(aal.kS));
  }
  
  void a(int paramInt, float paramFloat)
  {
    f = paramInt;
    g = paramFloat;
    invalidate();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    int n = getHeight();
    if (getChildCount() > 0)
    {
      View localView = getChildAt(f);
      int m = localView.getLeft();
      int k = localView.getRight();
      int j = k;
      int i = m;
      if (g > 0.0F)
      {
        j = k;
        i = m;
        if (f < getChildCount() - 1)
        {
          localView = getChildAt(f + 1);
          float f1 = g;
          float f2 = localView.getLeft();
          float f3 = g;
          i = (int)(m * (1.0F - f3) + f1 * f2);
          f1 = g;
          f2 = localView.getRight();
          f3 = g;
          j = (int)(k * (1.0F - f3) + f2 * f1);
        }
      }
      paramCanvas.drawRect(i, n - d, j, n, e);
    }
    if (a == 0) {
      paramCanvas.drawRect(0.0F, n - b, getWidth(), n, c);
    }
    while (a != 1) {
      return;
    }
    paramCanvas.drawRect(0.0F, 0.0F, getWidth(), b, c);
  }
}

/* Location:
 * Qualified Name:     bty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */