import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class dae
  implements bjq
{
  dae(dad paramdad) {}
  
  public void a() {}
  
  public void a(String paramString)
  {
    boolean bool = true;
    int i;
    cau localcau;
    if (a.c.b() > 1)
    {
      i = 2;
      localcau = a.b;
      if (a.i != bkw.d) {
        break label66;
      }
    }
    for (;;)
    {
      localcau.a(paramString, i, bool, a.c.a());
      return;
      i = 1;
      break;
      label66:
      bool = false;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    int j = 0;
    dad localdad;
    if ((paramBoolean) && (!a.b()) && (a.c.b() == 1)) {
      localdad = a;
    }
    Object localObject1;
    Object localObject2;
    switch (dag.b[ak.ordinal()])
    {
    default: 
      localObject1 = String.valueOf(ak);
      ezi.e("Babel", String.valueOf(localObject1).length() + 14 + "Audience mode " + (String)localObject1, new Object[0]);
      hbs.a("Unknown audience mode");
      return;
    case 1: 
    case 2: 
      localObject1 = new ArrayList(c.e());
      localObject2 = c.c().iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((List)localObject1).add(((axt)((Iterator)localObject2).next()).h());
      }
      cfc.a().b((List)localObject1);
      b.a();
      return;
    case 3: 
    case 4: 
    case 5: 
    case 6: 
      int i;
      if ((i == bkw.d) || (i == bkw.c))
      {
        i = 1;
        if ((ak == dhm.b) || (i != 0)) {
          j = 1;
        }
        if (j == 0) {
          break label308;
        }
      }
      for (localObject1 = bfw.a;; localObject1 = bfw.c)
      {
        f.a((bfw)localObject1, 1635);
        return;
        i = 0;
        break;
      }
    case 7: 
      label308:
      localObject1 = aj;
      localObject2 = dvd.e(a.a());
      RealTimeChatService.a(e);
      al = RealTimeChatService.a((bfd)localObject2, c.a(), (String)localObject1);
      return;
    }
    RealTimeChatService.a(dvd.e(a.a()), aj, c.a());
    b.a();
  }
}

/* Location:
 * Qualified Name:     dae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */