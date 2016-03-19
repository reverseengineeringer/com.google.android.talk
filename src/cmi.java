import android.app.Activity;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.widget.AdapterView.OnItemClickListener;

public final class cmi
  extends hpj<hpl>
{
  clp aj;
  final Handler ak = new Handler(Looper.getMainLooper());
  hpl al;
  
  void a(hpn paramhpn1, hpn paramhpn2, clq paramclq)
  {
    Object localObject = getActivity().getResources();
    ColorStateList localColorStateList = ((Resources)localObject).getColorStateList(aal.lN);
    Drawable localDrawable1 = ((Resources)localObject).getDrawable(aal.lO);
    Drawable localDrawable2 = ((Resources)localObject).getDrawable(aal.lS);
    Drawable localDrawable3 = ((Resources)localObject).getDrawable(aal.lV);
    Drawable localDrawable4 = ((Resources)localObject).getDrawable(aal.lR);
    localObject = ((Resources)localObject).getDrawable(aal.lU);
    if (paramclq == clq.c)
    {
      paramhpn1.a(localColorStateList).a(localDrawable4).b(localDrawable1);
      paramhpn2.a(null).a(localDrawable3).b(null);
    }
    while (paramclq != clq.d) {
      return;
    }
    paramhpn2.a(localColorStateList).a((Drawable)localObject).b(localDrawable1);
    paramhpn1.a(null).a(localDrawable2).b(null);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    aj = ((clp)ilh.a(paramActivity, clp.class));
  }
  
  protected int q()
  {
    return 0;
  }
  
  protected String r()
  {
    return getActivity().getResources().getString(aen.ij);
  }
  
  protected AdapterView.OnItemClickListener s()
  {
    return new cmj(this);
  }
}

/* Location:
 * Qualified Name:     cmi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */