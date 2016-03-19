import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;

final class jtt
  implements jts
{
  private static final UUID d = ;
  final Executor a;
  final kog b;
  final ConcurrentMap<UUID, List<mfh>> c = new ConcurrentHashMap(2, 0.75F, 1);
  private final jrs e;
  private final hvq f;
  
  jtt(jrs paramjrs, hvq paramhvq, Executor paramExecutor, kog paramkog)
  {
    e = paramjrs;
    f = paramhvq;
    a = paramExecutor;
    b = paramkog;
  }
  
  public void a(String paramString)
  {
    Object localObject1 = jud.a();
    if (localObject1 != null)
    {
      paramString = String.valueOf(((jtn)localObject1).c());
      if (paramString.length() != 0) {}
      for (paramString = "Already associated with a trace: ".concat(paramString);; paramString = new String("Already associated with a trace: ")) {
        throw new IllegalStateException(paramString);
      }
    }
    localObject1 = UUID.randomUUID();
    Object localObject2 = ((lwa)mfh.f.g()).a(jud.a.getAndIncrement()).c(0L).b(((UUID)localObject1).getLeastSignificantBits()).a(f.a()).a(paramString);
    jtl localjtl = new jtl(null, (UUID)localObject1, this, f, (lwa)localObject2, true);
    paramString = new ArrayList();
    paramString.add(((lwa)localObject2).e());
    c.put(localObject1, Collections.synchronizedList(paramString));
    jud.a(localjtl);
    localObject2 = e.a(localjtl);
    ((lbb)localObject2).a(new jtu(this, (UUID)localObject1, paramString, (lbb)localObject2), a);
  }
  
  public void a(UUID paramUUID, mfh parammfh)
  {
    if (d.equals(paramUUID)) {
      return;
    }
    fii.b(((List)c.get(paramUUID)).add(parammfh));
  }
}

/* Location:
 * Qualified Name:     jtt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */