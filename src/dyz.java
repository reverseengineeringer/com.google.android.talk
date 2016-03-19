import android.content.Context;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class dyz
{
  private final bfd a;
  private final String b;
  private final Set<dtt> c;
  
  public dyz(bfd parambfd)
  {
    a = parambfd;
    b = ezc.b();
    c = new HashSet();
  }
  
  public void a()
  {
    if (c.size() > 0)
    {
      bep localbep = new bep(new ArrayList(c), b);
      ehd.a(a).c(localbep);
      c.clear();
    }
  }
  
  public boolean a(Context paramContext, bfz parambfz, String paramString, List<czb> paramList)
  {
    boolean bool = false;
    parambfz.a();
    try
    {
      long l1 = SystemClock.elapsedRealtime();
      long l3 = ((bdp)ilh.a(paramContext, bdp.class)).a("babel_yieldtime", 2000L);
      paramContext = paramList.iterator();
      while (paramContext.hasNext())
      {
        paramList = (czb)paramContext.next();
        long l2 = l1;
        if (SystemClock.elapsedRealtime() - l1 >= l3)
        {
          parambfz.d();
          l2 = SystemClock.elapsedRealtime();
        }
        l1 = l2;
        if (parambfz.a(paramList, b, paramString))
        {
          paramList = aal.a(paramList);
          if (paramList.a())
          {
            c.add(paramList);
            bool = true;
            l1 = l2;
          }
          else
          {
            ezi.e("Babel_RTCOpState", "RealTimeChatOperationState: invalid spec", new Object[0]);
            l1 = l2;
          }
        }
      }
    }
    finally
    {
      parambfz.c();
    }
    parambfz.c();
    return bool;
  }
}

/* Location:
 * Qualified Name:     dyz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */