import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Iterator;
import java.util.List;

public final class dms
  extends dom<kap, kaq>
{
  static final int[] a = { 7 };
  static final int[] b = { 1, 2, 3, 4, 6, 8, 11, 12, 13, 15, 18, 20, 17 };
  private final int v;
  private final bfd w;
  
  public dms(bfd parambfd, int paramInt, dxi paramdxi)
  {
    this(ihw.newBuilder().a(parambfd.a()).b(parambfd.U()).a(new ihp()).a(true).a(), paramInt, parambfd, paramdxi);
  }
  
  private dms(ihw paramihw, int paramInt, bfd parambfd, dxi paramdxi)
  {
    super(paramihw, paramdxi, "contacts/getselfinfo", efh.a, new kap(), new kaq());
    v = paramInt;
    w = parambfd;
    if (!"SMS".equals(paramihw.b())) {}
    for (boolean bool = true;; bool = false)
    {
      aen.a(bool);
      return;
    }
  }
  
  public dms(ihw paramihw, dxi paramdxi)
  {
    this(paramihw, 0, null, paramdxi);
  }
  
  public void a(int paramInt, Exception paramException)
  {
    if ((m()) || (paramException != null)) {
      ezi.c("Babel_GetSelfInfo", 47 + "Failed to get self info. ErrorCode: " + paramInt, paramException);
    }
    while ((e() == null) || (w == null)) {
      return;
    }
    paramInt = w.g();
    paramException = (hpz)ilh.a(g, hpz.class);
    hqc localhqc = paramException.b(paramInt);
    a(localhqc);
    localhqc.d();
    long l = ((ekq)ilh.a(g, ekq.class)).e(paramInt);
    RealTimeChatService.a(w, l);
    RealTimeChatService.f(w);
    dvd.a(paramException, paramInt);
  }
  
  public void a(hqe paramhqe)
  {
    drl localdrl = (drl)e();
    cyx localcyx = localdrl.k();
    if (ezi.a("Babel_GetSelfInfo", 3))
    {
      localObject = String.valueOf(b);
      ezi.a("Babel_GetSelfInfo", String.valueOf(localObject).length() + 47 + "processResponse for GetSelfInfo, participantId=" + (String)localObject, new Object[0]);
    }
    Iterator localIterator = localdrl.s().iterator();
    while (localIterator.hasNext())
    {
      localObject = (dml)localIterator.next();
      dml localdml = dvp.a(((dml)localObject).b());
      if (localdml != null)
      {
        localdml.a(paramhqe, (dml)localObject);
        localdml.a(((dml)localObject).c());
      }
      else
      {
        localObject = String.valueOf(((dml)localObject).b());
        if (((String)localObject).length() != 0) {}
        for (localObject = "Unknown experiment ".concat((String)localObject);; localObject = new String("Unknown experiment "))
        {
          ezi.a("Babel_GetSelfInfo", (String)localObject, new Object[0]);
          break;
        }
      }
    }
    bff.a(paramhqe, b, e, m, x, h, localdrl.l(), localdrl.n(), localdrl.r(), p);
    Object localObject = ilh.c(g, dxj.class).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((dxj)((Iterator)localObject).next()).a(paramhqe, localdrl);
    }
    if (localdrl.o()) {
      paramhqe.c("dnd_expiration", localdrl.p());
    }
    for (;;)
    {
      if (localdrl.q() != null) {
        RealTimeChatService.a(paramhqe, localdrl.q());
      }
      paramhqe.c("setting_time", System.currentTimeMillis());
      return;
      paramhqe.c("dnd_expiration", 0L);
    }
  }
}

/* Location:
 * Qualified Name:     dms
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */