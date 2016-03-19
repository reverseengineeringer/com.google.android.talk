import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class daj
  implements View.OnClickListener
{
  daj(dad paramdad) {}
  
  public void onClick(View paramView)
  {
    int j = 0;
    if (!a.a()) {
      return;
    }
    dad localdad = a;
    Object localObject;
    switch (dag.b[ak.ordinal()])
    {
    default: 
      paramView = String.valueOf(ak);
      ezi.e("Babel", String.valueOf(paramView).length() + 14 + "Audience mode " + paramView, new Object[0]);
      hbs.a("Unknown audience mode");
      return;
    case 1: 
    case 2: 
      paramView = new ArrayList(c.e());
      localObject = c.c().iterator();
      while (((Iterator)localObject).hasNext()) {
        paramView.add(((axt)((Iterator)localObject).next()).h());
      }
      cfc.a().b(paramView);
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
          break label280;
        }
      }
      for (paramView = bfw.a;; paramView = bfw.c)
      {
        f.a(paramView, 1635);
        return;
        i = 0;
        break;
      }
    case 7: 
      label280:
      paramView = aj;
      localObject = dvd.e(a.a());
      RealTimeChatService.a(e);
      al = RealTimeChatService.a((bfd)localObject, c.a(), paramView);
      return;
    }
    RealTimeChatService.a(dvd.e(a.a()), aj, c.a());
    b.a();
  }
}

/* Location:
 * Qualified Name:     daj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */