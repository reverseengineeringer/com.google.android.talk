import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.view.View;
import android.view.WindowInsets;

class la
  extends kz
{
  public float B(View paramView)
  {
    return paramView.getElevation();
  }
  
  public float C(View paramView)
  {
    return paramView.getTranslationZ();
  }
  
  public void D(View paramView)
  {
    paramView.stopNestedScroll();
  }
  
  public float E(View paramView)
  {
    return paramView.getZ();
  }
  
  public mq a(View paramView, mq parammq)
  {
    Object localObject = parammq;
    if ((parammq instanceof mr))
    {
      WindowInsets localWindowInsets = ((mr)parammq).e();
      paramView = paramView.onApplyWindowInsets(localWindowInsets);
      localObject = parammq;
      if (paramView != localWindowInsets) {
        localObject = new mr(paramView);
      }
    }
    return (mq)localObject;
  }
  
  public void a(View paramView, ColorStateList paramColorStateList)
  {
    paramView.setBackgroundTintList(paramColorStateList);
  }
  
  public void a(View paramView, PorterDuff.Mode paramMode)
  {
    paramView.setBackgroundTintMode(paramMode);
  }
  
  public void a(View paramView, kg paramkg)
  {
    paramView.setOnApplyWindowInsetsListener(new ld(paramkg));
  }
  
  public void f(View paramView, float paramFloat)
  {
    paramView.setElevation(paramFloat);
  }
  
  public void r(View paramView)
  {
    paramView.requestApplyInsets();
  }
}

/* Location:
 * Qualified Name:     la
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */