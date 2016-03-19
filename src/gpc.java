import android.os.Bundle;

final class gpc
  extends goh
{
  private final fju<glt> a;
  
  public gpc(fju<glt> paramfju)
  {
    a = paramfju;
  }
  
  public void a()
  {
    a.a();
  }
  
  public void a(int paramInt, Bundle paramBundle1, Bundle paramBundle2)
  {
    if (aal.q(3))
    {
      new StringBuilder("Bundle callback: status=").append(paramInt).append("\nresolution=").append(paramBundle1).append("\nbundle=").append(paramBundle2);
      aal.q(3);
    }
    if (paramInt != 0)
    {
      aal.q(5);
      return;
    }
    a.a(new fjw(paramBundle2.getString("account"), paramBundle2.getString("pagegaiaid"), paramBundle2.getInt("scope")));
  }
}

/* Location:
 * Qualified Name:     gpc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */