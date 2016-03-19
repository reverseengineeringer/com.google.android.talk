import android.graphics.Rect;
import android.transition.Transition;
import android.transition.Transition.EpicenterCallback;

public final class cc
  extends Transition.EpicenterCallback
{
  private Rect b;
  
  public cc(ce paramce) {}
  
  public Rect onGetEpicenter(Transition paramTransition)
  {
    if ((b == null) && (a.a != null)) {
      b = aal.a(a.a);
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */