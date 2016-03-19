import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.people.accountswitcherview.ExpanderView;
import com.google.android.gms.people.accountswitcherview.SelectedAccountNavigationView;

public final class gnb
  implements gnf
{
  public gnb(SelectedAccountNavigationView paramSelectedAccountNavigationView) {}
  
  public gne a(View paramView)
  {
    gne localgne = new gne();
    l = paramView;
    m = paramView.findViewById(aal.sR);
    p = paramView.findViewById(aal.sS);
    v = ((ImageView)p);
    q = ((TextView)paramView.findViewById(aal.sN));
    r = ((TextView)paramView.findViewById(aal.sM));
    u = ((ImageView)paramView.findViewById(aal.sX));
    n = ((ExpanderView)paramView.findViewById(aal.sO));
    o = paramView.findViewById(aal.sP);
    k = paramView.findViewById(aal.tf);
    I = a.findViewById(aal.sQ);
    if (a.g)
    {
      s = paramView.findViewById(aal.sT);
      w = ((ImageView)paramView.findViewById(aal.sU));
      t = paramView.findViewById(aal.sV);
      x = ((ImageView)paramView.findViewById(aal.sW));
      if ((w == null) && ((s instanceof ImageView))) {
        w = ((ImageView)s);
      }
      if ((x == null) && ((t instanceof ImageView))) {
        x = ((ImageView)t);
      }
      B = paramView.findViewById(aal.tc);
      F = ((ImageView)B);
      C = ((ImageView)paramView.findViewById(aal.td));
      y = paramView.findViewById(aal.te);
      z = ((TextView)paramView.findViewById(aal.tb));
      A = ((TextView)paramView.findViewById(aal.ta));
      D = paramView.findViewById(aal.sY);
      G = ((ImageView)D);
      E = paramView.findViewById(aal.sZ);
      H = ((ImageView)E);
    }
    return localgne;
  }
}

/* Location:
 * Qualified Name:     gnb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */