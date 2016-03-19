import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;

public final class edf
  extends dyx
{
  private final ArrayList<String> a;
  
  public edf(ArrayList<String> paramArrayList)
  {
    super(paramArrayList);
    ArrayList localArrayList;
    a = localArrayList;
  }
  
  public void p_()
  {
    long l = exa.a();
    String str1 = dwt.a().e();
    if (TextUtils.isEmpty(str1)) {
      ezi.d("Babel", "Unregister removed account with invalid gcm registration id", new Object[0]);
    }
    for (;;)
    {
      return;
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        a(new dpj(2, l, str1, false, aal.oJ.getPackageName(), str2, true, 0, false, false, false, 0, 0, false, null));
      }
    }
  }
}

/* Location:
 * Qualified Name:     edf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */