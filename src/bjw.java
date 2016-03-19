import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

final class bjw
  implements bjm, ioo, iow, ioz, ipa
{
  boolean a;
  boolean b;
  boolean c;
  public final ArrayList<bjn> d = new ArrayList();
  final Context e;
  final haw f;
  ezz g;
  int h;
  List<fac> i;
  private final faa j = new bjx(this);
  private final int k;
  private final bg l;
  private final String m = getClass().getName();
  
  public bjw(Context paramContext, iog paramiog, int paramInt, bg parambg)
  {
    e = paramContext;
    k = paramInt;
    l = parambg;
    f = ((hba)ilh.a(paramContext, hba.class)).a(((hpu)ilh.a(paramContext, hpu.class)).a());
    paramiog.a(this);
  }
  
  private List<fac> a(bdy parambdy, bkw parambkw)
  {
    ArrayList localArrayList = new ArrayList();
    d.clear();
    Object localObject4;
    Object localObject5;
    Object localObject2;
    Object localObject1;
    label102:
    Object localObject3;
    if (a)
    {
      localObject4 = parambdy.j().iterator();
      for (;;)
      {
        if (((Iterator)localObject4).hasNext())
        {
          localObject5 = (bdx)((Iterator)localObject4).next();
          if (!((bdx)localObject5).f())
          {
            d.add(new bjn((bdx)localObject5));
            localObject2 = ((bdx)localObject5).e();
            localObject1 = parambdy.e();
            if (!TextUtils.isEmpty((CharSequence)localObject2))
            {
              localObject1 = ((bdx)localObject5).c();
              localObject3 = ((bdx)localObject5).b();
              if (!((List)localObject1).isEmpty()) {
                break label286;
              }
              localObject1 = null;
              label129:
              if (!((List)localObject3).isEmpty()) {
                break label305;
              }
              localObject3 = null;
              label142:
              if (localObject1 == null) {
                break label324;
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      label147:
      if (localObject2 != null)
      {
        localObject3 = localObject2;
        localObject2 = localObject1;
        localObject1 = localObject3;
        label164:
        localObject3 = localObject1;
        if (localObject1 == null)
        {
          localObject1 = String.valueOf(ezi.b(((bdx)localObject5).a()));
          if (((String)localObject1).length() == 0) {
            break label345;
          }
          localObject1 = "No metadata for contact with gaia id: ".concat((String)localObject1);
          label203:
          ezi.a("Babel_ConvCreator", (String)localObject1, new Object[0]);
          localObject3 = e.getResources().getString(aal.jp);
        }
        localObject1 = ((bdx)localObject5).d();
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          break label359;
        }
      }
      for (;;)
      {
        localArrayList.add(new fac((String)localObject3, (String)localObject2, (String)localObject1));
        break;
        localObject2 = localObject1;
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          break label102;
        }
        localObject2 = null;
        break label102;
        label286:
        localObject1 = ((bdw)((List)localObject1).get(0)).b();
        break label129;
        label305:
        localObject3 = ((bee)((List)localObject3).get(0)).b();
        break label142;
        label324:
        if (localObject3 == null) {
          break label616;
        }
        localObject1 = ezm.p((String)localObject3);
        break label147;
        localObject2 = null;
        break label164;
        label345:
        localObject1 = new String("No metadata for contact with gaia id: ");
        break label203;
        label359:
        localObject1 = parambdy.f();
      }
      if (c)
      {
        localObject5 = parambdy.b().iterator();
        if (((Iterator)localObject5).hasNext())
        {
          localObject1 = (bee)((Iterator)localObject5).next();
          d.add(new bjn((bee)localObject1));
          if (parambkw == bkw.c) {}
          for (int n = aal.jf;; n = aal.jg)
          {
            localObject4 = ((bee)localObject1).a();
            localObject2 = ezm.p(((bee)localObject1).b());
            localObject3 = localObject2;
            localObject1 = localObject4;
            if (TextUtils.isEmpty((CharSequence)localObject4))
            {
              localObject1 = localObject2;
              localObject3 = null;
            }
            localArrayList.add(new fac((String)localObject1, (String)localObject3, n));
            break;
          }
        }
      }
      if (b)
      {
        parambdy = parambdy.d().iterator();
        while (parambdy.hasNext())
        {
          parambkw = (bdw)parambdy.next();
          d.add(new bjn(parambkw));
          localArrayList.add(new fac(parambkw.a(), parambkw.b(), aal.je));
        }
      }
      hbs.a("There must be as many choices as contact details", Integer.valueOf(localArrayList.size()), Integer.valueOf(d.size()));
      return localArrayList;
      label616:
      localObject1 = null;
    }
  }
  
  public String a()
  {
    String str = String.valueOf(getClass().getName());
    int n = k;
    return String.valueOf(str).length() + 11 + str + n;
  }
  
  public void a(Bundle paramBundle)
  {
    int n = 0;
    if (paramBundle != null)
    {
      d.addAll((ArrayList)paramBundle.getSerializable("contact_details"));
      h = paramBundle.getInt("selector_dialog_title_id", 0);
      i = null;
      paramBundle = paramBundle.getBundle("selector_dialog_choices");
      if (paramBundle != null)
      {
        i = new ArrayList(paramBundle.size());
        while (n < paramBundle.size())
        {
          i.add((fac)paramBundle.getSerializable(11 + n));
          n += 1;
        }
      }
      if ((h > 0) && (i != null) && (i.size() > 1))
      {
        paramBundle = l.a(m);
        bz localbz = l.a();
        if (paramBundle != null) {
          localbz.a(paramBundle);
        }
        g = ((fab)ilh.a(e, fab.class)).a(e.getResources().getString(h), i);
        g.a(j);
        g.a(localbz, m);
      }
    }
  }
  
  public void a(bdy parambdy, bkw parambkw, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      h = aal.jl;
      a = false;
      if ((parambdy.b().isEmpty()) && (parambdy.d().isEmpty()))
      {
        paramBoolean = true;
        hbs.b("An invited contact must have at least a phone number or email address", paramBoolean);
        if (parambdy.b().isEmpty()) {
          break label165;
        }
        paramBoolean = true;
        label63:
        c = paramBoolean;
        if (c) {
          break label170;
        }
        paramBoolean = true;
        label77:
        b = paramBoolean;
        if (c) {
          h = aal.jn;
        }
      }
    }
    for (;;)
    {
      i = a(parambdy, parambkw);
      hbs.b("No contact details found", d.isEmpty());
      if (d.size() != 1) {
        break label343;
      }
      ((bjo)ilh.a(e, bjo.class)).a((bjn)d.get(0));
      return;
      paramBoolean = false;
      break;
      label165:
      paramBoolean = false;
      break label63;
      label170:
      paramBoolean = false;
      break label77;
      b = false;
      switch (bjy.a[parambkw.ordinal()])
      {
      default: 
        parambdy = String.valueOf(parambkw);
        throw new IllegalArgumentException(String.valueOf(parambdy).length() + 27 + "Unknown conversation type: " + parambdy);
      case 1: 
        h = aal.jk;
        a = true;
        c = false;
        break;
      case 2: 
        h = aal.jn;
        a = false;
        c = true;
        break;
      case 3: 
        h = aal.js;
        a = true;
        c = true;
        break;
      case 4: 
        h = aal.jr;
        a = true;
        c = false;
      }
    }
    label343:
    f.a(2510).d();
    if (a) {
      f.a(2554).d();
    }
    if (c) {
      f.a(2557).d();
    }
    if (b) {
      f.a(2560).d();
    }
    g = ((fab)ilh.a(e, fab.class)).a(e.getResources().getString(h), i);
    g.a(j);
    g.a(l, m);
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putSerializable("contact_details", d);
    if (h > 0) {
      paramBundle.putInt("selector_dialog_title_id", h);
    }
    if (i != null)
    {
      Bundle localBundle = new Bundle(i.size());
      Iterator localIterator = i.iterator();
      int n = 0;
      while (localIterator.hasNext())
      {
        fac localfac = (fac)localIterator.next();
        localBundle.putSerializable(11 + n, localfac);
        n += 1;
      }
      paramBundle.putBundle("selector_dialog_choices", localBundle);
    }
    h = 0;
    i = null;
  }
}

/* Location:
 * Qualified Name:     bjw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */