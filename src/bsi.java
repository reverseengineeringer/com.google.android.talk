import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TabWidget;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;

public class bsi
  extends cav
  implements bmv
{
  private static final ksm<Integer, Integer> aj = new kso().a(Integer.valueOf(0), Integer.valueOf(R.drawable.aW)).a(Integer.valueOf(1), Integer.valueOf(R.drawable.aS)).a(Integer.valueOf(2), Integer.valueOf(R.drawable.aQ)).a(Integer.valueOf(3), Integer.valueOf(R.drawable.aO)).a(Integer.valueOf(4), Integer.valueOf(R.drawable.aU)).a(Integer.valueOf(5), Integer.valueOf(R.drawable.aY)).a();
  bpp a;
  
  protected ImageView a(Context paramContext, int paramInt)
  {
    paramContext = (ImageView)LayoutInflater.from(paramContext).inflate(aal.kv, null);
    paramInt = aal.a((Integer)aj.get(Integer.valueOf(paramInt)), 0);
    paramContext.setImageDrawable(getResources().getDrawable(paramInt));
    return paramContext;
  }
  
  public boolean a()
  {
    a.Q();
    return true;
  }
  
  public boolean b()
  {
    a.V();
    return false;
  }
  
  protected int c()
  {
    return 10000;
  }
  
  protected void c(int paramInt)
  {
    TabWidget localTabWidget = t();
    int i = 0;
    if (i < localTabWidget.getTabCount())
    {
      Object localObject = localTabWidget.getChildTabViewAt(i);
      int j;
      int k;
      int m;
      int n;
      if (localObject != null)
      {
        localObject = (ImageView)((View)localObject).findViewWithTag("icon");
        j = ((ImageView)localObject).getPaddingLeft();
        k = ((ImageView)localObject).getPaddingTop();
        m = ((ImageView)localObject).getPaddingRight();
        n = ((ImageView)localObject).getPaddingBottom();
        if (paramInt != i) {
          break label119;
        }
        ((ImageView)localObject).setColorFilter(getResources().getColor(aen.hG), PorterDuff.Mode.SRC_IN);
        ((ImageView)localObject).setBackgroundResource(aen.hK);
      }
      for (;;)
      {
        ((ImageView)localObject).setPadding(j, k, m, n);
        i += 1;
        break;
        label119:
        ((ImageView)localObject).setColorFilter(getResources().getColor(aen.hI), PorterDuff.Mode.SRC_IN);
        ((ImageView)localObject).setBackground(null);
      }
    }
  }
  
  protected int d()
  {
    return aal.kw;
  }
  
  protected Integer e()
  {
    return Integer.valueOf(getResources().getColor(aen.hI));
  }
  
  protected int f()
  {
    return getResources().getColor(aen.hH);
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((bpp)binder.a(bpp.class));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(new bsj(this));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = a(paramLayoutInflater, paramViewGroup);
    t().setStripEnabled(false);
    t().setDividerDrawable(aen.hJ);
    t().setLeftStripDrawable(aen.hJ);
    t().setRightStripDrawable(aen.hJ);
    ((TextView)paramLayoutInflater.findViewById(aal.kt)).setOnClickListener(g);
    ((ImageView)paramLayoutInflater.findViewById(aal.ku)).setColorFilter(getResources().getColor(aen.hI), PorterDuff.Mode.SRC_IN);
    return paramLayoutInflater;
  }
  
  protected boolean q()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     bsi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */