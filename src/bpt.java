import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

final class bpt
  implements bpq, brp, ioo, iow, ioz
{
  private final Context a;
  private final bpr b;
  private bjb c;
  private axj d;
  private int e;
  private String f;
  private String g;
  private beu h;
  private ArrayList<bkq> i = new ArrayList();
  private bps j;
  private brl k;
  
  public bpt(Context paramContext, bpr parambpr, iog paramiog)
  {
    a = paramContext;
    b = ((bpr)aen.a(parambpr));
    paramiog.a(this);
  }
  
  private void j()
  {
    if (k != null)
    {
      k.cancel(true);
      k = null;
    }
  }
  
  public bjb a()
  {
    return c;
  }
  
  public bpt a(ilh paramilh)
  {
    paramilh.a(bpq.class, this);
    return this;
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public <T extends bkq,  extends Parcelable> void a(Context paramContext, List<T> paramList, bps parambps)
  {
    i = new ArrayList(paramList);
    j = parambps;
    b.a(parambps);
    j();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      if (aen.c(nexta))
      {
        k = new brl(paramContext, i, this);
        k.execute(new Void[0]);
      }
    }
  }
  
  public void a(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return;
    }
    f = paramBundle.getString("conversation_state_model_conversation_name");
    a(a, paramBundle.getParcelableArrayList("conversation_state_model_attachments"), (bps)paramBundle.getSerializable("conversation_state_model_callback"));
  }
  
  public void a(axj paramaxj)
  {
    d = paramaxj;
    f = g;
    e = b;
  }
  
  public void a(beu parambeu)
  {
    h = parambeu;
  }
  
  public void a(bjb parambjb)
  {
    c = parambjb;
  }
  
  public void a(String paramString1, String paramString2)
  {
    f = paramString1;
    g = paramString2;
  }
  
  public void a(ksf<bkq> paramksf)
  {
    i = new ArrayList(paramksf);
  }
  
  public axj b()
  {
    return d;
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putString("conversation_state_model_conversation_name", f());
    ArrayList localArrayList = new ArrayList(i.size());
    Iterator localIterator = i.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add((Parcelable)localIterator.next());
    }
    paramBundle.putParcelableArrayList("conversation_state_model_attachments", localArrayList);
    paramBundle.putSerializable("conversation_state_model_callback", j);
  }
  
  public String c()
  {
    if (c != null) {
      return c.a;
    }
    return d.a;
  }
  
  public int d()
  {
    return e;
  }
  
  public boolean e()
  {
    if (h != null)
    {
      List localList = ilh.c(a, azd.class);
      cyx localcyx;
      azd localazd;
      do
      {
        Iterator localIterator1 = h.c().iterator();
        Iterator localIterator2;
        while (!localIterator2.hasNext())
        {
          if (!localIterator1.hasNext()) {
            break;
          }
          localcyx = (cyx)localIterator1.next();
          localIterator2 = localList.iterator();
        }
        localazd = (azd)localIterator2.next();
      } while ((!localazd.a().equals(b.a)) || (localazd.b()));
      return false;
    }
    return true;
  }
  
  public String f()
  {
    if (!TextUtils.isEmpty(f)) {
      return f;
    }
    return g;
  }
  
  public beu g()
  {
    return h;
  }
  
  public ksf<bkq> h()
  {
    return ksf.a(i);
  }
  
  public void i()
  {
    i = new ArrayList();
    b.a(null);
    j();
  }
}

/* Location:
 * Qualified Name:     bpt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */