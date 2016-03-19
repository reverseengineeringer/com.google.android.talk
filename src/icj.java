import android.content.Intent;
import android.os.Bundle;
import com.google.android.libraries.social.settings.PreferenceCategory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class icj
  extends img
  implements hqg, ija
{
  icn a;
  hsc b = new hsc(lifecycle).a(binder).a(aal.uB, c);
  private final hsb c = new ick(this);
  private final iiz d = new iiz(this, lifecycle);
  private iji e;
  private hpu f;
  private hpz g;
  private PreferenceCategory h;
  
  private void a(PreferenceCategory paramPreferenceCategory)
  {
    hpz localhpz = (hpz)ilh.a(context, hpz.class);
    Object localObject = localhpz.a();
    hzq localhzq = c();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      Integer localInteger = (Integer)((Iterator)localObject).next();
      hqb localhqb = localhpz.a(localInteger.intValue());
      localInteger.intValue();
      if (localhzq.a(localhqb))
      {
        Intent localIntent = (Intent)getArguments().getParcelable("account_intent");
        if (localIntent != null)
        {
          localIntent = (Intent)localIntent.clone();
          localIntent.putExtra("account_id", localInteger);
          paramPreferenceCategory.c(e.a(localhqb.b("display_name"), localhqb.b("account_name"), localIntent));
        }
        else
        {
          throw new IllegalStateException("Must set intent for accounts to be visible");
        }
      }
    }
  }
  
  private ijc b()
  {
    ijc localijc = e.a(getString(aal.uD), null);
    localijc.a(new icl(this));
    return localijc;
  }
  
  private hzq c()
  {
    hzq localhzq = (hzq)getArguments().getParcelable("account_filter");
    Object localObject = localhzq;
    if (localhzq == null) {
      localObject = new hzs().a("logged_in");
    }
    return (hzq)localObject;
  }
  
  public void Y_()
  {
    int k = 0;
    if (!getArguments().getBoolean("allow_no_accounts"))
    {
      localArrayList = new ArrayList();
      Object localObject = g.a();
      hzq localhzq = c();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        i = ((Integer)((Iterator)localObject).next()).intValue();
        if (localhzq.a(g.a(i))) {
          localArrayList.add(Integer.valueOf(i));
        }
      }
      Collections.sort(localArrayList, new hpt(g));
      if (localArrayList.isEmpty())
      {
        getActivity().finish();
        return;
      }
    }
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i >= h.a()) {
        break;
      }
      localArrayList.add(h.a(i));
      i += 1;
    }
    while (j < localArrayList.size())
    {
      h.d((ijc)localArrayList.get(j));
      j += 1;
    }
    a(h);
    h.c(b());
  }
  
  public void a()
  {
    e = new iji(context);
    h = e.a(getString(aal.uC));
    d.a(h);
    a(h);
    h.c(b());
  }
  
  public void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((icn)binder.b(icn.class));
    f = ((hpu)binder.a(hpu.class));
    g = ((hpz)binder.a(hpz.class));
  }
  
  public void onResume()
  {
    super.onResume();
    if ((!getActivity().isFinishing()) && (f.b()) && (!f.c().a()) && (a != null)) {
      a.j();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    g.a(this);
    Y_();
  }
  
  public void onStop()
  {
    super.onStop();
    g.b(this);
  }
}

/* Location:
 * Qualified Name:     icj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */