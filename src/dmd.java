import android.os.Bundle;
import android.view.View;
import android.view.ViewStub;
import java.util.Iterator;
import java.util.List;

final class dmd
  implements hpw, iny, iov, ioz
{
  private final List<dlu> a;
  private int b;
  private Class<?> c;
  private hpu d;
  private View e;
  private Bundle f;
  
  dmd(ilh paramilh, iog paramiog, List<dlu> paramList, int paramInt)
  {
    ezi.a("Babel_BannerPromo", "BannerPromoMixinImpl", new Object[0]);
    b = paramInt;
    a = paramList;
    d = ((hzy)paramilh.a(hzy.class)).b(this);
    paramiog.a(this);
  }
  
  private void a(View paramView)
  {
    Object localObject1 = paramView.getRootView().findViewById(b);
    if (!(localObject1 instanceof ViewStub))
    {
      ezi.c("Babel_BannerPromo", "view already inflated.", new Object[0]);
      if (((View)localObject1).getVisibility() != 8)
      {
        localObject2 = a.iterator();
        for (;;)
        {
          if (((Iterator)localObject2).hasNext())
          {
            paramView = (dlu)((Iterator)localObject2).next();
            if (paramView.getClass().equals(c))
            {
              localObject2 = String.valueOf(paramView);
              ezi.c("Babel", String.valueOf(localObject2).length() + 11 + "revalidate:" + (String)localObject2, new Object[0]);
              if (!paramView.b())
              {
                ezi.c("Babel", "hiding", new Object[0]);
                ((View)localObject1).setVisibility(8);
                c = null;
              }
            }
          }
        }
      }
    }
    do
    {
      return;
      while (!((Iterator)localObject2).hasNext())
      {
        paramView = String.valueOf(c);
        ezi.e("Babel", String.valueOf(paramView).length() + 10 + "not found:" + paramView, new Object[0]);
        return;
        c = null;
        if (!d.b())
        {
          ezi.c("Babel_BannerPromo", "no account", new Object[0]);
          return;
        }
        localObject2 = a.iterator();
      }
      localObject1 = (dlu)((Iterator)localObject2).next();
      String str = String.valueOf(localObject1);
      ezi.c("Babel", String.valueOf(str).length() + 9 + "checking:" + str, new Object[0]);
    } while (!((dlu)localObject1).b());
    Object localObject2 = String.valueOf(localObject1.getClass());
    ezi.c("Babel", String.valueOf(localObject2).length() + 10 + "will show " + (String)localObject2, new Object[0]);
    ((dlu)localObject1).a(b, paramView);
    c = localObject1.getClass();
  }
  
  public void X_()
  {
    ezi.c("Babel_BannerPromo", "resume", new Object[0]);
    a(e);
  }
  
  public void a(View paramView, Bundle paramBundle)
  {
    ezi.a("Babel_BannerPromo", "onViewCreated", new Object[0]);
    e = paramView;
    f = paramBundle;
  }
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (paramhpv2 == hpv.c)
    {
      ezi.c("Babel_BannerPromo", "new valid account", new Object[0]);
      if (e != null) {
        a(e);
      }
    }
  }
}

/* Location:
 * Qualified Name:     dmd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */