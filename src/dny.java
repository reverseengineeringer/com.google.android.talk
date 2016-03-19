import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class dny
  extends dom<kdb, kdc>
{
  private final int a;
  private final int b;
  
  public dny(bfd parambfd, int paramInt, dyv paramdyv)
  {
    super(ihw.newBuilder().a(parambfd.a()).b(parambfd.U()).a(true).a(), paramdyv, "presence/querypresence", efh.a, new kdb(), new kdc());
    a = paramInt;
    b = parambfd.g();
  }
  
  public void a(int paramInt, Exception paramException)
  {
    paramException = e();
    if (paramException != null) {
      RealTimeChatService.a(b, paramException);
    }
  }
}

/* Location:
 * Qualified Name:     dny
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */