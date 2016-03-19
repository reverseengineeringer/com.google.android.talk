import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.libraries.social.settings.PreferenceCategory;
import com.google.android.libraries.social.settings.PreferenceScreen;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class ekc
  extends img
  implements bii, ija
{
  hpu a;
  private iiv b;
  private iiv c;
  private iiv d;
  private PreferenceCategory e;
  
  public ekc()
  {
    new iiz(this, lifecycle);
  }
  
  private iiv a(int paramInt, boolean paramBoolean, dnq paramdnq)
  {
    paramdnq = a(paramBoolean, paramdnq, null, null);
    paramdnq.g(paramInt);
    paramdnq.a(paramInt);
    return paramdnq;
  }
  
  private iiv a(boolean paramBoolean, dnq paramdnq, String paramString1, String paramString2)
  {
    iiv localiiv = new iiv(context);
    if (paramBoolean)
    {
      localiiv.b(aal.ct);
      localiiv.c(aal.cv);
    }
    for (;;)
    {
      localiiv.a(new eke(this, paramString1, paramString2, localiiv, paramdnq));
      return localiiv;
      localiiv.b(aal.cs);
      localiiv.c(aal.cu);
    }
  }
  
  public void L_()
  {
    aal.a(new ekf(this));
  }
  
  public void a()
  {
    int i = a.a();
    bie.a.set(this);
    bie.a(i);
    iji localiji = new iji(context);
    PreferenceScreen localPreferenceScreen = ((ika)binder.a(ika.class)).b();
    c = a(StressMode.ae, false, dnq.b);
    localPreferenceScreen.c(c);
    d = a(StressMode.af, false, dnq.a);
    localPreferenceScreen.c(d);
    b = a(StressMode.ag, true, dnq.c);
    localPreferenceScreen.c(b);
    e = localiji.a(getString(StressMode.tk));
    b();
  }
  
  void b()
  {
    int i = a.a();
    b.a(bie.c(i));
    b.b(b.i());
    if (c != null)
    {
      c.a(bie.e(i));
      c.b(c.i());
    }
    if (d != null)
    {
      d.a(bie.d(i));
      d.b(d.i());
    }
    Object localObject1 = ((ika)binder.a(ika.class)).b();
    Object localObject2 = bie.b(i);
    if (((List)localObject2).size() > 0)
    {
      ((PreferenceScreen)localObject1).c(e);
      e.c();
      Collections.sort((List)localObject2, new ekd(this));
      localObject1 = ((List)localObject2).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (bih)((Iterator)localObject1).next();
        iiv localiiv = a(true, dnq.d, b, c);
        localiiv.c(c);
        localiiv.a(c);
        localiiv.a(d);
        localiiv.b(localiiv.i());
        e.c(localiiv);
      }
    }
    ((PreferenceScreen)localObject1).d(e);
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((hpu)binder.a(hpu.class));
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    bie.a.compareAndSet(this, null);
  }
}

/* Location:
 * Qualified Name:     ekc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */