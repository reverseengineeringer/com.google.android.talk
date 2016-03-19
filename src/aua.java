import java.util.concurrent.atomic.AtomicReference;

public final class aua
{
  private final hq<avp, alo<?, ?, ?>> a = new hq();
  private final AtomicReference<avp> b = new AtomicReference();
  
  private avp c(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3)
  {
    avp localavp2 = (avp)b.getAndSet(null);
    avp localavp1 = localavp2;
    if (localavp2 == null) {
      localavp1 = new avp();
    }
    localavp1.a(paramClass1, paramClass2, paramClass3);
    return localavp1;
  }
  
  public void a(Class<?> paramClass1, Class<?> paramClass2, Class<?> paramClass3, alo<?, ?, ?> paramalo)
  {
    synchronized (a)
    {
      a.put(new avp(paramClass1, paramClass2, paramClass3), paramalo);
      return;
    }
  }
  
  public boolean a(Class<?> arg1, Class<?> paramClass2, Class<?> paramClass3)
  {
    paramClass2 = c(???, paramClass2, paramClass3);
    synchronized (a)
    {
      boolean bool = a.containsKey(paramClass2);
      b.set(paramClass2);
      return bool;
    }
  }
  
  public <Data, TResource, Transcode> alo<Data, TResource, Transcode> b(Class<Data> arg1, Class<TResource> paramClass1, Class<Transcode> paramClass2)
  {
    paramClass1 = c(???, paramClass1, paramClass2);
    synchronized (a)
    {
      paramClass2 = (alo)a.get(paramClass1);
      b.set(paramClass1);
      return paramClass2;
    }
  }
}

/* Location:
 * Qualified Name:     aua
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */