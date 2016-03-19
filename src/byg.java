import android.content.Context;
import android.view.View;
import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

final class byg
  implements eph
{
  byg(byf parambyf) {}
  
  public void a() {}
  
  public void onClick(View paramView)
  {
    paramView = ((byh)a.c).r();
    RealTimeChatService.a(((byh)a.c).a().g(), b.a, b.b, e, false, true);
    paramView = a.b.getString(StressMode.iM, new Object[] { e });
    Toast.makeText(a.b, paramView, 0).show();
    ((byh)a.c).s();
    ((byh)a.c).a(((byh)a.c).q() - 1);
    aal.a(dvd.e(((hpu)ilh.a(a.b, hpu.class)).a()), 1816);
  }
}

/* Location:
 * Qualified Name:     byg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */