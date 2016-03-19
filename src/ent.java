import android.telephony.SmsManager;

public final class ent
{
  public static final String a = enb.class.getName();
  public static final String b = eni.class.getName();
  private static ens c;
  
  public static void a(ilh paramilh)
  {
    if (c == null) {
      c = new ens();
    }
    paramilh.a(enb.class, new enb(SmsManager.getDefault()));
  }
  
  public static void b(ilh paramilh)
  {
    if (c == null) {
      c = new ens();
    }
    paramilh.a(eni.class, new eni(SmsManager.getDefault()));
  }
}

/* Location:
 * Qualified Name:     ent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */