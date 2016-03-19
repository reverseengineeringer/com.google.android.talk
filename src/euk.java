import java.util.Locale;

final class euk
  implements Runnable
{
  euk(euj parameuj) {}
  
  public void run()
  {
    euh localeuh = a.a;
    hbs.a();
    eum localeum = euh.a(b);
    if (!localeum.equals(d))
    {
      ezi.c("Babel_telephony", String.format(Locale.US, "TeleWifiMonitor.updateSignalState, (%s) -> (%s)", new Object[] { d, localeum }), new Object[0]);
      d = localeum;
      if (c != null) {
        c.a(d);
      }
    }
  }
}

/* Location:
 * Qualified Name:     euk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */