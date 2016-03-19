import android.content.Context;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class ecd
  implements cwi
{
  private static final boolean a = false;
  private final ece b;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public ecd(ece paramece)
  {
    b = paramece;
  }
  
  public boolean E_()
  {
    return false;
  }
  
  public boolean F_()
  {
    return false;
  }
  
  public String a()
  {
    return "sms_queue";
  }
  
  public void a(Context paramContext, cwk paramcwk, cwm paramcwm)
  {
    long l1 = System.currentTimeMillis();
    for (;;)
    {
      try
      {
        paramcwm = b.f();
        String str1 = b.g();
        String str2 = b.i();
        boolean bool;
        int i;
        if (!emy.a().r())
        {
          bool = false;
          paramcwm = enw.a(paramContext, paramcwm, str1, str2, bool, b.j());
          if (paramcwm.a()) {
            break;
          }
          i = paramcwm.b();
          if (a) {
            new StringBuilder(33).append("Result failure level: ").append(i);
          }
        }
        switch (i)
        {
        default: 
          paramContext = null;
          if (paramContext != null) {
            break label402;
          }
          throw new dvn(106, "response null");
          bool = ((eot)ilh.a(aal.oJ, eot.class)).m();
          break;
        case 0: 
          paramContext = enn.a(paramContext, b.f(), b.g(), b.a() / 1000L, b.h());
          if (a)
          {
            paramcwm = String.valueOf(paramContext);
            new StringBuilder(String.valueOf(paramcwm).length() + 12).append("messageUri: ").append(paramcwm);
          }
          if (paramContext != null)
          {
            eny.a(0, enn.c(paramContext));
            paramContext = new dsm(paramContext, b.a());
          }
          else
          {
            ezi.e("Babel_SendSmsNetworkReq", "SendSmsRequest: sms provider returning null", new Object[0]);
          }
          break;
        }
      }
      catch (enr paramContext)
      {
        paramcwk = String.valueOf(paramContext);
        ezi.d("Babel_SendSmsNetworkReq", String.valueOf(paramcwk).length() + 39 + "SendSmsRequest: failed to send message " + paramcwk, paramContext);
        throw new dvn(117, paramContext);
      }
    }
    ezi.e("Babel_SendSmsNetworkReq", "SendSmsRequest: temporary failure", new Object[0]);
    throw new dvn(116);
    ezi.e("Babel_SendSmsNetworkReq", "SendSmsRequest: permanent failure", new Object[0]);
    throw new dvn(117);
    ezi.e("Babel_SendSmsNetworkReq", "SendSmsRequest: sending timed out", new Object[0]);
    throw new dvn(117);
    label402:
    long l2 = System.currentTimeMillis();
    paramContext.a(1000L * l1);
    paramContext.b(l2 * 1000L);
    paramContext.a(b);
    RealTimeChatService.a(c, paramContext);
  }
  
  public boolean a(cwi paramcwi)
  {
    return false;
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    if (d >= 3) {
      return false;
    }
    switch (paramdvn.c())
    {
    case 106: 
    case 117: 
    default: 
      int i = paramdvn.c();
      ezi.d("Babel_SendSmsNetworkReq", 49 + "Default no retry on BabelClientError: " + i, new Object[0]);
      return false;
    }
    return true;
  }
  
  public boolean a(String paramString)
  {
    return paramString.startsWith(b.b());
  }
  
  public long b()
  {
    return ((bdp)ilh.a(aal.oJ, bdp.class)).a("babel_pending_sms_message_failure_duration", 300000L);
  }
  
  public void b(int paramInt, dvn paramdvn)
  {
    int i = 0;
    bfd localbfd1 = dvd.e(paramInt);
    if (localbfd1 == null)
    {
      if (ezi.a("Babel_SendSmsNetworkReq", 3)) {
        ezi.a("Babel_SendSmsNetworkReq", 57 + "Skipping request failure for invalid account: " + paramInt, new Object[0]);
      }
      return;
    }
    bfd localbfd2 = dvd.l();
    if (localbfd2 == null)
    {
      ezi.d("Babel_SendSmsNetworkReq", "Skipping request failure for null SMS account", new Object[0]);
      return;
    }
    String str1 = b.e();
    String str2 = b.b();
    paramInt = i;
    if (paramdvn != null) {
      paramInt = paramdvn.c();
    }
    RealTimeChatService.a(localbfd2, str1, str2, paramInt);
    RealTimeChatService.a(localbfd1, b, paramdvn);
  }
  
  public String e()
  {
    return null;
  }
  
  public String toString()
  {
    String str = String.valueOf(b.toString());
    if (str.length() != 0) {
      return "SendSmsNetworkRequest ".concat(str);
    }
    return new String("SendSmsNetworkRequest ");
  }
}

/* Location:
 * Qualified Name:     ecd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */