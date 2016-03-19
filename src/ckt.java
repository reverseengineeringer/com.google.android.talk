import android.view.View;
import android.view.View.OnClickListener;

final class ckt
  implements View.OnClickListener
{
  ckt(ckr paramckr, cgp paramcgp) {}
  
  public void onClick(View paramView)
  {
    boolean bool2 = true;
    aal.c(275);
    paramView = b.b;
    boolean bool1;
    if (!b.b.h())
    {
      bool1 = true;
      paramView.a(bool1);
      paramView = b;
      cgp localcgp = a;
      boolean bool3 = b.h();
      if (localcgp.a() == bool3)
      {
        if (bool3) {
          break label100;
        }
        bool1 = bool2;
        label75:
        localcgp.a(bool1);
        if (!bool3) {
          break label105;
        }
      }
    }
    label100:
    label105:
    for (int i = 181;; i = 183)
    {
      aal.c(i);
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label75;
    }
  }
}

/* Location:
 * Qualified Name:     ckt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */