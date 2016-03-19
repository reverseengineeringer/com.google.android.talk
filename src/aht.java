import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class aht
{
  private final apj a = new apj(paramContext.getApplicationContext(), i);
  private final aty b = new aty();
  private final auc c = new auc();
  private final aue d = new aue();
  private final ajj e = new ajj();
  private final atc f = new atc();
  private final aub g = new aub();
  private final aua h = new aua();
  private final ic<List<Exception>> i = avs.a();
  
  public aht(Context paramContext) {}
  
  public aht a(aji paramaji)
  {
    e.a(paramaji);
    return this;
  }
  
  public <Data> aht a(Class<Data> paramClass, aiu<Data> paramaiu)
  {
    b.a(paramClass, paramaiu);
    return this;
  }
  
  public <TResource> aht a(Class<TResource> paramClass, ajc<TResource> paramajc)
  {
    d.a(paramClass, paramajc);
    return this;
  }
  
  public <Data, TResource> aht a(Class<Data> paramClass, Class<TResource> paramClass1, ajb<Data, TResource> paramajb)
  {
    c.a(paramajb, paramClass, paramClass1);
    return this;
  }
  
  public <Model, Data> aht a(Class<Model> paramClass, Class<Data> paramClass1, api<Model, Data> paramapi)
  {
    a.a(paramClass, paramClass1, paramapi);
    return this;
  }
  
  public <TResource, Transcode> aht a(Class<TResource> paramClass, Class<Transcode> paramClass1, atb<TResource, Transcode> paramatb)
  {
    f.a(paramClass, paramClass1, paramatb);
    return this;
  }
  
  public <X> aiu<X> a(X paramX)
  {
    aiu localaiu = b.a(paramX.getClass());
    if (localaiu != null) {
      return localaiu;
    }
    throw new ax(paramX.getClass(), (byte)0);
  }
  
  public <Data, TResource, Transcode> alo<Data, TResource, Transcode> a(Class<Data> paramClass, Class<TResource> paramClass1, Class<Transcode> paramClass2)
  {
    Object localObject2 = h.b(paramClass, paramClass1, paramClass2);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = localObject2;
      if (!h.a(paramClass, paramClass1, paramClass2))
      {
        localObject1 = new ArrayList();
        localObject2 = c.b(paramClass, paramClass1).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          Class localClass1 = (Class)((Iterator)localObject2).next();
          Iterator localIterator = f.b(localClass1, paramClass2).iterator();
          while (localIterator.hasNext())
          {
            Class localClass2 = (Class)localIterator.next();
            ((List)localObject1).add(new akp(paramClass, localClass1, localClass2, c.a(paramClass, localClass1), f.a(localClass1, localClass2), i));
          }
        }
        if (!((List)localObject1).isEmpty()) {
          break label200;
        }
      }
    }
    label200:
    for (localObject1 = null;; localObject1 = new alo(paramClass, paramClass1, paramClass2, (List)localObject1, i))
    {
      h.a(paramClass, paramClass1, paramClass2, (alo)localObject1);
      return (alo<Data, TResource, Transcode>)localObject1;
    }
  }
  
  public boolean a(alr<?> paramalr)
  {
    return d.a(paramalr.b()) != null;
  }
  
  public <Data, TResource> aht b(Class<Data> paramClass, Class<TResource> paramClass1, ajb<Data, TResource> paramajb)
  {
    c.b(paramajb, paramClass, paramClass1);
    return this;
  }
  
  public <Model, Data> aht b(Class<Model> paramClass, Class<Data> paramClass1, api<Model, Data> paramapi)
  {
    a.b(paramClass, paramClass1, paramapi);
    return this;
  }
  
  public <X> ajc<X> b(alr<X> paramalr)
  {
    ajc localajc = d.a(paramalr.b());
    if (localajc != null) {
      return localajc;
    }
    throw new ax(paramalr.b());
  }
  
  public <X> ajh<X> b(X paramX)
  {
    return e.a(paramX);
  }
  
  public <Model, TResource, Transcode> List<Class<?>> b(Class<Model> paramClass, Class<TResource> paramClass1, Class<Transcode> paramClass2)
  {
    Object localObject2 = g.a(paramClass, paramClass1);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = new ArrayList();
      localObject2 = a.a(paramClass).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Object localObject3 = (Class)((Iterator)localObject2).next();
        localObject3 = c.b((Class)localObject3, paramClass1).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          Class localClass = (Class)((Iterator)localObject3).next();
          if ((!f.b(localClass, paramClass2).isEmpty()) && (!((List)localObject1).contains(localClass))) {
            ((List)localObject1).add(localClass);
          }
        }
      }
      g.a(paramClass, paramClass1, Collections.unmodifiableList((List)localObject1));
    }
    return (List<Class<?>>)localObject1;
  }
  
  public <Model, Data> aht c(Class<Model> paramClass, Class<Data> paramClass1, api<Model, Data> paramapi)
  {
    a.c(paramClass, paramClass1, paramapi);
    return this;
  }
  
  public <Model> List<apg<Model, ?>> c(Model paramModel)
  {
    List localList = a.a(paramModel);
    if (localList.isEmpty()) {
      throw new ax(paramModel);
    }
    return localList;
  }
}

/* Location:
 * Qualified Name:     aht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */