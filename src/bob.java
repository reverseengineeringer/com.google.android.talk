import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;
import com.google.android.apps.hangouts.views.MessageListItemView;
import com.google.android.apps.hangouts.views.ParticipantsGalleryView;
import java.util.Iterator;
import java.util.List;

final class bob
  implements AbsListView.OnScrollListener
{
  bob(bng parambng) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    bng localbng = a;
    Object localObject = a.at;
    boolean bool1;
    int i;
    if ((aal.a(context, "babel_log_scroll_error_impressions", true)) && (!ar) && (!as))
    {
      if ((paramInt2 <= 0) || (paramInt1 + paramInt2 >= paramInt3)) {
        break label758;
      }
      bool1 = true;
      View localView = paramAbsListView.getChildAt(paramAbsListView.getChildCount() - 1);
      if (localView == null) {
        break label764;
      }
      i = localView.getBottom() - paramAbsListView.getBottom();
      label89:
      if (i <= 0) {
        break label770;
      }
      bool2 = true;
      label97:
      if ((bool1) || (bool2))
      {
        as = true;
        h.a(new bod(localbng, (bfd)localObject, bool1, paramInt3, paramInt1, paramInt2, bool2, i, localView, paramAbsListView));
        if (aal.a(context, "babel_attempt_scroll_error_autofix", true)) {
          aal.a(new boe(localbng, paramAbsListView, (bfd)localObject), 250L);
        }
      }
    }
    if (bng.a)
    {
      localObject = String.valueOf(localbng);
      bool1 = aJ;
      i = bt;
      long l = aV;
      new StringBuilder(String.valueOf(localObject).length() + 144).append((String)localObject).append(" onScroll   mInitialLoadFinished: ").append(bool1).append("  mMessagesLimit: ").append(i).append("  firstVisible: ").append(paramInt1).append("  mFirstLocalEventTimestamp: ").append(l);
    }
    if (aal.a(context, "babel_extra_log_scrolling", false))
    {
      localObject = new Exception().getStackTrace();
      if (((!localObject[1].getClassName().equals(AbsListView.class.getName())) || (!localObject[1].getMethodName().equals("invokeOnItemScrollListener")) || (!localObject[2].getClassName().equals(AbsListView.class.getName())) || (!localObject[2].getMethodName().equals("trackMotionScroll"))) && ((!localObject[1].getClassName().equals(AbsListView.class.getName())) || (!localObject[1].getMethodName().equals("invokeOnItemScrollListener")) || (!localObject[2].getClassName().equals(ListView.class.getName())) || (!localObject[2].getMethodName().equals("layoutChildren"))) && (localObject[1].getClassName().equals(AbsListView.class.getName())) && (localObject[1].getMethodName().equals("invokeOnItemScrollListener")) && (localObject[2].getClassName().equals(AbsListView.class.getName()))) {
        localObject[2].getMethodName().equals("setOnScrollListener");
      }
    }
    localbng.a(paramInt1, ((ListView)paramAbsListView).getHeaderViewsCount());
    localObject = paramAbsListView.getChildAt(paramAbsListView.getChildCount() - 1);
    if (localObject != null)
    {
      i = ((View)localObject).getBottom();
      int j = paramAbsListView.getHeight();
      if (paramInt1 + paramInt2 != paramInt3) {
        break label776;
      }
      bool1 = true;
      label551:
      if ((!bool1) || (aQ.d()) || (aal.f(localbng.d()))) {
        break label782;
      }
      aQ.a(i - j);
      label591:
      paramAbsListView = (bhx)bA;
      if (bool1) {
        break label793;
      }
    }
    label758:
    label764:
    label770:
    label776:
    label782:
    label793:
    for (boolean bool2 = true;; bool2 = false)
    {
      paramAbsListView.b(bool2);
      if (aal.a(context, "babel_extra_log_scrolling", false))
      {
        paramInt1 = ((ListView)bB).getBottom();
        ezi.a("Babel_Scroll", 81 + "onScroll isAtBottom:" + bool1 + " lastItemBottom:" + i + " listView bottom: " + paramInt1, new Object[0]);
      }
      if ((bool1) && (i == ((ListView)bB).getBottom()) && (aF))
      {
        aF = false;
        if (aal.a(context, "babel_disable_events_on_auto_scroll", true))
        {
          ezi.c("Babel_Scroll", "force update after autoScroll.", new Object[0]);
          localbng.onScrollStateChanged(null, 0);
        }
      }
      return;
      bool1 = false;
      break;
      i = 0;
      break label89;
      bool2 = false;
      break label97;
      bool1 = false;
      break label551;
      aQ.c();
      break label591;
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    paramAbsListView = a;
    ar = true;
    if (aal.a(context, "babel_extra_log_scrolling", false))
    {
      boolean bool = aF;
      ezi.c("Babel_Scroll", 64 + "onScrollStateChanged scrollState:" + paramInt + " autoScrolling:" + bool, new Object[0]);
    }
    if ((!aF) || (!aal.a(context, "babel_disable_events_on_auto_scroll", true))) {
      switch (paramInt)
      {
      }
    }
    for (;;)
    {
      return;
      ((bhx)bA).c(true);
      paramAbsListView.y();
      aO.b();
      return;
      ((bhx)bA).c(false);
      paramAbsListView = bk.iterator();
      while (paramAbsListView.hasNext()) {
        ((MessageListItemView)paramAbsListView.next()).v();
      }
    }
  }
}

/* Location:
 * Qualified Name:     bob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */