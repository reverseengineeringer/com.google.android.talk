import android.content.Context;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListView;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.views.HangoutEventMessageListItemView;
import com.google.android.apps.hangouts.views.MessageListItemView;
import com.google.android.apps.hangouts.views.MessageListItemWrapperView;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class bnf
{
  private static final ksf<Class<? extends bld>> a = ksf.a(eme.class);
  private final Context b;
  private final ListView c;
  private final int d;
  private final hba e;
  
  public bnf(Context paramContext, ListView paramListView, int paramInt)
  {
    b = paramContext;
    c = paramListView;
    d = paramInt;
    e = ((hba)ilh.a(paramContext, hba.class));
  }
  
  private static Set<String> a(URLSpan[] paramArrayOfURLSpan)
  {
    HashSet localHashSet = new HashSet();
    int j = paramArrayOfURLSpan.length;
    int i = 0;
    while (i < j)
    {
      localHashSet.add(paramArrayOfURLSpan[i].getURL());
      i += 1;
    }
    return localHashSet;
  }
  
  static void a(Context paramContext)
  {
    kyp localkyp = a.a();
    while (localkyp.hasNext()) {
      ilh.b(paramContext, (Class)localkyp.next());
    }
  }
  
  public void a(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo, MenuInflater paramMenuInflater, emf paramemf)
  {
    int i;
    int j;
    int k;
    if (paramView == c)
    {
      i = 0;
      j = 0;
      k = 0;
      if (!(paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo)) {
        break label585;
      }
      paramView = (MessageListItemWrapperView)targetView;
      if (paramView == null) {
        break label585;
      }
      if (!(paramView.c() instanceof HangoutEventMessageListItemView)) {}
    }
    else
    {
      return;
    }
    boolean bool;
    if ((paramView.c() instanceof MessageListItemView))
    {
      paramView = (MessageListItemView)paramView.c();
      switch (paramView.r())
      {
      default: 
        j = k;
        if (paramView.s() == 2) {
          j = 1;
        }
        bool = paramView.d();
        k = paramView.q();
        e.a(d).a(2936).a(Integer.valueOf(paramView.C().ordinal())).d();
      }
    }
    for (;;)
    {
      paramMenuInflater.inflate(aal.hd, paramContextMenu);
      if (paramemf != null) {
        paramContextMenu.add(0, 1000, 0, StressMode.fF);
      }
      if (i == 0)
      {
        if ((j == 0) || (k > 0)) {
          paramContextMenu.findItem(aen.co).setVisible(false);
        }
        if (bool) {
          paramContextMenu.findItem(aen.bz).setVisible(false);
        }
      }
      if ((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
      {
        paramView = (MessageListItemWrapperView)targetView;
        if ((paramView != null) && ((paramView.c() instanceof MessageListItemView)))
        {
          paramView = (MessageListItemView)paramView.c();
          if (TextUtils.isEmpty(paramView.f())) {
            paramContextMenu.findItem(aen.bq).setVisible(false);
          }
          if (paramView.x())
          {
            paramContextMenuInfo = paramContextMenu.findItem(1000);
            if (paramContextMenuInfo != null) {
              paramContextMenuInfo.setVisible(false);
            }
          }
          if (!paramView.p()) {
            paramContextMenu.findItem(aen.fQ).setVisible(false);
          }
          paramView = paramView.f();
          if (!TextUtils.isEmpty(paramView))
          {
            paramView = new SpannableString(paramView);
            Linkify.addLinks(paramView, 7);
            paramMenuInflater = a((URLSpan[])paramView.getSpans(0, paramView.length(), URLSpan.class)).iterator();
            label415:
            if (paramMenuInflater.hasNext())
            {
              paramView = (String)paramMenuInflater.next();
              i = paramView.indexOf(':');
              if (i < 0) {
                break label580;
              }
              paramContextMenuInfo = paramView.substring(0, i);
              paramView = paramView.substring(i + 1);
            }
          }
        }
      }
      for (;;)
      {
        if ("mailto".equalsIgnoreCase(paramContextMenuInfo))
        {
          i = 1;
          paramContextMenuInfo = paramView;
        }
        for (;;)
        {
          if (i == 0) {
            break label578;
          }
          paramView = aal.p(paramView);
          paramContextMenu.add(0, 27, 0, b.getString(StressMode.fg, new Object[] { paramContextMenuInfo })).setIntent(paramView).setVisible(true);
          break label415;
          i = 1;
          break;
          if ("tel".equalsIgnoreCase(paramContextMenuInfo))
          {
            i = 1;
            paramContextMenuInfo = ezm.p(paramView);
            continue;
            paramContextMenu.setHeaderTitle(StressMode.fl);
          }
          else
          {
            i = 0;
            paramContextMenuInfo = paramView;
          }
        }
        label578:
        break label415;
        label580:
        paramContextMenuInfo = null;
      }
      label585:
      k = 0;
      i = 0;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     bnf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */