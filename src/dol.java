import android.os.SystemClock;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public class dol
  extends dom<kdw, kdx>
{
  private final int a;
  
  protected dol(bfd parambfd, int paramInt, dpo paramdpo, efh paramefh, String paramString)
  {
    super(ihw.newBuilder().a(parambfd.a()).b(parambfd.U()).a(new ihp()).a(true).a(), paramdpo, paramdpo.f(), paramefh, (kdw)paramdpo.a(paramString, paramInt, parambfd.g()), new kdx());
    a = parambfd.g();
  }
  
  public dol(bfd parambfd, int paramInt, dpo paramdpo, String paramString)
  {
    super(ihw.newBuilder().a(parambfd.a()).b(parambfd.U()).a(new ihp()).a(true).a(), paramdpo, paramdpo.f(), efh.a, (kdw)paramdpo.a(paramString, paramInt, parambfd.g()), new kdx());
    a = parambfd.g();
  }
  
  private void a(dpo paramdpo, long paramLong, int paramInt)
  {
    paramdpo = new csn().a(c).b(j).d(q.c());
    aen.a(a, paramLong, paramInt, paramdpo);
  }
  
  protected dqf a(kdx paramkdx)
  {
    return dsj.parseFrom(paramkdx);
  }
  
  protected void a()
  {
    super.a();
    a((dpo)e, SystemClock.elapsedRealtime(), 2);
  }
  
  public void a(int paramInt, Exception paramException)
  {
    paramException = e();
    if (paramException == null) {}
    do
    {
      return;
      dpo localdpo = (dpo)e;
      a(localdpo, SystemClock.elapsedRealtime(), 12);
      RealTimeChatService.a(a, paramException);
      paramException = localdpo.e();
    } while (paramException == null);
    paramException = String.valueOf(paramException);
    if (paramException.length() != 0)
    {
      "Sending stress message succeeded:".concat(paramException);
      return;
    }
    new String("Sending stress message succeeded:");
  }
}

/* Location:
 * Qualified Name:     dol
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */