import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;

public class htc
{
  private Context a;
  
  public htc(Context paramContext)
  {
    a = paramContext;
  }
  
  public String a(int paramInt)
  {
    try
    {
      String str = a.getResources().getResourceName(paramInt);
      return str;
    }
    catch (Resources.NotFoundException localNotFoundException) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     htc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */