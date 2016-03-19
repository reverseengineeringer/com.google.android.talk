import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.apps.hangouts.invites.offnetwork.impl.OffnetworkInviteActivity;
import com.google.android.apps.hangouts.phone.BabelGatewayActivity;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class cpy
  extends eap
{
  private final Context a;
  private final String b;
  private final String c;
  private final bfd d;
  private cpu e;
  
  cpy(Context paramContext, String paramString1, String paramString2)
  {
    a = paramContext;
    b = paramString1;
    c = paramString2;
    d = dvd.e(((hpu)ilh.a(paramContext, hpu.class)).a());
  }
  
  public static String a(bfd parambfd)
  {
    String str2 = aal.a(aal.oJ, "babel_offnetwork_invite_canned_text_hangouts_website", "plus.google.com/hangouts/app/conversation");
    String str1 = str2;
    if (aal.a(aal.oJ, "babel_enable_viral_flow_v1", true))
    {
      parambfd = ba;
      str1 = String.valueOf(str2).length() + 4 + String.valueOf(parambfd).length() + str2 + "?pi=" + parambfd;
    }
    return str1;
  }
  
  private void a(String paramString, bfd parambfd)
  {
    bfd localbfd = dvd.a(parambfd);
    if (e != null)
    {
      paramString = a.getString(aen.jf, new Object[] { paramString });
      aal.a(null, 1898);
      e.a(paramString);
      return;
    }
    int i;
    if (((awo)ilh.a(a, awo.class)).d(parambfd.g())) {
      i = parambfd.g();
    }
    for (;;)
    {
      a.startActivity(OffnetworkInviteActivity.a(c, bzq.b(b), parambfd.g(), i, paramString));
      return;
      if (localbfd != null) {
        i = localbfd.g();
      } else {
        i = -1;
      }
    }
  }
  
  public void a(int paramInt, bfd parambfd, eau parameau)
  {
    parameau = parameau.c();
    if ((parameau instanceof drh))
    {
      String str = g;
      parameau = str;
      if (TextUtils.isEmpty(str)) {
        parameau = a(parambfd);
      }
      a(parameau, parambfd);
      RealTimeChatService.b(this);
    }
  }
  
  public void a(int paramInt, bfd parambfd, eff parameff, dvn paramdvn)
  {
    if ((parameff instanceof dpd))
    {
      a(a(parambfd), parambfd);
      RealTimeChatService.b(this);
    }
  }
  
  void a(Context paramContext, int paramInt)
  {
    e = ((cpu)ilh.b(paramContext, cpu.class));
    if (bzq.a(b)) {
      byi.a(new cqa(paramContext, d, b), null).a();
    }
    do
    {
      return;
      paramContext = bzq.b(b);
      if (TextUtils.isEmpty(paramContext)) {
        break;
      }
      Object localObject;
      if (paramInt == cpz.c)
      {
        localObject = bzq.b(b);
        RealTimeChatService.a(this);
        RealTimeChatService.s(d, (String)localObject);
      }
      if (paramInt == cpz.a)
      {
        localObject = aal.c(OffnetworkInviteActivity.a(c, paramContext, -1, d.g(), null));
        a.startActivity((Intent)localObject);
      }
    } while (paramInt != cpz.b);
    paramContext = aal.c(BabelGatewayActivity.a(-1, "", paramContext, "", false, null));
    paramContext.putExtra("sms_accts_only", true);
    a.startActivity(paramContext);
    return;
    paramContext = String.valueOf(b);
    if (paramContext.length() != 0) {}
    for (paramContext = "OffnetworkInvite.invite: invalid phone number ".concat(paramContext);; paramContext = new String("OffnetworkInvite.invite: invalid phone number "))
    {
      ezi.e("Babel_OffnetworkInvite", paramContext, new Object[0]);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     cpy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */