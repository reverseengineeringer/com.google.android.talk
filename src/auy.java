import android.content.Context;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class auy
{
  private final View a;
  private final List<auv> b = new ArrayList();
  private auz c;
  private Point d;
  
  public auy(View paramView)
  {
    a = paramView;
  }
  
  private int a(int paramInt, boolean paramBoolean)
  {
    int i = paramInt;
    Object localObject;
    if (paramInt == -2) {
      if (d == null)
      {
        localObject = ((WindowManager)a.getContext().getSystemService("window")).getDefaultDisplay();
        if (Build.VERSION.SDK_INT < 13) {
          break label83;
        }
        d = new Point();
        ((Display)localObject).getSize(d);
      }
    }
    for (;;)
    {
      localObject = d;
      if (!paramBoolean) {
        break;
      }
      i = y;
      return i;
      label83:
      d = new Point(((Display)localObject).getWidth(), ((Display)localObject).getHeight());
    }
    return x;
  }
  
  private static boolean a(int paramInt)
  {
    return (paramInt > 0) || (paramInt == -2);
  }
  
  private int c()
  {
    ViewGroup.LayoutParams localLayoutParams = a.getLayoutParams();
    if (a(a.getHeight())) {
      return a.getHeight();
    }
    if (localLayoutParams != null) {
      return a(height, true);
    }
    return 0;
  }
  
  private int d()
  {
    int i = 0;
    ViewGroup.LayoutParams localLayoutParams = a.getLayoutParams();
    if (a(a.getWidth())) {
      i = a.getWidth();
    }
    while (localLayoutParams == null) {
      return i;
    }
    return a(width, false);
  }
  
  void a()
  {
    if (b.isEmpty()) {}
    int i;
    int j;
    do
    {
      return;
      i = d();
      j = c();
    } while ((!a(i)) || (!a(j)));
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      ((auv)localIterator.next()).a(i, j);
    }
    b();
  }
  
  void a(auv paramauv)
  {
    int i = d();
    int j = c();
    if ((a(i)) && (a(j))) {
      paramauv.a(i, j);
    }
    do
    {
      return;
      if (!b.contains(paramauv)) {
        b.add(paramauv);
      }
    } while (c != null);
    paramauv = a.getViewTreeObserver();
    c = new auz(this);
    paramauv.addOnPreDrawListener(c);
  }
  
  void b()
  {
    ViewTreeObserver localViewTreeObserver = a.getViewTreeObserver();
    if (localViewTreeObserver.isAlive()) {
      localViewTreeObserver.removeOnPreDrawListener(c);
    }
    c = null;
    b.clear();
  }
}

/* Location:
 * Qualified Name:     auy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */