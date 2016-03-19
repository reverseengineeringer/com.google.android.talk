import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;

public final class vs
  extends ContextWrapper
{
  private Resources a;
  
  private vs(Context paramContext)
  {
    super(paramContext);
  }
  
  public static Context a(Context paramContext)
  {
    Object localObject = paramContext;
    if (!(paramContext instanceof vs)) {
      localObject = new vs(paramContext);
    }
    return (Context)localObject;
  }
  
  public Resources getResources()
  {
    if (a == null) {
      a = new vt(super.getResources(), vv.a(this));
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     vs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */