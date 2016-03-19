import android.content.Context;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class ebr
  implements cwi
{
  private static final boolean a = false;
  private final ebt b;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public ebr(ebt paramebt)
  {
    b = paramebt;
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
    return "mms_recv_queue";
  }
  
  public void a(Context paramContext, cwk paramcwk, cwm paramcwm)
  {
    long l1 = System.currentTimeMillis();
    for (;;)
    {
      String str1;
      try
      {
        paramcwm = b.b();
        str1 = b.a();
        if (enl.a)
        {
          String str2 = String.valueOf(str1);
          if (str2.length() != 0) {
            "MmsTransaction.retrieveMessage: ".concat(str2);
          }
        }
        else
        {
          if (!TextUtils.isEmpty(str1)) {
            continue;
          }
          throw new adb("MmsTransactions: retrieve: empty URL");
        }
      }
      catch (enk paramContext)
      {
        paramcwk = String.valueOf(paramContext);
        ezi.d("Babel_RetrieveMmsNetReq", String.valueOf(paramcwk).length() + 47 + "RetrieveMmsRequest: failed to retrieve message " + paramcwk, paramContext);
        throw new dvn(118, paramContext);
        new String("MmsTransaction.retrieveMessage: ");
        continue;
      }
      catch (end paramContext)
      {
        paramcwk = String.valueOf(paramContext);
        ezi.d("Babel_RetrieveMmsNetReq", String.valueOf(paramcwk).length() + 47 + "RetrieveMmsRequest: failed to retrieve message " + paramcwk, paramContext);
        throw new dvn(a, paramContext);
        if (enn.a(paramContext))
        {
          paramcwm = ((enb)ilh.a(paramContext, enb.class)).a(paramContext, paramcwm, str1);
          paramContext = enn.a(paramContext, paramcwm);
          if (paramContext != null) {
            break;
          }
          ezi.e("Babel_RetrieveMmsNetReq", "RetrieveMmsRequest: failed to persist message into telephony", new Object[0]);
          throw new dvn(134, "Failed to persist retrieved mms message");
        }
      }
      catch (adb paramContext)
      {
        paramcwk = String.valueOf(paramContext);
        ezi.d("Babel_RetrieveMmsNetReq", String.valueOf(paramcwk).length() + 47 + "RetrieveMmsRequest: failed to retrieve message " + paramcwk, paramContext);
        throw new dvn(137, paramContext);
      }
      paramcwm = enl.a(paramContext, paramcwm, str1);
    }
    eny.a(1, enn.c(paramContext));
    paramContext = new dsh(paramContext, b.e(), b.f());
    long l2 = System.currentTimeMillis();
    paramContext.a(l1 * 1000L);
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
    switch (paramdvn.c())
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
      int i = paramdvn.c();
      ezi.d("Babel_RetrieveMmsNetReq", 49 + "Default no retry on BabelClientError: " + i, new Object[0]);
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
    return false;
  }
  
  public long b()
  {
    return ((bdp)ilh.a(aal.oJ, bdp.class)).a("babel_pending_message_failure_duration", 1200000L);
  }
  
  public void b(int paramInt, dvn paramdvn)
  {
    bfd localbfd1 = dvd.e(paramInt);
    if (localbfd1 == null)
    {
      if (ezi.a("Babel_RetrieveMmsNetReq", 3)) {
        ezi.a("Babel_RetrieveMmsNetReq", 57 + "Skipping request failure for invalid account: " + paramInt, new Object[0]);
      }
      return;
    }
    bfd localbfd2 = dvd.l();
    if (localbfd2 == null)
    {
      ezi.d("Babel_RetrieveMmsNetReq", "Skipping request failure for null MMS account", new Object[0]);
      return;
    }
    RealTimeChatService.a(localbfd2.g(), b.e(), b.f(), paramdvn.c());
    if ((paramdvn != null) && (paramdvn.c() != 0)) {
      ((hba)ilh.a(aal.oJ, hba.class)).a(localbfd2.g()).a(1524).a(Integer.valueOf(paramdvn.c())).a(String.valueOf(b.e())).d();
    }
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
      return "RetrieveMmsNetworkRequest ".concat(str);
    }
    return new String("RetrieveMmsNetworkRequest ");
  }
}

/* Location:
 * Qualified Name:     ebr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */