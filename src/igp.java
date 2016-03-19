import android.util.Log;
import android.view.View;
import java.io.File;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;

public abstract class igp
{
  private igr a;
  private ArrayList<igr> b;
  public final igs f;
  public final igq g;
  public volatile Object h;
  public volatile int i;
  public volatile int j;
  public volatile int k;
  public boolean l;
  public boolean m;
  public volatile boolean n;
  
  public igp(igs paramigs, igq paramigq)
  {
    f = paramigs;
    g = paramigq;
    l = Log.isLoggable("EsResource", 3);
  }
  
  private void a()
  {
    if (m) {
      throw new ConcurrentModificationException("Registering/unregistering resource while delivering status change notification");
    }
  }
  
  private static void a(StringBuilder paramStringBuilder, igr paramigr)
  {
    paramStringBuilder.append(paramigr);
    if ((paramigr instanceof View)) {
      paramStringBuilder.append(" context: ").append(((View)paramigr).getContext());
    }
  }
  
  private static String b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return String.valueOf(paramInt);
    case 7: 
      return "canceled";
    case 2: 
      return "loading";
    case 3: 
      return "not found";
    case 6: 
      return "out of memory";
    case 5: 
      return "permanent error";
    case 1: 
      return "ready";
    case 4: 
      return "transient error";
    }
    return "undefined";
  }
  
  public void a(int paramInt)
  {
    String str1;
    String str2;
    if (i != 2)
    {
      if (p())
      {
        str1 = String.valueOf(g);
        str2 = String.valueOf(n());
        String str3 = String.valueOf(b(paramInt));
        new StringBuilder(String.valueOf(str1).length() + 96 + String.valueOf(str2).length() + String.valueOf(str3).length()).append("Request no longer needed, not delivering status change: ").append(str1).append(", current status: ").append(str2).append(", ignored new status: ").append(str3);
      }
      return;
    }
    if (p())
    {
      str1 = String.valueOf(g);
      str2 = String.valueOf(b(paramInt));
      new StringBuilder(String.valueOf(str1).length() + 45 + String.valueOf(str2).length()).append("Delivering error code to consumers: ").append(str1).append(" status: ").append(str2);
    }
    f.a(this, paramInt);
  }
  
  public void a(int paramInt, String paramString)
  {
    if (paramInt == 404)
    {
      f.a(this, 3);
      return;
    }
    if (paramInt == 401)
    {
      f.a(this, 4, paramInt);
      return;
    }
    f.a(this, 5, paramInt);
  }
  
  public void a(igr paramigr)
  {
    boolean bool = false;
    aal.w();
    a();
    int i1;
    if (a == paramigr) {
      i1 = 1;
    }
    while (i1 != 0)
    {
      return;
      if (b != null)
      {
        int i2 = b.size();
        i1 = 0;
        for (;;)
        {
          if (i1 >= i2) {
            break label71;
          }
          if (b.get(i1) == paramigr)
          {
            i1 = 1;
            break;
          }
          i1 += 1;
        }
      }
      label71:
      i1 = 0;
    }
    if (b != null)
    {
      bool = b.isEmpty();
      b.add(paramigr);
    }
    for (;;)
    {
      if (bool) {
        f.a(this);
      }
      paramigr.a(this);
      return;
      if (a != null)
      {
        b = new ArrayList();
        b.add(a);
        a = null;
        b.add(paramigr);
      }
      else
      {
        a = paramigr;
        bool = true;
      }
    }
  }
  
  public abstract void a(Object paramObject);
  
  public void a(String paramString, Throwable paramThrowable)
  {
    Log.e("EsResource", paramString, paramThrowable);
  }
  
  public void a(StringBuilder paramStringBuilder) {}
  
  public void b(igr paramigr)
  {
    aal.w();
    a();
    if (a == paramigr)
    {
      a = null;
      f.b(this);
    }
    while (b == null) {
      return;
    }
    int i2 = b.size();
    int i1 = 0;
    for (;;)
    {
      if (i1 < i2)
      {
        if (b.get(i1) == paramigr) {
          b.remove(i1);
        }
      }
      else
      {
        if (!b.isEmpty()) {
          break;
        }
        f.b(this);
        return;
      }
      i1 += 1;
    }
  }
  
  public void b(Object paramObject)
  {
    f.a(this, 1, paramObject);
  }
  
  public abstract void c();
  
  public void c(int paramInt)
  {
    i = paramInt;
  }
  
  public File f()
  {
    return null;
  }
  
  public File g()
  {
    return null;
  }
  
  public void i()
  {
    i = 0;
    h = null;
  }
  
  public igq l()
  {
    return g;
  }
  
  public int m()
  {
    return i;
  }
  
  public String n()
  {
    return b(i);
  }
  
  public Object o()
  {
    return h;
  }
  
  public boolean p()
  {
    return l;
  }
  
  public int q()
  {
    if (b != null) {
      return b.size();
    }
    if (a != null) {
      return 1;
    }
    return 0;
  }
  
  public void r()
  {
    
    if (q() == 0)
    {
      i();
      return;
    }
    m = true;
    try
    {
      if (b != null)
      {
        Iterator localIterator = b.iterator();
        while (localIterator.hasNext()) {
          ((igr)localIterator.next()).a(this);
        }
      }
      if (a == null) {
        break label87;
      }
    }
    finally
    {
      m = false;
    }
    a.a(this);
    label87:
    m = false;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getClass().getSimpleName()).append('@').append(System.identityHashCode(this)).append("\n  ID: ").append(g).append("\n  Status: ").append(n());
    if (n) {
      localStringBuilder.append("; downloading");
    }
    if (h != null) {
      a(localStringBuilder);
    }
    localStringBuilder.append("\n  Consumers:");
    if (b != null)
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        igr localigr = (igr)localIterator.next();
        localStringBuilder.append("\n   ");
        a(localStringBuilder, localigr);
      }
    }
    if (a != null)
    {
      localStringBuilder.append("\n   ");
      a(localStringBuilder, a);
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append("\n   none");
    }
  }
}

/* Location:
 * Qualified Name:     igp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */