import java.util.concurrent.atomic.AtomicBoolean;

final class hlu
  implements hna
{
  private static hlu a;
  private final hmf<mhw> b;
  private AtomicBoolean c = new AtomicBoolean(false);
  private final hmd d;
  
  private hlu(hnj paramhnj, hmd paramhmd)
  {
    aen.a(paramhnj);
    aen.a(paramhmd);
    d = paramhmd;
    b = new hmf(paramhnj, new hlt(), paramhmd, hmk.a);
  }
  
  static hlu a(hnj paramhnj, hmd paramhmd)
  {
    try
    {
      if (a == null) {
        a = new hlu(paramhnj, paramhmd);
      }
      paramhnj = a;
      return paramhnj;
    }
    finally {}
  }
  
  public hnb a()
  {
    return hnb.a;
  }
  
  public mik b()
  {
    if (!d.a()) {
      return null;
    }
    mik localmik = new mik();
    h = new mig();
    h.a = 2;
    return localmik;
  }
}

/* Location:
 * Qualified Name:     hlu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */