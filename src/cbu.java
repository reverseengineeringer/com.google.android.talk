import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;

public abstract class cbu<ListViewType extends AbsListView>
  extends cbp
  implements AbsListView.OnScrollListener
{
  private int a;
  private int b;
  public ListViewType bB;
  private int c = -1;
  private int d = -1;
  
  protected void av()
  {
    if (bB == null) {}
    for (;;)
    {
      return;
      a = bB.getFirstVisiblePosition();
      View localView = bB.getChildAt(0);
      if (localView != null) {}
      for (b = localView.getTop(); aal.a(aal.oJ, "babel_extra_log_scrolling", false); b = 0)
      {
        int i = a;
        int j = b;
        ezi.c("Babel_Scroll", 45 + "saveScrollPosition: " + i + " : " + j, new Object[0]);
        return;
      }
    }
  }
  
  public void aw()
  {
    if (bB == null) {}
    while ((!(bB instanceof ListView)) || ((b == 0) && (a == 0))) {
      return;
    }
    ((ListView)bB).setSelectionFromTop(a, b);
    if (aal.a(aal.oJ, "babel_extra_log_scrolling", false))
    {
      int i = a;
      int j = b;
      ezi.c("Babel_Scroll", 48 + "restoreScrollPosition: " + i + " : " + j, new Object[0]);
    }
    a = 0;
    b = 0;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      a = paramBundle.getInt("scroll_pos");
      b = paramBundle.getInt("scroll_off");
      return;
    }
    a = 0;
    b = 0;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle, int paramInt)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle, paramInt);
    bB = ((AbsListView)paramLayoutInflater.findViewById(16908298));
    bB.setOnScrollListener(this);
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    bB.setOnScrollListener(null);
    bB = null;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if ((!getActivity().isFinishing()) && (bB != null))
    {
      av();
      paramBundle.putInt("scroll_pos", a);
      paramBundle.putInt("scroll_off", b);
    }
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 > 0)
    {
      c = (paramInt1 + paramInt2);
      d = paramInt3;
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}

/* Location:
 * Qualified Name:     cbu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */