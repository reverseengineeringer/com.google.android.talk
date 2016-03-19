import android.view.View;
import android.view.View.OnClickListener;

final class ckw
  implements View.OnClickListener
{
  ckw(ckr paramckr, cgn paramcgn, cgp paramcgp) {}
  
  public void onClick(View paramView)
  {
    boolean bool2 = true;
    int j = 0;
    aal.c(1579);
    paramView = c.b.k();
    Object localObject;
    boolean bool1;
    if (paramView == null)
    {
      a.m();
      localObject = c;
      cgp localcgp = b;
      boolean bool3 = b.i();
      if (localcgp.a() == bool3)
      {
        if (bool3) {
          break label152;
        }
        bool1 = bool2;
        label74:
        localcgp.a(bool1);
        if (!bool3) {
          break label158;
        }
        i = 182;
        label90:
        aal.c(i);
      }
      localObject = a;
      if ((paramView == null) || (!paramView.g())) {
        break label165;
      }
    }
    label152:
    label158:
    label165:
    for (int i = j;; i = 8)
    {
      ((cgn)localObject).b(i);
      a.j();
      return;
      if (!paramView.g()) {}
      for (bool1 = true;; bool1 = false)
      {
        paramView.a(bool1);
        break;
      }
      bool1 = false;
      break label74;
      i = 184;
      break label90;
    }
  }
}

/* Location:
 * Qualified Name:     ckw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */