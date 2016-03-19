import android.os.Bundle;

public final class ctj
  extends img
  implements hzx
{
  private iad a;
  
  public void a(iaj paramiaj)
  {
    paramiaj = getArguments();
    a.a(paramiaj.getString("account_name"), paramiaj.getString("effective_gaia_id"));
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((iad)binder.a(iad.class));
  }
}

/* Location:
 * Qualified Name:     ctj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */