import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.support.v7.widget.Toolbar;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;

public abstract class rh
{
  static rh a(Context paramContext, Window paramWindow, rg paramrg)
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23) {
      return new ro(paramContext, paramWindow, paramrg);
    }
    if (i >= 14) {
      return new rm(paramContext, paramWindow, paramrg);
    }
    if (i >= 11) {
      return new rl(paramContext, paramWindow, paramrg);
    }
    return new ri(paramContext, paramWindow, paramrg, (byte)0);
  }
  
  public abstract qe a();
  
  public abstract void a(int paramInt);
  
  public abstract void a(Configuration paramConfiguration);
  
  public abstract void a(Toolbar paramToolbar);
  
  public abstract void a(View paramView);
  
  public abstract void a(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  public abstract void a(CharSequence paramCharSequence);
  
  public abstract MenuInflater b();
  
  public abstract void b(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  public abstract boolean b(int paramInt);
  
  public abstract void c();
  
  public abstract void d();
  
  public abstract void e();
  
  public abstract void f();
  
  public abstract void g();
  
  public abstract void h();
  
  public abstract qi i();
  
  public abstract void j();
}

/* Location:
 * Qualified Name:     rh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */