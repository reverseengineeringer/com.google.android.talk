import android.util.Log;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.lang.ref.WeakReference;

final class auz
  implements ViewTreeObserver.OnPreDrawListener
{
  private final WeakReference<auy> a;
  
  public auz(auy paramauy)
  {
    a = new WeakReference(paramauy);
  }
  
  public boolean onPreDraw()
  {
    if (Log.isLoggable("ViewTarget", 2))
    {
      localObject = String.valueOf(this);
      new StringBuilder(String.valueOf(localObject).length() + 39).append("OnGlobalLayoutListener called listener=").append((String)localObject);
    }
    Object localObject = (auy)a.get();
    if (localObject != null) {
      ((auy)localObject).a();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     auz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */