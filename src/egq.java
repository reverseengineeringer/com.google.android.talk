import android.content.Intent;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.List;

public final class egq
  implements egs
{
  private static final long serialVersionUID = 1L;
  private final List<eyu<Integer, Boolean>> a;
  
  public egq(kdr paramkdr)
  {
    a = new ArrayList(a.length);
    paramkdr = a;
    int j = paramkdr.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramkdr[i];
      a.add(new eyu(a, b));
      i += 1;
    }
  }
  
  public List<eyu<Integer, Boolean>> a()
  {
    return a;
  }
  
  public void a(int paramInt, knq<Intent> paramknq)
  {
    paramknq = dvd.e(paramInt);
    hqc localhqc = ((hpz)ilh.a(aal.oJ, hpz.class)).b(paramInt);
    RealTimeChatService.a(localhqc, a);
    localhqc.d();
    RealTimeChatService.f(paramknq);
  }
}

/* Location:
 * Qualified Name:     egq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */