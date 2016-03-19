import android.telecom.PhoneAccountHandle;

final class esa
  implements erb
{
  esa(ery paramery, PhoneAccountHandle paramPhoneAccountHandle) {}
  
  public void a(erc paramerc)
  {
    if (paramerc.a())
    {
      paramerc = String.valueOf(paramerc);
      ezi.c("Babel_telephony", String.valueOf(paramerc).length() + 61 + "TeleHandoffWifiToCellular.startHandoff, no cellular service, " + paramerc, new Object[0]);
      b.b.a(false, 210);
      return;
    }
    if (etj.a(b.a) == 2)
    {
      b.a(a);
      return;
    }
    paramerc = b;
    PhoneAccountHandle localPhoneAccountHandle = a;
    ezi.c("Babel_telephony", "TeleHandoffWifiToCellular.prepareForHandoffUsingUpdateHandoffNumber", new Object[0]);
    erg localerg = b.a();
    bfd localbfd = dvd.e(localerg.o());
    ((bcm)ilh.a(a, bcm.class)).a(new ett(localbfd, localerg.p(), localerg.r(), aal.o(a)));
    paramerc.a(localPhoneAccountHandle);
  }
}

/* Location:
 * Qualified Name:     esa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */