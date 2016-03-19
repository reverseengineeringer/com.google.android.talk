import android.text.TextUtils;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class axq
  implements Serializable
{
  transient List<axs> a = new ArrayList();
  private final List<axt> b = new ArrayList();
  private final Map<dtw, axt> c = new HashMap();
  private final List<axt> d = new ArrayList();
  private final Map<dtw, axt> e = new HashMap();
  private String f = "";
  
  public axq() {}
  
  public axq(ihb paramihb, boolean paramBoolean) {}
  
  private axq(Collection<axt> paramCollection, boolean paramBoolean)
  {
    axt localaxt;
    if (paramBoolean)
    {
      d.addAll(paramCollection);
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        localaxt = (axt)paramCollection.next();
        e.put(localaxt.b(), localaxt);
      }
    }
    b.addAll(paramCollection);
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      localaxt = (axt)paramCollection.next();
      c.put(localaxt.b(), localaxt);
    }
  }
  
  private boolean a(dtw paramdtw)
  {
    return (e.containsKey(paramdtw)) || (c.containsKey(paramdtw));
  }
  
  private void h()
  {
    aal.a(new axr(this));
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    a = new ArrayList();
  }
  
  public ihb a()
  {
    return ihb.newBuilder().a(d).a(b).a();
  }
  
  public void a(axs paramaxs)
  {
    a.add(paramaxs);
  }
  
  public void a(axt paramaxt)
  {
    if ((e.containsKey(paramaxt.b())) || (c.containsKey(paramaxt.b()))) {
      return;
    }
    b.add(paramaxt);
    c.put(paramaxt.b(), paramaxt);
    h();
  }
  
  public void a(bdy parambdy)
  {
    fii.b(c(parambdy), "Person has already been removed from the model.");
    parambdy = parambdy.p().iterator();
    while (parambdy.hasNext())
    {
      dtw localdtw = (dtw)parambdy.next();
      if (a(localdtw)) {
        b((axt)c.get(localdtw));
      }
    }
  }
  
  public void a(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    if (!TextUtils.equals(f, str))
    {
      f = str;
      paramString = a.iterator();
      while (paramString.hasNext()) {
        ((axs)paramString.next()).a(f);
      }
    }
  }
  
  public int b()
  {
    return d.size() + b.size();
  }
  
  public void b(axt paramaxt)
  {
    fii.b(a(paramaxt.b()), "Person has already been removed from the model.");
    b.remove(paramaxt);
    if (c.remove(paramaxt.b()) != null) {
      h();
    }
  }
  
  public boolean b(bdy parambdy)
  {
    parambdy = parambdy.p().iterator();
    while (parambdy.hasNext())
    {
      dtw localdtw = (dtw)parambdy.next();
      if (e.containsKey(localdtw)) {
        return true;
      }
    }
    return false;
  }
  
  public List<axt> c()
  {
    return new ArrayList(b);
  }
  
  public boolean c(axt paramaxt)
  {
    return d.contains(paramaxt);
  }
  
  public boolean c(bdy parambdy)
  {
    parambdy = parambdy.p().iterator();
    while (parambdy.hasNext()) {
      if (a((dtw)parambdy.next())) {
        return true;
      }
    }
    return false;
  }
  
  public List<axt> d()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(d);
    localArrayList.addAll(b);
    return localArrayList;
  }
  
  public int e()
  {
    return d.size() + b.size();
  }
  
  public void f()
  {
    b.clear();
    c.clear();
    h();
  }
  
  public String g()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     axq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */