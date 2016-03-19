import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.navigation.NavigationDrawerFragment;

public final class gmp
{
  public gmp(NavigationDrawerFragment paramNavigationDrawerFragment) {}
  
  public void a(gmq paramgmq, gpt paramgpt)
  {
    if (!a.isAdded()) {
      return;
    }
    Object localObject = a.context.getResources();
    paramgmq = (cuy)paramgmq;
    bfd localbfd = dvd.a(paramgpt.a(), paramgpt.Q_());
    boolean bool1;
    label72:
    boolean bool2;
    if ((localbfd != null) && (localbfd.n()))
    {
      bool1 = true;
      if (!bool1) {
        break label221;
      }
      b.setVisibility(0);
      if (paramgpt.S_())
      {
        b.setVisibility(8);
        d.setText(paramgpt.V_());
        e.setImageDrawable(new BitmapDrawable((Resources)localObject, bfq.b()));
      }
      bool2 = dvd.d(localbfd);
      if (!bool2) {
        break label233;
      }
      c.setVisibility(0);
      d.setTextAppearance(a.context, aal.hN);
      localObject = ((Resources)localObject).getString(StressMode.gu, new Object[] { d.getText() });
      d.setText((CharSequence)localObject);
    }
    for (;;)
    {
      a.setContentDescription(a.a(paramgpt.a(), bool2, bool1));
      return;
      bool1 = false;
      break;
      label221:
      b.setVisibility(8);
      break label72;
      label233:
      c.setVisibility(4);
      d.setTextAppearance(a.context, aal.hO);
    }
  }
}

/* Location:
 * Qualified Name:     gmp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */