import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

final class ehj
  extends eap
{
  ehj(ehi paramehi) {}
  
  public void a(int paramInt, bfd parambfd, eau parameau)
  {
    parambfd = (String)a.d.remove(Integer.valueOf(paramInt));
    if (parambfd != null) {
      a.d(parambfd);
    }
    parambfd = a;
    if ((c) && (d.isEmpty()))
    {
      RealTimeChatService.b(b);
      c = false;
    }
  }
  
  public void a(int paramInt, bfd parambfd, eff parameff, dvn paramdvn)
  {
    parameff = (String)a.d.remove(Integer.valueOf(paramInt));
    if (parameff != null)
    {
      parambfd = a;
      parameff = parambfd.b(parameff);
      if ((parameff != null) && (parameff.size() != 0)) {
        break label81;
      }
    }
    for (;;)
    {
      parambfd = a;
      if ((c) && (d.isEmpty()))
      {
        RealTimeChatService.b(b);
        c = false;
      }
      return;
      label81:
      a = false;
      parambfd = parameff.iterator();
      while (parambfd.hasNext())
      {
        parameff = (bez)parambfd.next();
        b.a(parameff);
      }
    }
  }
}

/* Location:
 * Qualified Name:     ehj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */