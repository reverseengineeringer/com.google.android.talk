import android.content.Context;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;

public final class abb
  implements tz
{
  tl a;
  public tp b;
  
  public abb(Toolbar paramToolbar) {}
  
  public void a(Context paramContext, tl paramtl)
  {
    if ((a != null) && (b != null)) {
      a.b(b);
    }
    a = paramtl;
  }
  
  public void a(tl paramtl, boolean paramBoolean) {}
  
  public boolean a(ue paramue)
  {
    return false;
  }
  
  public void b(boolean paramBoolean)
  {
    int k = 0;
    int j;
    int m;
    int i;
    if (b != null)
    {
      j = k;
      if (a != null)
      {
        m = a.size();
        i = 0;
      }
    }
    for (;;)
    {
      j = k;
      if (i < m)
      {
        if (a.getItem(i) == b) {
          j = 1;
        }
      }
      else
      {
        if (j == 0) {
          c(b);
        }
        return;
      }
      i += 1;
    }
  }
  
  public boolean b()
  {
    return false;
  }
  
  public boolean b(tp paramtp)
  {
    Object localObject = c;
    if (c == null)
    {
      c = new ImageButton(((Toolbar)localObject).getContext(), null, aen.ag);
      c.setImageDrawable(a);
      c.setContentDescription(b);
      abc localabc = ((Toolbar)localObject).r();
      a = (e & 0x70 | 0x800003);
      b = 2;
      c.setLayoutParams(localabc);
      c.setOnClickListener(new aba((Toolbar)localObject));
    }
    if (c.c.getParent() != c) {
      c.addView(c.c);
    }
    c.d = paramtp.getActionView();
    b = paramtp;
    if (c.d.getParent() != c)
    {
      localObject = c.r();
      a = (c.e & 0x70 | 0x800003);
      b = 2;
      c.d.setLayoutParams((ViewGroup.LayoutParams)localObject);
      c.addView(c.d);
    }
    c.t();
    c.requestLayout();
    paramtp.e(true);
    if ((c.d instanceof wd)) {
      ((wd)c.d).a();
    }
    return true;
  }
  
  public boolean c(tp paramtp)
  {
    if ((c.d instanceof wd)) {
      ((wd)c.d).b();
    }
    c.removeView(c.d);
    c.removeView(c.c);
    c.d = null;
    c.u();
    b = null;
    c.requestLayout();
    paramtp.e(false);
    return true;
  }
}

/* Location:
 * Qualified Name:     abb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */