import android.os.Bundle;

public class buc
  extends but
  implements bmv
{
  public boolean a()
  {
    ((bpq)binder.a(bpq.class)).i();
    if (!((bmw)binder.a(bmw.class)).e())
    {
      ((bkt)binder.a(bkt.class)).a(bkr.d);
      return false;
    }
    return true;
  }
  
  public boolean b()
  {
    return false;
  }
  
  public void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    binder.a(bub.class, new bud(this));
  }
}

/* Location:
 * Qualified Name:     buc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */