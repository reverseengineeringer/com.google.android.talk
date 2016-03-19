import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SpinnerAdapter;

final class xl
  extends za
{
  ListAdapter a;
  final Rect b = new Rect();
  private CharSequence i;
  
  public xl(xi paramxi, Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramxi);
    e();
    d();
    a(new xm(this, paramxi));
  }
  
  public CharSequence a()
  {
    return i;
  }
  
  public void a(ListAdapter paramListAdapter)
  {
    super.a(paramListAdapter);
    a = paramListAdapter;
  }
  
  public void a(CharSequence paramCharSequence)
  {
    i = paramCharSequence;
  }
  
  void b()
  {
    Object localObject = f();
    int j;
    int n;
    int i1;
    int i2;
    int k;
    if (localObject != null)
    {
      ((Drawable)localObject).getPadding(c.d);
      if (vz.a(c))
      {
        j = c.d.right;
        n = c.getPaddingLeft();
        i1 = c.getPaddingRight();
        i2 = c.getWidth();
        if (c.c != -2) {
          break label240;
        }
        k = c.a((SpinnerAdapter)a, f());
        int m = c.getContext().getResources().getDisplayMetrics().widthPixels - c.d.left - c.d.right;
        if (k <= m) {
          break label288;
        }
        k = m;
      }
    }
    label165:
    label240:
    label288:
    for (;;)
    {
      e(Math.max(k, i2 - n - i1));
      if (vz.a(c)) {
        j = i2 - i1 - j() + j;
      }
      for (;;)
      {
        a(j);
        return;
        j = -c.d.left;
        break;
        localObject = c.d;
        c.d.right = 0;
        left = 0;
        j = 0;
        break;
        if (c.c == -1)
        {
          e(i2 - n - i1);
          break label165;
        }
        e(c.c);
        break label165;
        j += n;
      }
    }
  }
  
  public void c()
  {
    boolean bool = n();
    b();
    l();
    super.c();
    p().setChoiceMode(1);
    f(c.getSelectedItemPosition());
    if (bool) {}
    ViewTreeObserver localViewTreeObserver;
    do
    {
      return;
      localViewTreeObserver = c.getViewTreeObserver();
    } while (localViewTreeObserver == null);
    xn localxn = new xn(this);
    localViewTreeObserver.addOnGlobalLayoutListener(localxn);
    a(new xo(this, localxn));
  }
}

/* Location:
 * Qualified Name:     xl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */