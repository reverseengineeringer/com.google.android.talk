import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.libraries.social.settings.PreferenceCategory;

public final class ejl
  extends img
  implements htx, ija
{
  hpu a;
  bfd b;
  hty c;
  boolean d;
  private iji e;
  private PreferenceCategory f;
  
  public ejl()
  {
    new iiz(this, lifecycle);
  }
  
  public void a()
  {
    b = dvd.e(a.a());
    e = new iji(context);
    f = e.a(StressMode.m);
  }
  
  public void a(String paramString, hus paramhus, huo paramhuo)
  {
    if ("Babel_sign_out".equals(paramString))
    {
      int i = paramhus.d().getInt("account_id");
      if (i == a.a()) {
        getActivity().finish();
      }
      ((awm)binder.a(awm.class)).c(i);
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((hpu)binder.a(hpu.class));
    c = ((hty)binder.a(hty.class));
    c.a(this);
  }
  
  public void onResume()
  {
    super.onResume();
    f.c();
    PreferenceCategory localPreferenceCategory = f;
    Object localObject = (djw)binder.b(djw.class);
    int j;
    int i;
    ijc localijc;
    if ((localObject != null) && (binder.b(dkb.class) != null))
    {
      localObject = ((djw)localObject).a(b);
      switch (a)
      {
      default: 
        j = StressMode.hs;
        i = StressMode.hr;
        localObject = b;
        localijc = new ijc(context);
        localijc.g(j);
        if (localObject == null) {
          break;
        }
      }
    }
    for (localObject = getString(i, new Object[] { ezm.p((String)localObject) });; localObject = null)
    {
      localijc.b((CharSequence)localObject);
      localijc.a(new ejp(this));
      localPreferenceCategory.c(localijc);
      localObject = (azm)ilh.b(context, azm.class);
      if (localObject != null) {
        ((azm)localObject).a(getActivity(), lifecycle, f, a.a());
      }
      localObject = new ijc(context);
      ((ijc)localObject).g(StressMode.eJ);
      ((ijc)localObject).a(new ejm(this));
      f.c((ijc)localObject);
      localObject = new ijc(context);
      ((ijc)localObject).g(StressMode.fi);
      ((ijc)localObject).a(new ejn(this));
      f.c((ijc)localObject);
      localObject = new ijc(context);
      ((ijc)localObject).g(StressMode.jm);
      f.c((ijc)localObject);
      ((ijc)localObject).a(new ejo(this));
      return;
      j = StressMode.ht;
      i = StressMode.hq;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     ejl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */