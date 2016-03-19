import android.content.Context;
import android.os.Bundle;
import java.util.List;

final class ibv
  extends htu
{
  private final String a;
  private final String b;
  private final ibw c;
  private final iaj d;
  
  ibv(String paramString1, String paramString2, String paramString3, ibw paramibw, iaj paramiaj)
  {
    super(paramString1);
    a = paramString2;
    b = paramString3;
    c = paramibw;
    d = paramiaj;
  }
  
  protected hus a(Context paramContext)
  {
    paramContext = c.a(a, b, d, false);
    hus localhus = ibp.a(paramContext);
    if (a) {
      localhus.d().putInt("account_id", ((Integer)f.get(0)).intValue());
    }
    return localhus;
  }
}

/* Location:
 * Qualified Name:     ibv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */