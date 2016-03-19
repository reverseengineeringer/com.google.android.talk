import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import java.util.concurrent.CopyOnWriteArrayList;

final class cbn
  extends cbf
  implements cbm
{
  private View b;
  
  public cbn(cbg paramcbg, Resources paramResources)
  {
    super(paramResources, c);
    a.a(this);
  }
  
  public void a(View paramView)
  {
    b = paramView;
  }
  
  public int getCount()
  {
    return Math.min(a.a.a().size(), a.d);
  }
  
  public long getItemId(int paramInt)
  {
    return aal.a((Integer)a.a.a().get(paramInt), 0);
  }
  
  public void q_()
  {
    if ((b != null) && (a.a.a().size() > 0))
    {
      b.findViewById(aen.bT).setVisibility(0);
      ViewGroup localViewGroup = (ViewGroup)b.findViewById(aen.fD);
      localViewGroup.setVisibility(8);
      localViewGroup.removeViewAt(0);
      b = null;
      notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     cbn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */