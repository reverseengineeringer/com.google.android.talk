import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;

public class xs
  extends FrameLayout
  implements xu
{
  private static final xx a;
  private boolean b;
  private boolean c;
  private final Rect d = new Rect();
  private final Rect e = new Rect();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21) {
      a = new xt();
    }
    for (;;)
    {
      a.a();
      return;
      if (Build.VERSION.SDK_INT >= 17) {
        a = new xy();
      } else {
        a = new xv();
      }
    }
  }
  
  public xs(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null, 0);
  }
  
  public xs(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet, 0);
  }
  
  public xs(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, sc.m, paramInt, aal.bB);
    paramInt = paramAttributeSet.getColor(sc.n, 0);
    float f4 = paramAttributeSet.getDimension(sc.o, 0.0F);
    float f2 = paramAttributeSet.getDimension(sc.p, 0.0F);
    float f3 = paramAttributeSet.getDimension(sc.q, 0.0F);
    b = paramAttributeSet.getBoolean(sc.s, false);
    c = paramAttributeSet.getBoolean(sc.r, true);
    int i = paramAttributeSet.getDimensionPixelSize(sc.t, 0);
    d.left = paramAttributeSet.getDimensionPixelSize(sc.v, i);
    d.top = paramAttributeSet.getDimensionPixelSize(sc.x, i);
    d.right = paramAttributeSet.getDimensionPixelSize(sc.w, i);
    d.bottom = paramAttributeSet.getDimensionPixelSize(sc.u, i);
    float f1 = f3;
    if (f2 > f3) {
      f1 = f2;
    }
    paramAttributeSet.recycle();
    a.a(this, paramContext, paramInt, f4, f2, f1);
  }
  
  public boolean N_()
  {
    return c;
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    e.set(paramInt1, paramInt2, paramInt3, paramInt4);
    super.setPadding(d.left + paramInt1, d.top + paramInt2, d.right + paramInt3, d.bottom + paramInt4);
  }
  
  public boolean a()
  {
    return b;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (!(a instanceof xt))
    {
      int i = View.MeasureSpec.getMode(paramInt1);
      switch (i)
      {
      default: 
        i = View.MeasureSpec.getMode(paramInt2);
        switch (i)
        {
        }
        break;
      }
      for (;;)
      {
        super.onMeasure(paramInt1, paramInt2);
        return;
        paramInt1 = View.MeasureSpec.makeMeasureSpec(Math.max((int)Math.ceil(a.a(this)), View.MeasureSpec.getSize(paramInt1)), i);
        break;
        paramInt2 = View.MeasureSpec.makeMeasureSpec(Math.max((int)Math.ceil(a.b(this)), View.MeasureSpec.getSize(paramInt2)), i);
      }
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void setPaddingRelative(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
}

/* Location:
 * Qualified Name:     xs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */