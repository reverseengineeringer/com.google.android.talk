import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class sa
  extends Dialog
  implements rg
{
  private rh a;
  
  public sa(Context paramContext, int paramInt)
  {
    super(paramContext, i);
    b().c();
  }
  
  public void a(wb paramwb) {}
  
  public boolean a()
  {
    return b().b(1);
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    b().b(paramView, paramLayoutParams);
  }
  
  public rh b()
  {
    if (a == null) {
      a = rh.a(getContext(), getWindow(), this);
    }
    return a;
  }
  
  public void b(wb paramwb) {}
  
  public void invalidateOptionsMenu()
  {
    b().g();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    b().j();
    super.onCreate(paramBundle);
    b().c();
  }
  
  protected void onStop()
  {
    super.onStop();
    b().e();
  }
  
  public void setContentView(int paramInt)
  {
    b().a(paramInt);
  }
  
  public void setContentView(View paramView)
  {
    b().a(paramView);
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    b().a(paramView, paramLayoutParams);
  }
  
  public void setTitle(int paramInt)
  {
    super.setTitle(paramInt);
    b().a(getContext().getString(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    b().a(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     sa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */