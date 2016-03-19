import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class bea
  extends bdy
  implements Serializable
{
  private String b;
  private String c;
  private List<bdx> d = new ArrayList();
  private String e;
  private String f;
  private boolean g;
  private boolean h;
  private boolean i;
  private boolean j;
  private List<bdw> k;
  private List<bee> l;
  
  bea(String paramString1, String paramString2, List<bdx> paramList, String paramString3, String paramString4, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, List<bdw> paramList1, List<bee> paramList2)
  {
    b = paramString1;
    c = paramString2;
    d = paramList;
    e = paramString3;
    f = paramString4;
    g = paramBoolean1;
    h = paramBoolean2;
    i = paramBoolean3;
    j = paramBoolean4;
    k = paramList1;
    l = paramList2;
  }
  
  public static bea a(cyx paramcyx, List<String> paramList, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    if (A != null)
    {
      localObject1 = A.iterator();
      while (((Iterator)localObject1).hasNext()) {
        localArrayList.add(new bee((String)((Iterator)localObject1).next()));
      }
    }
    Object localObject1 = new ArrayList();
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        ((List)localObject1).add(new bee((String)paramList.next()));
      }
    }
    paramList = new ArrayList();
    if (B != null)
    {
      localObject2 = B.iterator();
      while (((Iterator)localObject2).hasNext()) {
        paramList.add(new bdw((String)((Iterator)localObject2).next()));
      }
    }
    Object localObject2 = new beb();
    beb localbeb = ((beb)localObject2).b(h).a(aal.a(paramcyx, false));
    if ((paramBoolean) || (z)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      localbeb.a(paramBoolean).c(localArrayList).c((Collection)localObject1).b(paramList);
      if (paramcyx.b() != null) {
        ((beb)localObject2).a(new bdx(paramcyx.b(), paramcyx.h()));
      }
      if (!TextUtils.isEmpty(c)) {
        ((beb)localObject2).f(c);
      }
      return ((beb)localObject2).a();
    }
  }
  
  public bee a()
  {
    if ((l != null) && (!l.isEmpty())) {}
    for (int m = 1; m != 0; m = 0) {
      return (bee)l.get(0);
    }
    return null;
  }
  
  public String c()
  {
    if ((k != null) && (!k.isEmpty())) {}
    for (int m = 1; m != 0; m = 0) {
      return ((bdw)k.get(0)).b();
    }
    return null;
  }
  
  public String e()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (bea)paramObject;
      if (d != null)
      {
        if (d.equals(d)) {}
      }
      else {
        while (d != null) {
          return false;
        }
      }
      if (k != null)
      {
        if (k.equals(k)) {}
      }
      else {
        while (k != null) {
          return false;
        }
      }
      if (l == null) {
        break;
      }
    } while (l.equals(l));
    while (l != null) {
      return false;
    }
    return true;
  }
  
  public String f()
  {
    return c;
  }
  
  public boolean g()
  {
    return h;
  }
  
  public boolean h()
  {
    return !d.isEmpty();
  }
  
  public int hashCode()
  {
    int i1 = 0;
    int m;
    if (d != null)
    {
      m = d.hashCode();
      if (k == null) {
        break label70;
      }
    }
    label70:
    for (int n = k.hashCode();; n = 0)
    {
      if (l != null) {
        i1 = l.hashCode();
      }
      return (n + m * 31) * 31 + i1;
      m = 0;
      break;
    }
  }
  
  public String i()
  {
    if (d.isEmpty()) {
      return null;
    }
    return ((bdx)d.get(0)).a();
  }
  
  public String k()
  {
    return e;
  }
  
  public boolean l()
  {
    return !TextUtils.isEmpty(m());
  }
  
  public String m()
  {
    return f;
  }
  
  public boolean n()
  {
    return g;
  }
  
  public boolean o()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     bea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */