import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

public final class ehi
  extends eht
{
  private static final ConcurrentHashMap<Integer, ehi> h = new ConcurrentHashMap();
  boolean a;
  final eap b = new ehj(this);
  volatile boolean c;
  final ConcurrentHashMap<Integer, String> d = new ConcurrentHashMap();
  private final bfd f;
  private bfz g;
  
  private ehi(bfd parambfd)
  {
    f = parambfd;
    g = null;
    c = false;
  }
  
  public static ehi a(bfd parambfd)
  {
    int i = parambfd.g();
    ehi localehi2 = (ehi)h.get(Integer.valueOf(i));
    ehi localehi1 = localehi2;
    if (localehi2 == null)
    {
      if (ezi.a("Babel", 3)) {
        ezi.a("Babel", 37 + "Adding contact loader for " + i, new Object[0]);
      }
      parambfd = new ehi(parambfd);
      h.putIfAbsent(Integer.valueOf(i), parambfd);
      localehi1 = (ehi)h.get(Integer.valueOf(i));
    }
    return localehi1;
  }
  
  public static void a(int paramInt)
  {
    if (ezi.a("Babel", 3)) {
      ezi.a("Babel", 44 + "Removing conversation loader for " + paramInt, new Object[0]);
    }
    h.remove(Integer.valueOf(paramInt));
  }
  
  protected String a()
  {
    return "ConversationLoader";
  }
  
  protected void a(ArrayList<String> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      String str = (String)paramArrayList.next();
      if (g == null) {
        g = new bfz(aal.oJ, f.g());
      }
      bgd localbgd = g.f(str);
      int i;
      if (localbgd == null)
      {
        if (!c)
        {
          RealTimeChatService.a(b);
          c = true;
        }
        i = 0;
        if (!a)
        {
          i = RealTimeChatService.l(f, str);
          a = true;
        }
        if (i == 0) {
          a(new ehk(this, str));
        }
      }
      else
      {
        a(new ehl(this, str, localbgd));
        continue;
      }
      d.put(Integer.valueOf(i), str);
    }
  }
}

/* Location:
 * Qualified Name:     ehi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */