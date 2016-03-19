import android.os.Looper;
import android.os.MessageQueue;
import android.util.Log;
import com.bumptech.glide.load.engine.EngineResource.ResourceListener;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class alh
  implements EngineResource.ResourceListener, anf
{
  final Map<aiw, ale> a;
  final alj b;
  final ane c;
  final akz d;
  final Map<aiw, WeakReference<alk<?>>> e;
  final alu f;
  final akl g;
  final akx h;
  ReferenceQueue<alk<?>> i;
  
  public alh(ane paramane, amv paramamv, anm paramanm1, anm paramanm2)
  {
    this(paramane, paramamv, paramanm1, paramanm2, (byte)0);
  }
  
  alh(alj paramalj, Map<aiw, WeakReference<alk<?>>> paramMap, akz paramakz, akx paramakx, alu paramalu, byte paramByte)
  {
    c = paramalj;
    g = new akl(paramMap);
    e = new HashMap();
    b = new alj();
    a = new HashMap();
    d = new akz(paramakz, paramakx, this);
    h = new akx(g);
    f = new alu();
    paramalj.a(this);
  }
  
  static void a(String paramString, long paramLong, aiw paramaiw)
  {
    double d1 = avm.a(paramLong);
    paramaiw = String.valueOf(paramaiw);
    new StringBuilder(String.valueOf(paramString).length() + 37 + String.valueOf(paramaiw).length()).append(paramString).append(" in ").append(d1).append("ms, key: ").append(paramaiw);
  }
  
  public <R> alb a(ahm paramahm, Object paramObject, aiw paramaiw, int paramInt1, int paramInt2, Class<?> paramClass, Class<R> paramClass1, ahs paramahs, akr paramakr, Map<Class<?>, ajd<?>> paramMap, boolean paramBoolean1, aja paramaja, boolean paramBoolean2, aul paramaul)
  {
    avq.a();
    long l = avm.a();
    ali localali = new ali(paramObject, paramaiw, paramInt1, paramInt2, paramMap, paramClass, paramClass1, paramaja);
    Object localObject2;
    Object localObject1;
    if (!paramBoolean2)
    {
      localObject2 = null;
      if (localObject2 != null)
      {
        paramaul.a((alr)localObject2, air.e);
        if (Log.isLoggable("Engine", 2)) {
          a("Loaded resource from cache", l, localali);
        }
        return null;
      }
    }
    else
    {
      localObject1 = c.a(localali);
      if (localObject1 == null) {
        localObject1 = null;
      }
      for (;;)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          break;
        }
        ((alk)localObject1).f();
        e.put(localali, new ald(localali, (alk)localObject1, a()));
        localObject2 = localObject1;
        break;
        if ((localObject1 instanceof alk)) {
          localObject1 = (alk)localObject1;
        } else {
          localObject1 = new alk((alr)localObject1, true);
        }
      }
    }
    if (!paramBoolean2) {
      localObject1 = null;
    }
    for (;;)
    {
      if (localObject1 != null)
      {
        paramaul.a((alr)localObject1, air.e);
        if (Log.isLoggable("Engine", 2)) {
          a("Loaded resource from active resources", l, localali);
        }
        return null;
        localObject1 = (WeakReference)e.get(localali);
        if (localObject1 != null)
        {
          localObject1 = (alk)((WeakReference)localObject1).get();
          if (localObject1 != null)
          {
            ((alk)localObject1).f();
            continue;
          }
          e.remove(localali);
        }
      }
      else
      {
        localObject1 = (ale)a.get(localali);
        if (localObject1 != null)
        {
          ((ale)localObject1).a(paramaul);
          if (Log.isLoggable("Engine", 2)) {
            a("Added to existing load", l, localali);
          }
          return new alb(paramaul, (ale)localObject1);
        }
        localObject1 = d.a(localali, paramBoolean2);
        paramahm = h.a(paramahm, paramObject, localali, paramaiw, paramInt1, paramInt2, paramClass, paramClass1, paramahs, paramakr, paramMap, paramBoolean1, paramaja, (akj)localObject1);
        a.put(localali, localObject1);
        ((ale)localObject1).a(paramaul);
        ((ale)localObject1).b(paramahm);
        if (Log.isLoggable("Engine", 2)) {
          a("Started new load", l, localali);
        }
        return new alb(paramaul, (ale)localObject1);
      }
      localObject1 = null;
    }
  }
  
  ReferenceQueue<alk<?>> a()
  {
    if (i == null)
    {
      i = new ReferenceQueue();
      Looper.myQueue().addIdleHandler(new alc(e, i));
    }
    return i;
  }
  
  public void a(aiw paramaiw, alk<?> paramalk)
  {
    
    if (paramalk != null)
    {
      paramalk.a(paramaiw, this);
      if (paramalk.a()) {
        e.put(paramaiw, new ald(paramaiw, paramalk, a()));
      }
    }
    a.remove(paramaiw);
  }
  
  public void a(ale paramale, aiw paramaiw)
  {
    
    if (paramale.equals((ale)a.get(paramaiw))) {
      a.remove(paramaiw);
    }
  }
  
  public void a(alr<?> paramalr)
  {
    avq.a();
    f.a(paramalr);
  }
  
  public void b(aiw paramaiw, alk paramalk)
  {
    avq.a();
    e.remove(paramaiw);
    if (paramalk.a())
    {
      c.a(paramaiw, paramalk);
      return;
    }
    f.a(paramalk);
  }
}

/* Location:
 * Qualified Name:     alh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */