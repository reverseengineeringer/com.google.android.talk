import android.os.AsyncTask;
import android.os.Debug;
import android.os.Debug.MemoryInfo;
import java.util.Iterator;

public final class byu
  extends AsyncTask<Void, Void, Void>
{
  private fkg a;
  private hq<String, Integer> b = new hq();
  private hq<String, Integer> c = new hq();
  private final byv d;
  private final eim e;
  
  public byu(fkg paramfkg, eim parameim, byv parambyv)
  {
    e = parameim;
    d = parambyv;
    a = paramfkg;
  }
  
  private Void b()
  {
    try
    {
      b.clear();
      c.clear();
      localMemoryInfo = new Debug.MemoryInfo();
      if (a == null) {
        break label353;
      }
      i = a.a();
      ezi.c("Babel", 29 + "Loading contacts: " + i, new Object[0]);
      i = 0;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        Debug.MemoryInfo localMemoryInfo;
        ezi.d("Babel", "ContactLookupProviderAsyncTask interrupted.", new Object[0]);
        a();
        break;
        Object localObject3 = ezm.k(((gpy)localObject3).b());
        if (!b.containsKey(localObject3)) {
          b.put(localObject3, Integer.valueOf(i));
        }
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;)
      {
        int i;
        Object localObject2;
        ezi.d("Babel", "ContactLookupProviderAsyncTask failed with IllegalStateException.", new Object[0]);
        a();
        break;
        Object localObject1 = ((gpr)localObject1).b().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (Long)((Iterator)localObject1).next();
          if (isCancelled()) {
            throw new InterruptedException();
          }
          localObject2 = String.valueOf(localObject2);
          if (!c.containsKey(localObject2)) {
            c.put(localObject2, Integer.valueOf(i));
          }
        }
        i += 1;
      }
    }
    if (i < a.a())
    {
      if (i % 100 == 0)
      {
        Debug.getMemoryInfo(localMemoryInfo);
        if (localMemoryInfo.getTotalPss() < 2048)
        {
          ezi.e("Babel", "Low memory! Halting contact load.", new Object[0]);
          break label353;
        }
      }
      localObject1 = (gpr)a.a(i);
      if (bzq.b((gpr)localObject1))
      {
        localObject2 = ((gpr)localObject1).d().iterator();
        if (((Iterator)localObject2).hasNext())
        {
          localObject3 = (gpy)((Iterator)localObject2).next();
          if (isCancelled()) {
            throw new InterruptedException();
          }
        }
      }
    }
    label353:
    return null;
  }
  
  public gpr a(String paramString)
  {
    if ((a != null) && (!a.c()) && (c.containsKey(paramString))) {
      return (gpr)a.a(aal.a((Integer)c.get(paramString), 0));
    }
    return null;
  }
  
  public void a()
  {
    a = null;
    b.clear();
    c.clear();
  }
  
  public gpr b(String paramString)
  {
    paramString = ezm.k(paramString);
    if ((a != null) && (!a.c()) && (b.containsKey(paramString))) {
      return (gpr)a.a(aal.a((Integer)b.get(paramString), 0));
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     byu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */