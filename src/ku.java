import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.view.View;

class ku
  extends kt
{
  public int a(int paramInt1, int paramInt2)
  {
    return View.combineMeasuredStates(paramInt1, paramInt2);
  }
  
  public int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return View.resolveSizeAndState(paramInt1, paramInt2, paramInt3);
  }
  
  long a()
  {
    return ValueAnimator.getFrameDelay();
  }
  
  public void a(View paramView, float paramFloat)
  {
    paramView.setTranslationX(paramFloat);
  }
  
  public void a(View paramView, int paramInt, Paint paramPaint)
  {
    paramView.setLayerType(paramInt, null);
  }
  
  public void a(View paramView, boolean paramBoolean)
  {
    paramView.setSaveFromParentEnabled(false);
  }
  
  public float b(View paramView)
  {
    return paramView.getAlpha();
  }
  
  public void b(View paramView, float paramFloat)
  {
    paramView.setTranslationY(paramFloat);
  }
  
  public void b(View paramView, boolean paramBoolean)
  {
    paramView.setActivated(paramBoolean);
  }
  
  public int c(View paramView)
  {
    return paramView.getLayerType();
  }
  
  public void c(View paramView, float paramFloat)
  {
    paramView.setAlpha(paramFloat);
  }
  
  public int d(View paramView)
  {
    return paramView.getMeasuredWidthAndState();
  }
  
  public void d(View paramView, float paramFloat)
  {
    paramView.setScaleX(paramFloat);
  }
  
  public int e(View paramView)
  {
    return paramView.getMeasuredState();
  }
  
  public void e(View paramView, float paramFloat)
  {
    paramView.setScaleY(paramFloat);
  }
  
  public float f(View paramView)
  {
    return paramView.getTranslationX();
  }
  
  public float g(View paramView)
  {
    return paramView.getTranslationY();
  }
  
  public void h(View paramView)
  {
    paramView.jumpDrawablesToCurrentState();
  }
}

/* Location:
 * Qualified Name:     ku
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */