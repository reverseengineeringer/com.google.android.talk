import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class azt
  implements azk
{
  private static final boolean a = false;
  private final Context b;
  
  static
  {
    imx localimx = ezi.b;
  }
  
  public azt(Context paramContext)
  {
    b = paramContext;
  }
  
  public void a(int paramInt)
  {
    fi.a(b).a(new Intent("set_callerid_outcome").putExtra("set_callerid_result", paramInt));
  }
  
  public void a(int paramInt, boolean paramBoolean, String paramString)
  {
    if (a)
    {
      String str = String.valueOf("Starting setCallerIdConfig.  accountId: ");
      new StringBuilder(String.valueOf(str).length() + 43 + String.valueOf(paramString).length()).append(str).append(paramInt).append(" enable: ").append(paramBoolean).append(" e164PhoneNumber: ").append(paramString);
    }
    RealTimeChatService.a(paramInt, paramBoolean, paramString);
  }
}

/* Location:
 * Qualified Name:     azt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */