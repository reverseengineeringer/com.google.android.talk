import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

public class hie<Resource extends lyi, AddRequest extends lyi, AddResponse extends lyi, ModifyRequest extends lyi, ModifyResponse extends lyi, RemoveRequest extends lyi, RemoveResponse extends lyi>
  implements hbm<Resource, AddRequest, AddResponse, ModifyRequest, ModifyResponse, RemoveRequest, RemoveResponse>
{
  final hhr a_;
  final hhm<AddResponse, ModifyResponse, RemoveRequest, RemoveResponse> b;
  public final Map<String, Resource> c;
  final List<hbn<Resource>> d;
  public volatile boolean e;
  private final hbq<Resource> f;
  private final hhn<AddRequest, AddResponse, ModifyRequest, ModifyResponse, RemoveRequest, RemoveResponse> g;
  
  public hie(hhr paramhhr, hbq<Resource> paramhbq, hhn<AddRequest, AddResponse, ModifyRequest, ModifyResponse, RemoveRequest, RemoveResponse> paramhhn, hhm<AddResponse, ModifyResponse, RemoveRequest, RemoveResponse> paramhhm)
  {
    a_ = paramhhr;
    f = paramhbq;
    g = paramhhn;
    b = paramhhm;
    e = false;
    c = new ConcurrentHashMap();
    d = new CopyOnWriteArrayList();
  }
  
  public void a(int paramInt, Resource paramResource)
  {
    
    switch (paramInt)
    {
    default: 
      hlk.a("vclib", 35 + "Operation " + paramInt + " is not found.");
    }
    for (;;)
    {
      return;
      hbs.a("Expected null", c.put(f.a(paramResource), paramResource));
      Object localObject = d.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((hbn)((Iterator)localObject).next()).a(paramResource);
      }
      continue;
      localObject = (lyi)c.put(f.a(paramResource), paramResource);
      hbs.b("Expected non-null", localObject);
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext()) {
        ((hbn)localIterator.next()).a((lyi)localObject, paramResource);
      }
      continue;
      hbs.b("Expected non-null", c.remove(f.a(paramResource)));
      localObject = d.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((hbn)((Iterator)localObject).next()).b(paramResource);
      }
      continue;
      e = true;
      paramResource = d.iterator();
      while (paramResource.hasNext()) {
        ((hbn)paramResource.next()).a();
      }
    }
  }
  
  public void a(hbn<Resource> paramhbn)
  {
    
    if (d.contains(paramhbn)) {
      hlk.a(6, "vclib", "Registered the same listener twice!");
    }
    d.add(paramhbn);
    if (e) {
      aal.a(new hif(this, paramhbn));
    }
  }
  
  public void a(AddRequest paramAddRequest, hbp<AddResponse> paramhbp)
  {
    g.a(paramAddRequest, new hig(this, paramhbp));
  }
  
  public Map<String, Resource> b()
  {
    return c;
  }
  
  public void b(hbn<Resource> paramhbn)
  {
    hbs.a();
    d.remove(paramhbn);
  }
  
  public void b(ModifyRequest paramModifyRequest, hbp<ModifyResponse> paramhbp)
  {
    g.b(paramModifyRequest, new hih(this, paramhbp));
  }
  
  public void c(RemoveRequest paramRemoveRequest, hbp<RemoveResponse> paramhbp)
  {
    g.c(paramRemoveRequest, new hii(this, paramRemoveRequest, paramhbp));
  }
}

/* Location:
 * Qualified Name:     hie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */