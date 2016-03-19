import android.os.Bundle;

public final class ctd
  extends img
  implements iam
{
  public awm a;
  public hpz b;
  iad c;
  public int d = -1;
  
  public void a(int paramInt)
  {
    d = paramInt;
    hqb localhqb = b.a(paramInt);
    if (!a.a(localhqb))
    {
      a.a(new awn(this));
      a.b(paramInt);
      return;
    }
    c.a(localhqb.b("account_name"), localhqb.b("effective_gaia_id"));
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((awm)binder.a(awm.class));
    b = ((hpz)binder.a(hpz.class));
    c = ((iad)binder.a(iad.class));
  }
}

/* Location:
 * Qualified Name:     ctd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */