import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class hsj
  implements iom, ioo, iow, ioz
{
  private final Activity a;
  private final Set<hsk> b = new HashSet();
  private hst<hrz> c;
  
  public hsj(Activity paramActivity, iog paramiog)
  {
    a = paramActivity;
    paramiog.a(this);
  }
  
  public List<hrz> a(int paramInt)
  {
    List localList2 = c.a(Integer.valueOf(paramInt));
    List localList1 = localList2;
    if (localList2 == null) {
      localList1 = Collections.emptyList();
    }
    return localList1;
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    paramIntent = new hrz(paramInt1, paramInt2, paramIntent);
    Iterator localIterator = b.iterator();
    paramInt2 = 0;
    if (localIterator.hasNext())
    {
      if (!((hsk)localIterator.next()).a(paramIntent)) {
        break label75;
      }
      paramInt2 = 1;
    }
    label75:
    for (;;)
    {
      break;
      if (paramInt2 == 0) {
        c.a(Integer.valueOf(paramInt1), paramIntent);
      }
      return;
    }
  }
  
  void a(int paramInt, Intent paramIntent)
  {
    a.startActivityForResult(paramIntent, paramInt);
  }
  
  public void a(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      c = ((hst)paramBundle.getParcelable("com.google.android.libraries.social.activityresult.ActivityResultManager.Results"));
      return;
    }
    c = new hst(hrz.class);
  }
  
  void a(hsk paramhsk)
  {
    b.add(paramhsk);
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putParcelable("com.google.android.libraries.social.activityresult.ActivityResultManager.Results", c);
  }
  
  void b(hsk paramhsk)
  {
    b.remove(paramhsk);
  }
}

/* Location:
 * Qualified Name:     hsj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */