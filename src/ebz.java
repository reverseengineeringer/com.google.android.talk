import android.content.Context;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class ebz
  implements cwi
{
  private static final boolean a = false;
  private final eca b;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public ebz(eca parameca)
  {
    b = parameca;
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
    return "mms_queue";
  }
  
  public void a(Context paramContext, cwk paramcwk, cwm paramcwm)
  {
    if (a)
    {
      paramcwm = String.valueOf(b.toString());
      if (paramcwm.length() == 0) {
        break label184;
      }
      "Sending mms request ".concat(paramcwm);
    }
    for (;;)
    {
      long l1 = System.currentTimeMillis();
      try
      {
        if (b.n() != null)
        {
          paramcwm = enl.a(paramContext, b.f(), b.g(), b.n(), b.a());
          localadt = new adt(this);
          paramContext = enn.a(paramContext, a, b, localadt);
          if (paramContext != null) {
            break label268;
          }
          ezi.e("Babel_SendMmsNetworkReq", "SendMmsRequest: failed to persist message into telephony", new Object[0]);
          throw new dvn(134, "Failed to persist sent mms message");
        }
      }
      catch (enk paramContext)
      {
        adt localadt;
        for (;;)
        {
          paramcwk = String.valueOf(paramContext);
          ezi.d("Babel_SendMmsNetworkReq", String.valueOf(paramcwk).length() + 39 + "SendMmsRequest: failed to send message " + paramcwk, paramContext);
          throw new dvn(118, paramContext);
          new String("Sending mms request ");
          break;
          paramcwm = enl.a(paramContext, b.f(), b.g(), b.h(), b.i(), b.j(), b.k(), b.l(), b.m(), b.a());
        }
        eny.a(1, enn.c(paramContext));
        paramContext = new dsk(paramContext, a.f(), b.a(), localadt.a());
        long l2 = System.currentTimeMillis();
        paramContext.a(1000L * l1);
        paramContext.b(l2 * 1000L);
        paramContext.a(b);
        RealTimeChatService.a(c, paramContext);
        return;
      }
      catch (adb paramContext)
      {
        paramcwk = String.valueOf(paramContext);
        ezi.d("Babel_SendMmsNetworkReq", String.valueOf(paramcwk).length() + 39 + "SendMmsRequest: failed to send message " + paramcwk, paramContext);
        throw new dvn(136, paramContext);
      }
      catch (end paramContext)
      {
        label184:
        label268:
        paramcwk = String.valueOf(paramContext);
        ezi.d("Babel_SendMmsNetworkReq", String.valueOf(paramcwk).length() + 39 + "SendMmsRequest: failed to send message " + paramcwk, paramContext);
        throw new dvn(a, paramContext);
      }
    }
  }
  
  public boolean a(cwi paramcwi)
  {
    return false;
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    int i = paramdvn.c();
    switch (i)
    {
    case 107: 
    case 108: 
    case 109: 
    case 110: 
    case 111: 
    case 112: 
    case 113: 
    case 114: 
    case 115: 
    case 116: 
    case 117: 
    case 120: 
    case 121: 
    case 122: 
    default: 
      ezi.d("Babel_SendMmsNetworkReq", 49 + "Default no retry on BabelClientError: " + i, new Object[0]);
    case 106: 
    case 119: 
    case 123: 
    case 124: 
    case 125: 
    case 126: 
    case 127: 
    case 128: 
    case 129: 
    case 130: 
    case 131: 
    case 132: 
    case 133: 
    case 134: 
    case 135: 
    case 136: 
    case 137: 
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
      if (ezi.a("Babel_SendMmsNetworkReq", 3)) {
        ezi.a("Babel_SendMmsNetworkReq", 57 + "Skipping request failure for invalid account: " + paramInt, new Object[0]);
      }
      return;
    }
    bfd localbfd2 = dvd.l();
    if (localbfd2 == null)
    {
      ezi.d("Babel_SendMmsNetworkReq", "Skipping request failure for null MMS account", new Object[0]);
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
      return "SendMmsNetworkRequest ".concat(str);
    }
    return new String("SendMmsNetworkRequest ");
  }
}

/* Location:
 * Qualified Name:     ebz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */