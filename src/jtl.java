import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

final class jtl
  implements jtn
{
  private final jts a;
  private final hvq b;
  private final jtn c;
  private final lwa d;
  private final UUID e;
  private final boolean f;
  
  jtl(jtn paramjtn, UUID paramUUID, jts paramjts, hvq paramhvq, lwa paramlwa, boolean paramBoolean)
  {
    c = paramjtn;
    a = paramjts;
    b = paramhvq;
    e = ((UUID)fii.a(paramUUID));
    d = paramlwa;
    f = paramBoolean;
  }
  
  public jtn a(String paramString)
  {
    return new jtl(this, e, a, b, ((lwa)((mfh)d.e()).g()).c(d.j()).a(jud.a.getAndIncrement()).a(b.a()).a(paramString), f);
  }
  
  public void a()
  {
    d.b(b.a());
    a.a(e, (mfh)d.e());
  }
  
  public jtn b()
  {
    return c;
  }
  
  public void b(String paramString)
  {
    fii.b(paramString.equals(c()), "Ended wrong trace, expected %s but got %s", new Object[] { paramString, c() });
  }
  
  public String c()
  {
    return d.k();
  }
  
  public boolean d()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     jtl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */