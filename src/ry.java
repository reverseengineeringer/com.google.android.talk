import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;

final class ry
{
  int a;
  int b;
  int c;
  int d;
  int e;
  int f;
  ViewGroup g;
  View h;
  View i;
  tl j;
  tj k;
  Context l;
  boolean m;
  boolean n;
  boolean o;
  public boolean p;
  boolean q;
  boolean r;
  Bundle s;
  
  ry(int paramInt)
  {
    a = paramInt;
    q = false;
  }
  
  ub a(ua paramua)
  {
    if (j == null) {
      return null;
    }
    if (k == null)
    {
      k = new tj(l, aal.bk);
      k.a(paramua);
      j.a(k);
    }
    return k.a(g);
  }
  
  void a(Context paramContext)
  {
    TypedValue localTypedValue = new TypedValue();
    Resources.Theme localTheme = paramContext.getResources().newTheme();
    localTheme.setTo(paramContext.getTheme());
    localTheme.resolveAttribute(aen.t, localTypedValue, true);
    if (resourceId != 0) {
      localTheme.applyStyle(resourceId, true);
    }
    localTheme.resolveAttribute(aen.Y, localTypedValue, true);
    if (resourceId != 0) {
      localTheme.applyStyle(resourceId, true);
    }
    for (;;)
    {
      paramContext = new st(paramContext, 0);
      paramContext.getTheme().setTo(localTheme);
      l = paramContext;
      paramContext = paramContext.obtainStyledAttributes(sb.cp);
      b = paramContext.getResourceId(sb.cs, 0);
      f = paramContext.getResourceId(sb.cq, 0);
      paramContext.recycle();
      return;
      localTheme.applyStyle(aal.bw, true);
    }
  }
  
  void a(tl paramtl)
  {
    if (paramtl == j) {}
    do
    {
      return;
      if (j != null) {
        j.b(k);
      }
      j = paramtl;
    } while ((paramtl == null) || (k == null));
    paramtl.a(k);
  }
  
  public boolean a()
  {
    if (h == null) {}
    do
    {
      return false;
      if (i != null) {
        return true;
      }
    } while (k.a().getCount() <= 0);
    return true;
  }
}

/* Location:
 * Qualified Name:     ry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */