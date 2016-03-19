import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Collection;

public final class dng
  extends dom<iyp, iyq>
{
  private boolean a = true;
  private final int b;
  
  public dng(bfd parambfd, dyj paramdyj)
  {
    super(ihw.newBuilder().a(parambfd.a()).b(parambfd.U()).a(true).a(), paramdyj, "lookupmergedperson", efh.d, new iyp(), new iyq());
    b = parambfd.g();
  }
  
  public static dng a(int paramInt)
  {
    
    int i;
    Collection localCollection;
    Object localObject = new dng(dvd.e(paramInt), new dyj(i, 0, (Integer)localObject, localCollection));
    a = false;
    ((dng)localObject).g();
    return (dng)localObject;
  }
  
  public void a(int paramInt, Exception paramException)
  {
    paramException = e();
    if (paramException == null) {}
    while (!a) {
      return;
    }
    RealTimeChatService.a(b, paramException);
  }
}

/* Location:
 * Qualified Name:     dng
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */