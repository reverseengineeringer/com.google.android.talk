import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class hjq
{
  String a;
  String b;
  private final hks c;
  private final hjs d = new hjs(this);
  private final Map<String, hjt> e = new HashMap();
  private String f;
  private ViewGroup g;
  private int h = 3;
  private int i = 1;
  
  public hjq(hks paramhks)
  {
    c = paramhks;
    paramhks.a(d);
  }
  
  private void a(hjt paramhjt)
  {
    b.removeView(d);
    g.addView(d);
    e.a(h);
    e.a();
    f.a(a.equals(b));
  }
  
  private void b()
  {
    if (f == null) {
      return;
    }
    hjt localhjt = (hjt)e.get(f);
    if (localhjt != null)
    {
      f.a();
      g.removeView(d);
      b.addView(d, c);
      e.a(i);
      e.a();
    }
    f = null;
  }
  
  private String d(String paramString)
  {
    if (paramString == null)
    {
      localObject = null;
      return (String)localObject;
    }
    Object localObject = c.l();
    if (((hkv)localObject).b() == null) {}
    for (String str = "localParticipant";; str = ((hkv)localObject).b().b())
    {
      localObject = paramString;
      if (!paramString.equals(str)) {
        break;
      }
      return "localParticipant";
    }
  }
  
  public void a()
  {
    c.b(d);
    b();
    Iterator localIterator = e.values().iterator();
    while (localIterator.hasNext()) {
      nexte.b();
    }
    e.clear();
  }
  
  public void a(ViewGroup paramViewGroup)
  {
    g = paramViewGroup;
  }
  
  public void a(String paramString)
  {
    paramString = d(paramString);
    if (paramString.equals(f)) {
      b();
    }
    hjt localhjt = (hjt)e.remove(paramString);
    if (localhjt != null) {
      e.b();
    }
    if (paramString.equals(b)) {
      b(null);
    }
  }
  
  public void a(String paramString, View paramView, hjr paramhjr)
  {
    if (e.containsKey(paramString))
    {
      hlk.b("vclib", "View already registered for participant %s", new Object[] { paramString });
      return;
    }
    String str = d(paramString);
    hjt localhjt = new hjt();
    a = str;
    b = ((ViewGroup)paramView.getParent());
    c = b.indexOfChild(paramView);
    d = paramView;
    f = paramhjr;
    if ((paramView instanceof TextureView)) {}
    for (paramString = (TextureView)paramView;; paramString = (TextureView)paramView.findViewById(-1))
    {
      paramString = new hkl(c, paramString);
      paramString.a(str);
      paramString.c();
      paramhjr.a(paramString);
      e = paramString;
      e.put(str, localhjt);
      if (!str.equals(f)) {
        break;
      }
      a(localhjt);
      return;
    }
    if (f == null)
    {
      c(str);
      return;
    }
    paramString.a(i);
  }
  
  public void b(String paramString)
  {
    b = d(paramString);
    if (b == null) {}
    for (paramString = a;; paramString = b)
    {
      c(paramString);
      return;
    }
  }
  
  protected void c(String paramString)
  {
    if ((paramString == null) || (paramString.equals(f))) {}
    do
    {
      return;
      b();
      f = paramString;
      paramString = (hjt)e.get(paramString);
    } while (paramString == null);
    a(paramString);
  }
}

/* Location:
 * Qualified Name:     hjq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */