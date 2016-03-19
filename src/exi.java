import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;

public final class exi
{
  final String a;
  final BroadcastReceiver b = new exj(this);
  private final Context c;
  private final String d;
  
  public exi(Context paramContext, String paramString1, String paramString2)
  {
    c = paramContext;
    d = paramString1;
    a = paramString2;
  }
  
  public void a()
  {
    fi.a(c).a(b, new IntentFilter(d));
  }
  
  public void b()
  {
    fi.a(c).a(b);
  }
}

/* Location:
 * Qualified Name:     exi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */