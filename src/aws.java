import android.content.Context;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

final class aws
  implements awm
{
  private final hpz a;
  private final bdp b;
  private final List<awn> c = new CopyOnWriteArrayList();
  
  aws(Context paramContext)
  {
    a = ((hpz)ilh.a(paramContext, hpz.class));
    b = ((bdp)ilh.a(paramContext, bdp.class));
  }
  
  public void a(int paramInt, String paramString)
  {
    a.b(paramInt).b("full_jid", paramString).d();
    paramString = c.iterator();
    while (paramString.hasNext()) {
      ((awn)paramString.next()).a(paramInt);
    }
  }
  
  public void a(awn paramawn)
  {
    c.add(paramawn);
  }
  
  public boolean a(int paramInt)
  {
    return a(a.a(paramInt));
  }
  
  public boolean a(hqb paramhqb)
  {
    if (TextUtils.isEmpty(paramhqb.b("full_jid"))) {}
    do
    {
      return false;
      if (!b.a("babel_android_id_check", false)) {
        break;
      }
    } while (dwt.a().d());
    return true;
    return true;
  }
  
  public void b(int paramInt)
  {
    if (!dwt.a().c())
    {
      dwt.a().a(new awt(this, paramInt));
      dwt.a().g();
      return;
    }
    dvd.f(paramInt);
  }
  
  public void b(awn paramawn)
  {
    c.remove(paramawn);
  }
  
  public void c(int paramInt)
  {
    dvd.g(paramInt);
    a.b(paramInt).f("full_jid").d();
  }
  
  public String d(int paramInt)
  {
    return a.a(paramInt).b("full_jid");
  }
  
  public String e(int paramInt)
  {
    String str = d(paramInt);
    if (!TextUtils.isEmpty(str))
    {
      paramInt = str.indexOf('/');
      if (paramInt >= 0) {
        return str.substring(paramInt + 1);
      }
    }
    return null;
  }
  
  public void f(int paramInt)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      ((awn)localIterator.next()).b(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     aws
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */