import android.content.Context;
import android.os.Build.VERSION;
import java.util.Iterator;
import java.util.List;

final class dcq
  implements dcj
{
  private final Context a;
  
  dcq(Context paramContext)
  {
    a = paramContext;
  }
  
  public boolean a(String paramString)
  {
    return (Build.VERSION.SDK_INT < 23) || (a.checkSelfPermission(paramString) == 0);
  }
  
  public boolean a(List<String> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      if (!a((String)paramList.next())) {
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     dcq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */