import android.content.Context;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.service.NoConfirmationSmsSendService;

public final class ejg
  extends eap
{
  final Context a;
  final int b;
  final String c;
  final String d;
  
  public ejg(NoConfirmationSmsSendService paramNoConfirmationSmsSendService, Context paramContext, int paramInt, String paramString1, String paramString2)
  {
    a = paramContext;
    b = paramInt;
    c = paramString1;
    d = paramString2;
  }
  
  public void a(int paramInt, bfd parambfd, dwd paramdwd, eau parameau)
  {
    if (paramInt == b)
    {
      if (parameau.b() == 1)
      {
        ((efk)ilh.a(a, efk.class)).a(parambfd, a, d, null, 0, null, 0, 0, null, c, false, null, 0);
        RealTimeChatService.b(this);
      }
    }
    else {
      return;
    }
    paramInt = parameau.b();
    parameau = String.valueOf(paramdwd);
    if (paramdwd != null) {}
    for (parambfd = a;; parambfd = "NULL")
    {
      ezi.e("Babel", String.valueOf(parameau).length() + 55 + String.valueOf(parambfd).length() + "couldn't create conversation; error code: " + paramInt + " " + parameau + " " + parambfd, new Object[0]);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     ejg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */