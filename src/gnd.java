import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.navigation.NavigationDrawerFragment;
import java.util.List;

public final class gnd
{
  public gnd(NavigationDrawerFragment paramNavigationDrawerFragment) {}
  
  public void a(gne paramgne, gpt paramgpt, List<gpt> paramList)
  {
    cvb localcvb = (cvb)paramgne;
    Object localObject = dvd.a(paramgpt.a(), paramgpt.Q_());
    if ((localObject != null) && (((bfd)localObject).n()))
    {
      a.setVisibility(0);
      b.setVisibility(0);
      localObject = new StringBuilder();
      ezc.a((StringBuilder)localObject, a.getString(StressMode.je, new Object[] { paramgpt.a() }));
      ezc.a((StringBuilder)localObject, a.getContext().getResources().getText(StressMode.jL));
      l.setContentDescription(((StringBuilder)localObject).toString());
    }
    for (;;)
    {
      if ((paramgpt.S_()) || (paramgpt == a.aq)) {
        r.setText(null);
      }
      if (paramList.size() > 0) {
        NavigationDrawerFragment.a(a, (gpt)paramList.get(0), s, d, f, c, e);
      }
      if (paramList.size() > 1) {
        NavigationDrawerFragment.a(a, (gpt)paramList.get(1), t, h, j, g, i);
      }
      return;
      a.setVisibility(8);
      b.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     gnd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */