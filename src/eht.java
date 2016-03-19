import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public abstract class eht
{
  private static final boolean a = false;
  private final ConcurrentHashMap<String, List<ehx>> b = new ConcurrentHashMap();
  private final LinkedBlockingQueue<String> c = new LinkedBlockingQueue();
  private volatile Thread d;
  public final Handler e = new Handler(Looper.getMainLooper());
  private final Object f = new Object();
  
  static
  {
    imx localimx = ezi.q;
  }
  
  private void d()
  {
    synchronized (f)
    {
      if (d == null)
      {
        d = new Thread(new ehw(this), a());
        if (a)
        {
          String str = String.valueOf(d.getName());
          if (str.length() != 0) {
            "Starting loader thread: ".concat(str);
          }
        }
        else
        {
          d.start();
        }
      }
      else
      {
        return;
      }
      new String("Starting loader thread: ");
    }
  }
  
  private boolean f(ehx paramehx)
  {
    boolean bool2 = true;
    String str = paramehx.c();
    boolean bool1;
    if (a)
    {
      ??? = String.valueOf(b());
      if (((String)???).length() != 0) {
        "addRequest 1: ".concat((String)???);
      }
    }
    else
    {
      if ((d != null) && (d != this)) {
        break label211;
      }
      bool1 = true;
      label56:
      hbs.a("Expected condition to be true", bool1);
      d = this;
    }
    Object localObject2;
    for (;;)
    {
      synchronized (f)
      {
        localObject2 = (List)b.get(str);
        if (localObject2 != null) {
          break label250;
        }
        localObject2 = new ArrayList();
        ((List)localObject2).add(paramehx);
        b.put(str, localObject2);
        if (a)
        {
          paramehx = String.valueOf(b());
          if (paramehx.length() != 0) {
            "addRequest 2: ".concat(paramehx);
          }
        }
        else
        {
          c.add(str);
          bool1 = bool2;
          if (a)
          {
            paramehx = String.valueOf(str);
            if (paramehx.length() == 0) {
              break label235;
            }
            "Added first request for: ".concat(paramehx);
            bool1 = bool2;
          }
          return bool1;
          new String("addRequest 1: ");
          break;
          label211:
          bool1 = false;
          break label56;
        }
        new String("addRequest 2: ");
      }
      label235:
      new String("Added first request for: ");
      bool1 = bool2;
    }
    label250:
    if (a)
    {
      str = String.valueOf(str);
      if (str.length() == 0) {
        break label293;
      }
      "Added additional request for: ".concat(str);
    }
    for (;;)
    {
      ((List)localObject2).add(paramehx);
      bool1 = false;
      break;
      label293:
      new String("Added additional request for: ");
    }
  }
  
  protected abstract String a();
  
  protected void a(Runnable paramRunnable)
  {
    e.post(paramRunnable);
  }
  
  protected abstract void a(ArrayList<String> paramArrayList);
  
  public boolean a(ehx paramehx)
  {
    
    if (paramehx == null) {}
    while (!f(paramehx)) {
      return false;
    }
    d();
    return false;
  }
  
  protected boolean a(String paramString)
  {
    return b.containsKey(paramString);
  }
  
  protected String b()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = c.size();
    localStringBuilder.append(43 + "Number of keys in mPendingKeys: " + i);
    i = b.size();
    localStringBuilder.append(46 + "\nNumber of keys in mRequestsByKey: " + i);
    return localStringBuilder.toString();
  }
  
  protected List<ehx> b(String paramString)
  {
    return (List)b.remove(paramString);
  }
  
  public void b(ehx paramehx)
  {
    hbs.a();
    e(paramehx);
  }
  
  protected ehx c(String paramString)
  {
    for (;;)
    {
      synchronized (f)
      {
        paramString = (List)b.get(paramString);
        if ((paramString != null) && (paramString.size() > 0))
        {
          paramString = (ehx)paramString.get(0);
          return paramString;
        }
      }
      paramString = null;
    }
  }
  
  void c()
  {
    Object localObject2 = new ArrayList();
    for (;;)
    {
      if (a)
      {
        ??? = String.valueOf(b());
        if (((String)???).length() == 0) {
          break label130;
        }
        "loadKeys looping: ".concat((String)???);
      }
      label130:
      String str;
      for (;;)
      {
        if (c.drainTo((Collection)localObject2) != 0) {
          break label221;
        }
        try
        {
          ??? = (String)c.poll(60L, TimeUnit.SECONDS);
          if (??? != null) {
            break label268;
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          synchronized (f)
          {
            for (;;)
            {
              if (c.drainTo((Collection)localObject2) == 0)
              {
                if (a)
                {
                  localObject2 = String.valueOf(d.getName());
                  if (((String)localObject2).length() != 0)
                  {
                    "Exiting loading thread: ".concat((String)localObject2);
                    b();
                  }
                }
                else
                {
                  d = null;
                  return;
                  new String("loadKeys looping: ");
                  break;
                  localInterruptedException = localInterruptedException;
                  str = String.valueOf(localInterruptedException);
                  ezi.e("Babel", String.valueOf(str).length() + 47 + "Our background loader thread was interrupted?? " + str, new Object[0]);
                  str = null;
                  continue;
                }
                new String("Exiting loading thread: ");
              }
            }
          }
        }
      }
      c.drainTo(localCollection);
      label221:
      if (a)
      {
        int i = localCollection.size();
        new StringBuilder(25).append("Loading ").append(i).append(" keys.");
      }
      try
      {
        a(localCollection);
        localCollection.clear();
        continue;
        label268:
        localCollection.add(str);
      }
      catch (bgz localbgz)
      {
        for (;;) {}
      }
    }
  }
  
  public void c(ehx paramehx)
  {
    a(new ehu(this, paramehx));
  }
  
  public void d(ehx paramehx)
  {
    a(new ehv(this, paramehx));
  }
  
  protected void d(String paramString)
  {
    synchronized (f)
    {
      c.add(paramString);
      d();
      return;
    }
  }
  
  protected void e(ehx paramehx)
  {
    if (d == null) {
      return;
    }
    hbs.a(d, this);
    String str;
    List localList;
    synchronized (f)
    {
      str = paramehx.c();
      localList = (List)b.get(str);
      if (localList == null) {
        return;
      }
    }
    d = null;
    localList.remove(paramehx);
    if (localList.size() == 0)
    {
      b.remove(str);
      c.remove(str);
      if (a)
      {
        paramehx = String.valueOf(str);
        if (paramehx.length() == 0) {
          break label124;
        }
        "Removed request for: ".concat(paramehx);
      }
    }
    for (;;)
    {
      return;
      label124:
      new String("Removed request for: ");
    }
  }
}

/* Location:
 * Qualified Name:     eht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */