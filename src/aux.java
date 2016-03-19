import android.graphics.drawable.Drawable;
import android.view.View;

public abstract class aux<T extends View, Z>
  extends auw
{
  private static boolean b = false;
  private static Integer d = null;
  public final T a;
  private final auy e;
  
  public aux(T paramT)
  {
    a = ((View)aal.a(paramT, "Argument must not be null"));
    e = new auy(paramT);
  }
  
  public void a(auh paramauh)
  {
    if (d == null)
    {
      b = true;
      a.setTag(paramauh);
      return;
    }
    a.setTag(d.intValue(), paramauh);
  }
  
  public void a(auv paramauv)
  {
    e.a(paramauv);
  }
  
  public auh b()
  {
    Object localObject;
    if (d == null) {
      localObject = a.getTag();
    }
    while (localObject != null) {
      if ((localObject instanceof auh))
      {
        return (auh)localObject;
        localObject = a.getTag(d.intValue());
      }
      else
      {
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
      }
    }
    return null;
  }
  
  public void d(Drawable paramDrawable)
  {
    super.d(paramDrawable);
    e.b();
  }
  
  public String toString()
  {
    String str = String.valueOf(a);
    return String.valueOf(str).length() + 12 + "Target for: " + str;
  }
}

/* Location:
 * Qualified Name:     aux
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */