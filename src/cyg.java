import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

final class cyg
  extends cxj
{
  private static final Object h = new Object();
  private final boolean i;
  
  cyg(Context paramContext, int paramInt1, String paramString1, String paramString2, int paramInt2, String paramString3, long paramLong, int paramInt3)
  {
    super(paramContext, paramInt1, paramInt2, exn.a(paramString2), paramLong);
    boolean bool;
    if (paramInt3 == 1)
    {
      bool = true;
      i = bool;
      if (paramInt2 != 2) {
        break label90;
      }
      if (!i) {
        break label83;
      }
    }
    label83:
    for (paramInt1 = StressMode.ta;; paramInt1 = StressMode.eh)
    {
      c = paramContext.getString(paramInt1, new Object[] { paramString3 });
      f = paramString2;
      b = paramString1;
      return;
      bool = false;
      break;
    }
    label90:
    if (i) {}
    for (paramInt1 = StressMode.tb;; paramInt1 = StressMode.ei)
    {
      c = paramContext.getString(paramInt1);
      break;
    }
  }
  
  static void a(Context paramContext, int paramInt, List<cyg> paramList)
  {
    TreeSet localTreeSet = new TreeSet();
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        localTreeSet.add(nextr.a());
      }
    }
    hqc localhqc = ((hpz)ilh.a(paramContext, hpz.class)).b(paramInt);
    for (;;)
    {
      synchronized (h)
      {
        Object localObject1 = localhqc.c("active_hangouts_list");
        paramList = (List<cyg>)localObject1;
        if (localObject1 == null) {
          break;
        }
        paramList = new HashSet((Collection)localObject1);
        paramList.removeAll(localTreeSet);
        localObject1 = paramList.iterator();
        if (!((Iterator)localObject1).hasNext()) {
          break label310;
        }
        String str = (String)((Iterator)localObject1).next();
        Object localObject3;
        if (a)
        {
          localObject3 = String.valueOf(str);
          if (((String)localObject3).length() != 0) {
            "OngoingHangoutNotifier.cancelOngoingNotification conversationId=".concat((String)localObject3);
          }
        }
        else
        {
          str = a(paramContext, paramInt, str);
          localObject3 = du.a(paramContext);
          cyb.a(str, 1);
          ((du)localObject3).a(str, 1);
        }
      }
      new String("OngoingHangoutNotifier.cancelOngoingNotification conversationId=");
    }
    label304:
    label310:
    for (;;)
    {
      localhqc.a("active_hangouts_list", localTreeSet).d();
      if (a) {
        if (paramList == null) {
          break label304;
        }
      }
      for (paramContext = paramList.toString();; paramContext = "empty")
      {
        paramList = String.valueOf(localTreeSet.toString());
        new StringBuilder(String.valueOf(paramContext).length() + 44 + String.valueOf(paramList).length()).append("updateActiveHangouts: lastActive=").append(paramContext).append("\nnewActive=").append(paramList);
        return;
      }
    }
  }
  
  protected void a(boolean paramBoolean)
  {
    u.a(b).c(a(b, c)).b(c).a(d);
    cy localcy = w;
    Context localContext = p;
    if (i) {}
    for (int j = StressMode.tc;; j = StressMode.ek)
    {
      localcy.a(localContext.getString(j));
      t = new cx(u).b(c);
      super.a(paramBoolean);
      return;
    }
  }
  
  protected boolean a()
  {
    return false;
  }
  
  protected boolean c()
  {
    return false;
  }
  
  protected int d()
  {
    if (i) {
      return R.drawable.cn;
    }
    return R.drawable.cj;
  }
  
  protected int e()
  {
    return 1;
  }
  
  protected int f()
  {
    return aal.a(p, "babel_notify_ongoing_video_priority_level", 2);
  }
  
  protected Intent g()
  {
    return aal.a(q, f, e);
  }
}

/* Location:
 * Qualified Name:     cyg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */