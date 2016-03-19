import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Iterator;
import java.util.List;

public final class duy
  extends dyx
{
  private final List<duz> a;
  private final boolean e;
  private final boolean f;
  private int g;
  
  public duy(bfd parambfd, List<duz> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(parambfd);
    a = paramList;
    e = paramBoolean1;
    f = paramBoolean2;
  }
  
  public void a(int paramInt)
  {
    g = paramInt;
  }
  
  public void p_()
  {
    int i = 1;
    bfz localbfz = new bfz(aal.oJ, b.a);
    Object localObject1 = a.iterator();
    Object localObject3;
    Object localObject4;
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (duz)((Iterator)localObject1).next();
      localObject4 = localbfz.f(a);
      if (localObject4 != null) {}
      for (long l = Math.min(u, b);; l = b)
      {
        if ((bfz.a(a)) || (f)) {
          break label136;
        }
        a(new doq(a, l, e));
        break;
      }
      label136:
      if (g >= 0)
      {
        localObject3 = new dqj();
        localObject3 = new eau(g, 1, (dqf)localObject3);
        RealTimeChatService.a(g, b.b, (eau)localObject3);
      }
    }
    if (e) {
      i = 2;
    }
    localbfz.a();
    for (;;)
    {
      try
      {
        localObject3 = a.iterator();
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        localObject4 = (duz)((Iterator)localObject3).next();
        if (ezi.a("Babel", 3))
        {
          localObject1 = String.valueOf(a);
          if (((String)localObject1).length() != 0)
          {
            localObject1 = "updateConversationViewLocally conversationId: ".concat((String)localObject1);
            ezi.a("Babel", (String)localObject1, new Object[0]);
          }
        }
        else
        {
          new dva(new egx(a, i)).a(localbfz);
          continue;
        }
        String str = new String("updateConversationViewLocally conversationId: ");
      }
      finally
      {
        localbfz.c();
      }
    }
    localbfz.b();
    localbfz.c();
    bft.d(localbfz);
  }
}

/* Location:
 * Qualified Name:     duy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */