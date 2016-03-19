import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import java.util.List;

public class fcl
  extends ViewPager
{
  private boolean d = true;
  private fcm e;
  
  public fcl(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c(2);
    e = new fcm();
    super.a(e);
  }
  
  public final void a(lt paramlt)
  {
    throw new UnsupportedOperationException("This method has been disabled, please use addOnPageChangeListener instead");
  }
  
  public void b(lt paramlt)
  {
    e.a.add(paramlt);
  }
  
  public void b(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return (d) && (super.onInterceptTouchEvent(paramMotionEvent));
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return (d) && (super.onTouchEvent(paramMotionEvent));
  }
}

/* Location:
 * Qualified Name:     fcl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */