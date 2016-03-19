import android.content.Context;

final class ayg
  implements axz
{
  final cqr a;
  Long b;
  Long c;
  Long d;
  Long e;
  Integer f;
  private final axx g;
  private boolean h;
  
  public ayg(Context paramContext)
  {
    paramContext = ilh.b(paramContext);
    a = ((cqs)paramContext.a(cqs.class)).a(17);
    g = ((axx)paramContext.a(axx.class));
  }
  
  public void a()
  {
    
    if (h) {}
    do
    {
      return;
      h = true;
      if ((b != null) && (c != null)) {
        g.a(new ayl(this));
      }
    } while ((d == null) || (e == null) || (f == null));
    g.a(new aym(this));
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    
    if ((b == null) && (c == null)) {}
    for (boolean bool = true;; bool = false)
    {
      aen.b(bool, "Should not be called more than once per app create");
      b = Long.valueOf(paramLong1);
      c = Long.valueOf(paramLong2);
      g.a(new ayh(this));
      if (h) {
        g.a(new ayi(this));
      }
      return;
    }
  }
  
  public void a(long paramLong1, long paramLong2, int paramInt)
  {
    
    if ((d != null) || (e != null) || (f != null)) {}
    do
    {
      return;
      d = Long.valueOf(paramLong1);
      e = Long.valueOf(paramLong2);
      f = Integer.valueOf(paramInt);
      g.a(new ayj(this));
    } while (!h);
    g.a(new ayk(this));
  }
}

/* Location:
 * Qualified Name:     ayg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */