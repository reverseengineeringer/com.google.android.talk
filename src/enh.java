import java.util.Timer;

public final class enh
{
  public int a = 0;
  public boolean b = false;
  public Timer c = null;
  public eol d = null;
  public adc e = null;
  
  public static void a(boolean paramBoolean, adc paramadc)
  {
    bb = paramBoolean;
    be = paramadc;
    ene.b.notifyAll();
    if ((paramBoolean) && (bc == null))
    {
      paramadc = ene.b;
      if (c != null) {
        c.cancel();
      }
      c = new Timer("mms_apn_extension_timer", true);
    }
    try
    {
      c.schedule(new enf(), aal.a(aal.oJ, "babel_apn_extension_wait_in_millis", 30000L));
      return;
    }
    catch (Exception paramadc)
    {
      paramadc = String.valueOf(paramadc);
      ezi.e("Babel_SMS", String.valueOf(paramadc).length() + 60 + "MmsSendReceiveManager.SendingStatus.startApnExtensionTimer: " + paramadc, new Object[0]);
    }
  }
  
  public void a()
  {
    if (c != null) {
      c.cancel();
    }
    c = null;
  }
}

/* Location:
 * Qualified Name:     enh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */