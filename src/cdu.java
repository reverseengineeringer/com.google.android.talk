import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.google.android.apps.hangouts.R.drawable;

public class cdu
  extends ilv
{
  private int j = R.drawable.bD;
  public Toolbar m;
  
  public cdu()
  {
    A.a(ino.class, B);
  }
  
  private void j()
  {
    m = ((Toolbar)findViewById(aen.di));
    hbs.b("Toolbar needs to be in the layout with id hangouts_toolbar", m);
    m.e(R.drawable.aL);
    a(m);
    g().b(j);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    super.setContentView(paramInt1);
    j = paramInt2;
    j();
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addContentView(paramView, paramLayoutParams);
    j();
  }
  
  public Toolbar l()
  {
    return m;
  }
  
  public void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    j();
  }
  
  public void setContentView(View paramView)
  {
    super.setContentView(paramView);
    j();
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    j();
  }
}

/* Location:
 * Qualified Name:     cdu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */