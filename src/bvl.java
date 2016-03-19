import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class bvl
  extends dom<kcg, kch>
{
  private final int a;
  private final int b;
  
  public bvl(bfd parambfd, int paramInt, bvm parambvm)
  {
    super(ihw.newBuilder().a(parambfd.a()).b(parambfd.U()).a(true).a(), parambvm, "conversations/modifyotrstatus", efh.a, new kcg(), new kch());
    a = parambfd.g();
    b = paramInt;
  }
  
  public void a(int paramInt, Exception paramException)
  {
    paramException = e();
    if (paramException != null) {
      RealTimeChatService.a(a, paramException);
    }
  }
}

/* Location:
 * Qualified Name:     bvl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */