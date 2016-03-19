import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.notifications.DndDialogActivity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

final class cxz
  extends cxt
{
  private final boolean a;
  private final boolean y;
  
  cxz(Context paramContext, int paramInt, cwx paramcwx, cxt paramcxt, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext, paramInt, paramcwx);
    a = paramBoolean1;
    y = paramBoolean2;
    h = null;
    this.i = 0;
    c = e;
    d = f;
    if (bff.e(paramContext, paramInt)) {}
    for (e = paramContext.getString(StressMode.M, new Object[] { Integer.valueOf(a) });; e = paramContext.getResources().getQuantityString(aal.hz, a, new Object[] { Integer.valueOf(a) }))
    {
      g = aal.e(dvd.e(paramInt));
      g.putExtra("is_chat_notification", true);
      int i = 0;
      while (i < b.size())
      {
        paramcxt = (cwz)b.get(i);
        if ((h.get(0) instanceof cxq))
        {
          c(a);
          if ((cww.c(paramContext)) && (i < 10))
          {
            ArrayList localArrayList = new ArrayList();
            localArrayList.add(paramcxt);
            paramcxt = new cwx(i, localArrayList);
            k.add(new cws(paramContext, paramInt, paramcxt, i));
          }
        }
        i += 1;
      }
    }
  }
  
  static void b(Context paramContext, int paramInt)
  {
    String str = c(paramContext, paramInt);
    paramContext = du.a(paramContext);
    cyb.a(str, 0);
    paramContext.a(str, 0);
    if (b) {
      new StringBuilder(String.valueOf(str).length() + 56).append("MultiConversationNotifier.cancel [tag=]").append(str).append(" [id=]0");
    }
  }
  
  protected void a(boolean paramBoolean)
  {
    db localdb = new db(u);
    t = localdb;
    u.a(e);
    String str = p.getString(StressMode.bV);
    StringBuilder localStringBuilder1 = new StringBuilder();
    long l1 = 0L;
    int i = 0;
    if (i < l.b.size())
    {
      Object localObject1 = (cwz)l.b.get(i);
      long l2 = l1;
      if (g > l1) {
        l2 = g;
      }
      Object localObject2 = (cya)h.get(0);
      if ((localObject2 instanceof cxo))
      {
        StringBuilder localStringBuilder2 = new StringBuilder(q);
        int j = 1;
        while (j < h.size())
        {
          localStringBuilder2.append(", ");
          localStringBuilder2.append(h.get(j)).q);
          j += 1;
        }
        localObject2 = p.getResources().getQuantityString(aal.hx, i, new Object[] { Integer.valueOf(i) });
        localObject1 = localStringBuilder2.toString();
        h = null;
        this.i = 0;
      }
      for (;;)
      {
        localdb.b(a((String)localObject2, (CharSequence)localObject1, h, this.i));
        if (localObject2 != null)
        {
          if (localStringBuilder1.length() > 0) {
            localStringBuilder1.append(str);
          }
          localStringBuilder1.append((String)localObject2);
        }
        i += 1;
        l1 = l2;
        break;
        if ((c) && (!bff.e(p, q)))
        {
          localObject2 = f;
          localObject1 = null;
          h = null;
          this.i = 0;
        }
        else
        {
          localObject2 = (cxq)localObject2;
          localObject1 = b;
          h = c;
          this.i = d;
          localObject2 = r;
        }
      }
    }
    f = localStringBuilder1;
    u.b(localStringBuilder1).c(m()).a(l1 / 1000L);
    super.a(paramBoolean);
  }
  
  protected void h()
  {
    u.b(Integer.toString(q)).e();
    Object localObject = DndDialogActivity.a(p, q);
    localObject = PendingIntent.getActivity(p, super.w(), (Intent)localObject, 134217728);
    u.a(R.drawable.br, p.getString(StressMode.bB), (PendingIntent)localObject);
    if (cww.a(p))
    {
      localObject = DndDialogActivity.a(p, q);
      ((Intent)localObject).putExtra("opened_from_impression", 2258);
      localObject = PendingIntent.getActivity(p, super.w() + 1, (Intent)localObject, 134217728);
      localObject = new cv(R.drawable.ba, p.getString(StressMode.bB), (PendingIntent)localObject);
      List localList = ((ekq)ilh.a(p, ekq.class)).a();
      ((cv)localObject).a(new ef("dnd_duration_choice").a(p.getString(StressMode.bA)).a((CharSequence[])localList.toArray(new String[localList.size()])).a().b());
      v.a(((cv)localObject).b());
    }
    super.h();
  }
  
  protected void i()
  {
    super.i();
    aal.a(dvd.e(q), 1928);
    p();
    cxq.a(q, l.b, 457, 405, 463, a, y, null);
  }
  
  protected void k()
  {
    cxq.a(q, l.b, 458, 406, 464, a, y, null);
  }
  
  protected int q()
  {
    return super.q() + 2;
  }
}

/* Location:
 * Qualified Name:     cxz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */