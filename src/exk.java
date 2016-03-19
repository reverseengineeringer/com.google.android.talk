import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public final class exk
{
  boolean a;
  private final Context b;
  private final String c;
  private final String d;
  
  public exk(Context paramContext, String paramString1, String paramString2)
  {
    b = paramContext;
    c = paramString1;
    d = paramString2;
  }
  
  public boolean a()
  {
    exl localexl = new exl(this);
    fi localfi = fi.a(b);
    localfi.a(localexl, new IntentFilter(d));
    localfi.b(new Intent(c));
    localfi.a(localexl);
    return a;
  }
}

/* Location:
 * Qualified Name:     exk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */