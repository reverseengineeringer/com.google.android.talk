import android.content.Context;

public final class hfm
  extends hby
{
  private static final int[] a = { 2 };
  private final hcd b;
  private final hbt c;
  
  public hfm(Context paramContext, hcd paramhcd)
  {
    super(paramContext, a);
    b = paramhcd;
    c = new hbt(paramContext);
  }
  
  public void a(kli paramkli)
  {
    super.a(paramkli);
    hkv localhkv = b.l();
    a = new klh();
    a.k = localhkv.c();
    a.b = localhkv.d();
    g = new jut();
    g.d = Integer.valueOf(c.a());
  }
}

/* Location:
 * Qualified Name:     hfm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */