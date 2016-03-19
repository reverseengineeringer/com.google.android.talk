import android.transition.Transition;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class cd
  implements ViewTreeObserver.OnPreDrawListener
{
  public cd(View paramView1, Transition paramTransition1, ArrayList paramArrayList1, Transition paramTransition2, ArrayList paramArrayList2, Transition paramTransition3, ArrayList paramArrayList3, Map paramMap, ArrayList paramArrayList4, Transition paramTransition4, View paramView2) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    if (b != null) {
      aal.a(b, c);
    }
    if (d != null) {
      aal.a(d, e);
    }
    if (f != null) {
      aal.a(f, g);
    }
    Iterator localIterator = h.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      ((View)localEntry.getValue()).setTransitionName((String)localEntry.getKey());
    }
    int n = i.size();
    int m = 0;
    while (m < n)
    {
      j.excludeTarget((View)i.get(m), false);
      m += 1;
    }
    j.excludeTarget(k, false);
    return true;
  }
}

/* Location:
 * Qualified Name:     cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */