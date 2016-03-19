import android.content.Context;
import android.content.Intent;
import java.util.Collection;

final class dtz
  implements dyw
{
  private static final boolean a = false;
  
  static
  {
    imx localimx = ezi.m;
  }
  
  private static void a(Context paramContext, String paramString, boolean paramBoolean)
  {
    paramContext.startService(new Intent().setClassName("com.google.android.apps.hangoutsdialer", "com.google.android.apps.hangoutsdialer.app.CallInterceptor$ResponseService").putExtra("op_code", 4).putExtra("android.intent.extra.PHONE_NUMBER", paramString).putExtra("will_reroute_reply", paramBoolean));
    if (a) {
      new StringBuilder(24).append("Will reroute call: ").append(paramBoolean);
    }
  }
  
  public Collection<Integer> a()
  {
    return ksf.a(Integer.valueOf(3));
  }
  
  public void a(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("android.intent.extra.PHONE_NUMBER");
    dtx localdtx = (dtx)ilh.b(paramContext, dtx.class);
    if (localdtx != null)
    {
      knq.c(paramIntent.getStringExtra("com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"));
      if (localdtx.a().f())
      {
        a(paramContext, str, true);
        return;
      }
    }
    a(paramContext, str, false);
  }
}

/* Location:
 * Qualified Name:     dtz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */