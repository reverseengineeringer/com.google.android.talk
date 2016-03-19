import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.Iterator;
import java.util.List;

public class ahw
  implements atn
{
  private static final auk b;
  private static final auk c;
  private static final auk d = (auk)((auk)auk.b(akr.c).a(ahs.d)).a();
  final atm a;
  private final ahm e;
  private final ats f;
  private final atn g;
  private final atv h = new atv();
  private final Runnable i = new ahx(this);
  private final Handler j = new Handler(Looper.getMainLooper());
  private final atn k;
  private aug<?> l;
  private aug<?> m;
  
  static
  {
    auk localauk = auk.a(Bitmap.class);
    t = true;
    b = (auk)localauk;
    localauk = auk.a(asn.class);
    t = true;
    c = (auk)localauk;
  }
  
  public ahw(Context paramContext, atm paramatm, atn paramatn)
  {
    this(paramContext, paramatm, paramatn, new ats(), ahk.a(paramContext).c());
  }
  
  private ahw(Context paramContext, atm paramatm, atn paramatn, ats paramats, ati paramati)
  {
    e = ahk.a(paramContext).d();
    a = paramatm;
    g = paramatn;
    f = paramats;
    paramatn = new ath(paramats);
    int n;
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0)
    {
      n = 1;
      if (n == 0) {
        break label172;
      }
      paramatn = new atj(paramContext, paramatn);
      label105:
      k = paramatn;
      if (!avq.c()) {
        break label183;
      }
      j.post(i);
    }
    for (;;)
    {
      paramatm.a(k);
      l = e.a();
      m = l;
      ahk.a(paramContext).a(this);
      return;
      n = 0;
      break;
      label172:
      paramatn = new ato();
      break label105;
      label183:
      paramatm.a(this);
    }
  }
  
  public <ResourceType> ahu<ResourceType> a(Class<ResourceType> paramClass)
  {
    return new ahu(e, this, paramClass);
  }
  
  public ahu<Drawable> a(Object paramObject)
  {
    return h().a(paramObject);
  }
  
  public void a()
  {
    e.onLowMemory();
  }
  
  public void a(int paramInt)
  {
    e.onTrimMemory(paramInt);
  }
  
  public void a(View paramView)
  {
    a(new ahz(paramView));
  }
  
  public void a(auw<?> paramauw)
  {
    if (paramauw == null) {}
    do
    {
      return;
      if (!avq.b()) {
        break;
      }
    } while (b(paramauw));
    ahk.a(e).a(paramauw);
    return;
    j.post(new ahy(this, paramauw));
  }
  
  void a(auw<?> paramauw, auh paramauh)
  {
    h.a(paramauw);
    f.a(paramauh);
  }
  
  public void b()
  {
    avq.a();
    f.a();
  }
  
  boolean b(auw<?> paramauw)
  {
    auh localauh = paramauw.b();
    if (localauh == null) {
      return true;
    }
    if (f.b(localauh))
    {
      h.b(paramauw);
      paramauw.a(null);
      return true;
    }
    return false;
  }
  
  public void c()
  {
    avq.a();
    f.b();
  }
  
  public void e()
  {
    b();
    h.e();
  }
  
  public ahu<Bitmap> g()
  {
    return a(Bitmap.class).a(new aia('\000')).a(b);
  }
  
  public ahu<Drawable> h()
  {
    return a(Drawable.class).a(new aia((short)0));
  }
  
  public void h_()
  {
    h.h_();
    Iterator localIterator = h.a().iterator();
    while (localIterator.hasNext()) {
      a((auw)localIterator.next());
    }
    h.b();
    f.c();
    a.b(this);
    a.b(k);
    j.removeCallbacks(i);
    ahk.a(e).b(this);
  }
  
  aug<?> i()
  {
    return m;
  }
  
  public void s_()
  {
    c();
    h.s_();
  }
  
  public String toString()
  {
    String str1 = String.valueOf(super.toString());
    String str2 = String.valueOf(f);
    String str3 = String.valueOf(g);
    return String.valueOf(str1).length() + 21 + String.valueOf(str2).length() + String.valueOf(str3).length() + str1 + "{tracker=" + str2 + ", treeNode=" + str3 + "}";
  }
}

/* Location:
 * Qualified Name:     ahw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */