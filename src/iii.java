import android.content.Context;

public class iii<RQ extends lyi, RS extends lyi>
  extends iih<RS>
{
  private boolean a;
  public final RQ u;
  
  public iii(Context paramContext, ihw paramihw, String paramString1, RQ paramRQ, RS paramRS, String paramString2, String paramString3)
  {
    super(paramContext, paramihw, "POST", paramString1, paramRS, paramString2, paramString3);
    u = paramRQ;
  }
  
  private void e()
  {
    if (a) {
      return;
    }
    b(u);
    a = true;
  }
  
  public void b(RQ paramRQ) {}
  
  public byte[] c()
  {
    e();
    return lyi.a(u);
  }
  
  public String l()
  {
    e();
    return aal.a(u);
  }
}

/* Location:
 * Qualified Name:     iii
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */