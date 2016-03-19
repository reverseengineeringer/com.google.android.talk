import android.content.Context;
import java.util.Iterator;
import java.util.List;

public final class ezy
{
  private static final boolean a = false;
  private final Context b;
  private List<bdy> c;
  
  static
  {
    imx localimx = ezi.t;
  }
  
  public ezy(Context paramContext, List<bdy> paramList)
  {
    b = paramContext;
    c = paramList;
  }
  
  private boolean d()
  {
    int i = ((hpu)ilh.a(b, hpu.class)).a();
    bfd localbfd = dvd.e(i);
    eot localeot = (eot)ilh.a(b, eot.class);
    boolean bool1 = localbfd.T();
    boolean bool2 = cfc.a().c();
    boolean bool3 = localeot.a(i);
    if (a) {
      new StringBuilder(108).append("[isHangoutsCallingEnabled] isCallingEnabled: ").append(bool1).append(" isHangoutsSupported: ").append(bool2).append(" isCarrierSmsOnlyAccount: ").append(bool3);
    }
    return (bool1) && (bool2) && (!bool3);
  }
  
  public boolean a()
  {
    if (c.isEmpty()) {}
    while ((c.size() > 1) || (!((bdy)c.get(0)).q())) {
      return false;
    }
    bfd localbfd = dvd.e(((hpu)ilh.a(b, hpu.class)).a());
    boolean bool1;
    if ((localbfd.T()) && (((dty)ilh.a(b, dty.class)).a(b, localbfd)))
    {
      bool1 = true;
      label101:
      if ((!localbfd.T()) || (!ezm.b())) {
        break label165;
      }
    }
    label165:
    for (boolean bool2 = true;; bool2 = false)
    {
      if (a) {
        new StringBuilder(70).append("[canPhoneCall] canCallOverHangoutsDialer: ").append(bool1).append(" canCallOverPstn: ").append(bool2);
      }
      if ((!bool1) && (!bool2)) {
        break;
      }
      return true;
      bool1 = false;
      break label101;
    }
  }
  
  public boolean b()
  {
    if (c.isEmpty()) {
      return false;
    }
    return d();
  }
  
  public boolean c()
  {
    if (c.isEmpty()) {
      return false;
    }
    Iterator localIterator = c.iterator();
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
    } while (((bdy)localIterator.next()).n());
    for (boolean bool1 = false;; bool1 = true)
    {
      boolean bool2 = d();
      if (a) {
        new StringBuilder(90).append("[canContactViaHangouts] isHangoutsCallingEnabled: ").append(bool2).append(" allContactsAreHangoutsUsers: ").append(bool1);
      }
      if ((!bool2) || (!bool1)) {
        break;
      }
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     ezy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */