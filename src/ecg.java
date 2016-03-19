import android.content.Context;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public abstract class ecg<W extends eff>
  implements cwi
{
  public final W a;
  
  public ecg(W paramW)
  {
    a = paramW;
  }
  
  public static boolean a(cwk paramcwk, int paramInt)
  {
    bdp localbdp = (bdp)ilh.a(aal.oJ, bdp.class);
    int i = localbdp.a("babel_max_unexpected_error_retries", 2);
    int j = localbdp.a("babel_max_upload_error_retries", 10);
    switch (paramInt)
    {
    case 115: 
    case 116: 
    case 117: 
    case 118: 
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
    default: 
      ezi.d("Babel_ServerOpNetReq", 49 + "Default no retry on BabelClientError: " + paramInt, new Object[0]);
      return false;
    case 100: 
    case 138: 
      return false;
    case 101: 
    case 102: 
    case 103: 
      return true;
    case 104: 
      return false;
    case 105: 
      return true;
    case 106: 
    case 107: 
    case 108: 
      return e < i;
    case 109: 
    case 110: 
    case 111: 
    case 112: 
    case 113: 
      return false;
    case 114: 
      return false;
    case 120: 
    case 121: 
      return false;
    case 122: 
      return d < j;
    }
    return false;
  }
  
  public abstract dom a(bfd parambfd, int paramInt);
  
  public abstract void a(int paramInt, dvn paramdvn);
  
  public final void a(Context paramContext, cwk paramcwk, cwm paramcwm)
  {
    a(dvd.e(c), e).f();
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    return a(paramcwk, paramdvn.c());
  }
  
  public final void b(int paramInt, dvn paramdvn)
  {
    bfd localbfd = dvd.e(paramInt);
    if (localbfd == null)
    {
      if (ezi.a("Babel_ServerOpNetReq", 3)) {
        ezi.a("Babel_ServerOpNetReq", 57 + "Skipping request failure for invalid account: " + paramInt, new Object[0]);
      }
      return;
    }
    a(paramInt, paramdvn);
    RealTimeChatService.a(localbfd, a, paramdvn);
  }
  
  public String e()
  {
    return null;
  }
  
  public W f()
  {
    return a;
  }
  
  public final String toString()
  {
    String str = String.valueOf(a.toString());
    if (str.length() != 0) {
      return "ServerOperationNetworkRequest ".concat(str);
    }
    return new String("ServerOperationNetworkRequest ");
  }
}

/* Location:
 * Qualified Name:     ecg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */