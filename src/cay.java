import android.content.SharedPreferences;
import android.graphics.Point;
import android.support.v4.view.ViewPager;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class cay
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  cay(cav paramcav) {}
  
  public void onGlobalLayout()
  {
    aen.a(a.d, this);
    if (a.getActivity() == null) {
      return;
    }
    cav localcav = a;
    e = new cbg(localcav.getActivity(), c, rx, localcav.c(), localcav.f(), localcav.q(), localcav.e());
    d.a(localcav);
    d.c(1);
    d.a(e);
    d.setAccessibilityDelegate(new cbe());
    d.postInvalidate();
    localcav.a(localcav.getActivity().getSharedPreferences("recentEmoji", 0).getInt("lastCategoryKey", 1), true);
  }
}

/* Location:
 * Qualified Name:     cay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */