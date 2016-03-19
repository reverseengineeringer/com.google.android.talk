import android.content.Context;
import android.os.Bundle;

final class ejq
  extends htu
{
  private final int a;
  private final iaf b;
  
  public ejq(Context paramContext, int paramInt)
  {
    super(paramContext, "Babel_sign_out");
    a = paramInt;
    b = ((iaf)ilh.a(paramContext, iaf.class));
  }
  
  protected hus a()
  {
    b.a(a);
    hus localhus = new hus(true);
    localhus.d().putInt("account_id", a);
    return localhus;
  }
}

/* Location:
 * Qualified Name:     ejq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */