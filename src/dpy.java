import android.util.Pair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class dpy
  extends dpf
{
  private static final long serialVersionUID = 1L;
  public final long a;
  public final List<dpg> b;
  public final boolean c;
  private final List<byte[]> d;
  private boolean j;
  private boolean k;
  private final String l;
  
  public dpy(long paramLong, List<dpg> paramList, List<Pair<String, Long>> paramList1, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    a = paramLong;
    b = paramList;
    paramList = new ArrayList();
    paramList1 = paramList1.iterator();
    while (paramList1.hasNext())
    {
      Pair localPair = (Pair)paramList1.next();
      kfs localkfs = new kfs();
      a = don.a((String)first);
      b = ((Long)second);
      paramList.add(kfs.a(localkfs));
    }
    d = paramList;
    j = paramBoolean1;
    c = paramBoolean2;
    l = paramString;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    int m = 0;
    kfj localkfj = new kfj();
    Object localObject2;
    if (exo.b)
    {
      localObject2 = new exr().a("sane_build_proto");
      localObject1 = String.valueOf(paramString);
      if (((String)localObject1).length() == 0) {
        break label171;
      }
    }
    int i;
    label171:
    for (Object localObject1 = "id=".concat((String)localObject1);; localObject1 = new String("id="))
    {
      ((exr)localObject2).b((String)localObject1).b(17 + "retry=" + paramInt1).b();
      if (b == null) {
        break;
      }
      b = new kbr[b.size()];
      localObject1 = b.iterator();
      i = 0;
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (dpg)((Iterator)localObject1).next();
        b[i] = ((dpg)localObject2).a();
        i += 1;
      }
    }
    ezi.e("Babel_RequestWriter", "SyncAllNewEventsRequest.buildProtobuf: null localState", new Object[0]);
    if (d != null)
    {
      c = new kfs[d.size()];
      i = m;
    }
    for (;;)
    {
      if (i < d.size()) {
        localObject1 = (byte[])d.get(i);
      }
      try
      {
        c[i] = ((kfs)lyi.b(new kfs(), (byte[])localObject1, localObject1.length));
        i += 1;
        continue;
        ezi.e("Babel_RequestWriter", "SyncAllNewEventsRequest.buildProtobuf: null rawUnreadConversationStates", new Object[0]);
        d = Integer.valueOf(aal.a(aal.oJ, "babel_smaxbytesperws", 100000));
        requestHeader = don.a(paramString, paramInt1, paramInt2, h);
        a = Long.valueOf(a);
        e = Boolean.valueOf(j);
        return localkfj;
      }
      catch (lyg locallyg)
      {
        for (;;) {}
      }
    }
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    String str = parambfd.a();
    boolean bool1;
    if (paramdvn.c() == 120)
    {
      bool1 = true;
      if (doo.e)
      {
        paramdvn = String.valueOf(str);
        if (paramdvn.length() == 0) {
          break label149;
        }
        "SyncAllNewEvents.onFailed ".concat(paramdvn);
      }
    }
    for (;;)
    {
      if (exo.b)
      {
        paramdvn = new exr().a("sane_expired").d(str);
        boolean bool2 = k;
        paramdvn.b(16 + "isReplaced=" + bool2).b(13 + "expired=" + bool1).b();
      }
      ebo.b(parambfd.g()).d(l);
      return;
      bool1 = false;
      break;
      label149:
      new String("SyncAllNewEvents.onFailed ");
    }
  }
  
  public boolean a(cwi paramcwi)
  {
    hbs.a(getClass(), paramcwi.getClass());
    paramcwi = (dpy)paramcwi;
    if (!j) {
      j = false;
    }
    k = true;
    return true;
  }
  
  public long b()
  {
    if (j) {
      return aal.a(aal.oJ, "babel_sane_refresh_timeout", 90000L);
    }
    return aal.a(aal.oJ, "babel_sane_timeout", eea.e);
  }
  
  public String f()
  {
    return "conversations/syncallnewevents";
  }
  
  public boolean o()
  {
    return j;
  }
  
  public String p()
  {
    return l;
  }
}

/* Location:
 * Qualified Name:     dpy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */