import android.os.Bundle;
import java.util.Iterator;
import java.util.List;

final class csf
  implements dcl
{
  csf(cse paramcse, crw paramcrw) {}
  
  public void a(List<dcm> paramList, Bundle paramBundle)
  {
    boolean bool2 = false;
    hbs.a(Integer.valueOf(paramList.size()), Integer.valueOf(2));
    paramList = paramList.iterator();
    do
    {
      if (!paramList.hasNext()) {
        break label101;
      }
      paramBundle = (dcm)paramList.next();
      if ((!a.equals("android.permission.ACCESS_FINE_LOCATION")) && (!a.equals("android.permission.ACCESS_COARSE_LOCATION"))) {
        break;
      }
      bool1 = true;
      hbs.a("Expected condition to be true", bool1);
    } while (b);
    label101:
    for (boolean bool1 = bool2;; bool1 = true)
    {
      a.a(bool1);
      return;
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     csf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */