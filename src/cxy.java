import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.phone.BabelGatewayActivity;
import java.util.Iterator;
import java.util.List;

final class cxy
  extends cxj
{
  final List<String> h;
  
  cxy(Context paramContext, int paramInt1, exn paramexn, int paramInt2, List<String> paramList, long paramLong)
  {
    super(paramContext, paramInt1, paramInt2, paramexn, paramLong);
    String str = paramContext.getString(StressMode.bV);
    if (paramList.size() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      h = paramList;
      paramInt1 = paramList.size();
      if (paramInt1 != 1) {
        break;
      }
      b = ((String)paramList.get(0));
      f = paramexn.a();
      c = paramContext.getString(StressMode.ej);
      b(f);
      c(f);
      return;
    }
    b = paramContext.getString(StressMode.el, new Object[] { Integer.valueOf(paramInt1) });
    paramContext = new StringBuilder();
    paramexn = h.iterator();
    paramInt1 = 0;
    for (;;)
    {
      if (paramexn.hasNext())
      {
        paramList = (String)paramexn.next();
        paramInt1 += 1;
        if ((paramInt1 == 8) && (h.size() > 8)) {
          paramContext.append("...");
        }
      }
      else
      {
        c = paramContext;
        return;
      }
      if (paramInt1 > 1) {
        paramContext.append(str);
      }
      paramContext.append(paramList);
    }
  }
  
  static void b(Context paramContext, int paramInt)
  {
    String str = c(paramContext, paramInt);
    paramContext = du.a(paramContext);
    cyb.a(str, 2);
    paramContext.a(str, 2);
  }
  
  protected void a(boolean paramBoolean)
  {
    u.a(b).c(c).b(c).a(d);
    db localdb;
    int j;
    if (h.size() > 1)
    {
      w.a(b);
      localdb = new db(u);
      j = h.size();
      if (j != 1) {
        break label123;
      }
      localdb.b(c);
    }
    label123:
    label194:
    for (;;)
    {
      t = localdb;
      super.a(paramBoolean);
      return;
      w.a(c);
      break;
      Iterator localIterator = h.iterator();
      int i = 0;
      for (;;)
      {
        if (!localIterator.hasNext()) {
          break label194;
        }
        String str = (String)localIterator.next();
        i += 1;
        if ((i == 8) && (j > 8))
        {
          localdb.b("...");
          break;
        }
        localdb.b(str);
      }
    }
  }
  
  protected boolean a()
  {
    return false;
  }
  
  protected boolean c()
  {
    return true;
  }
  
  protected int d()
  {
    return R.drawable.ck;
  }
  
  protected int e()
  {
    return 2;
  }
  
  protected int f()
  {
    return 1;
  }
  
  protected Intent g()
  {
    if (h.size() == 1)
    {
      Intent localIntent = aal.a(q, f, e);
      localIntent.putExtra("opened_from_impression", 1638);
      return localIntent;
    }
    return aal.e(dvd.e(q));
  }
  
  protected void h()
  {
    if ((cww.a(p)) && (r.size() == 1))
    {
      ee localee = a(p);
      Object localObject = BabelGatewayActivity.a(p, q, r.a());
      ((Intent)localObject).setFlags(268468224);
      ((Intent)localObject).putExtra("opened_from_impression", 2259);
      int i = x();
      localObject = PendingIntent.getActivity(p, i, (Intent)localObject, 134217728);
      localObject = new cv(R.drawable.bb, p.getString(StressMode.gK), (PendingIntent)localObject);
      ((cv)localObject).a(localee);
      v.a(((cv)localObject).b());
    }
    super.h();
  }
}

/* Location:
 * Qualified Name:     cxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */