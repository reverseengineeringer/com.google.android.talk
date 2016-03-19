import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public final class eay
  extends dym
{
  private static final ConcurrentHashMap<Integer, eay> a = new ConcurrentHashMap();
  private long e = -1L;
  
  private eay(int paramInt, long paramLong1, long paramLong2)
  {
    super(dvd.e(paramInt), paramLong1, paramLong2);
  }
  
  public static eay b(int paramInt)
  {
    eay localeay2 = (eay)a.get(Integer.valueOf(paramInt));
    eay localeay1 = localeay2;
    if (localeay2 == null)
    {
      localeay1 = new eay(paramInt, aal.a(aal.oJ, "babel_refresh_participants_lomark_seconds", 72000) * 1000, aal.a(aal.oJ, "babel_refresh_participants_highmark_seconds", 86400) * 1000);
      a.putIfAbsent(Integer.valueOf(paramInt), localeay1);
      localeay1 = (eay)a.get(Integer.valueOf(paramInt));
    }
    return localeay1;
  }
  
  public static eay c(int paramInt)
  {
    return (eay)a.remove(Integer.valueOf(paramInt));
  }
  
  protected void a(long paramLong)
  {
    e = paramLong;
    ((hpz)ilh.a(aal.oJ, hpz.class)).b(b.a).b("refresh_participants_time", e).d();
  }
  
  protected long i()
  {
    if (e == -1L) {
      e = ((hpz)ilh.a(aal.oJ, hpz.class)).a(b.a).a("refresh_participants_time", 0L);
    }
    return e;
  }
  
  public void p_()
  {
    k();
    int i = b.a;
    try
    {
      Object localObject = new bfz(aal.oJ, b.a);
      localObject = ((bfz)localObject).m();
      if (((List)localObject).size() > 0) {
        a(new dpa((List)localObject, null, false, true));
      }
      return;
    }
    catch (bgz localbgz)
    {
      c(i);
    }
  }
}

/* Location:
 * Qualified Name:     eay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */