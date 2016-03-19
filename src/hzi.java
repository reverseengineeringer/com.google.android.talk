import android.content.Context;

public final class hzi
{
  private static final long a = ipl.c.a(5L);
  private static final long b = ipl.c.a(100L);
  private static final long c = ipl.c.a(512L);
  private hzj d;
  private hzf e;
  private hzf f;
  
  public hzi(Context paramContext)
  {
    d = new hzl().a(paramContext);
    e = new hzg().a("media").a(a).b(b).a(0.1F).a();
    f = new hzg().a("media_sync").a(0L).b(c).a(0.25F).a();
  }
  
  public hzh a()
  {
    return new hzh(d, e, f);
  }
}

/* Location:
 * Qualified Name:     hzi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */