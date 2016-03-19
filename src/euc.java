import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

final class euc
  extends eap
{
  euc(eua parameua) {}
  
  public void a(int paramInt, String paramString)
  {
    if (paramInt == a.j)
    {
      str = String.valueOf(aal.s(paramString));
      if (str.length() == 0) {
        break label96;
      }
    }
    label96:
    for (String str = "TeleWifiCall.onHandoffNumberReceived, handoffNumber: ".concat(str);; str = new String("TeleWifiCall.onHandoffNumberReceived, handoffNumber: "))
    {
      ezi.c("Babel_telephony", str, new Object[0]);
      a.j = 0;
      if (a.c != null) {
        a.c.a(paramString);
      }
      RealTimeChatService.b(this);
      if (a.i == this) {
        a.i = null;
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     euc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */