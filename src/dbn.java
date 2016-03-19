import android.util.Patterns;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class dbn
  extends ebh
{
  dbn(dbh paramdbh)
  {
    super(context);
  }
  
  private static void a(cyx[] paramArrayOfcyx, List<bdy> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramArrayOfcyx.length;
    int i = 0;
    Object localObject;
    while (i < j)
    {
      localObject = paramArrayOfcyx[i];
      if ((localObject != null) && (!z) && (c != null)) {
        localArrayList.add(c);
      }
      i += 1;
    }
    j = 1;
    int m = paramArrayOfcyx.length;
    i = 0;
    if (i < m)
    {
      cyx localcyx = paramArrayOfcyx[i];
      int k = j;
      if (localcyx != null)
      {
        k = j;
        if (z) {
          if (j == 0) {
            break label139;
          }
        }
      }
      label139:
      for (localObject = localArrayList;; localObject = null)
      {
        paramList.add(bea.a(localcyx, (List)localObject, false));
        k = 0;
        i += 1;
        j = k;
        break;
      }
    }
  }
  
  private void c(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(dtt.a(paramString1, paramString2));
    a(RealTimeChatService.a(a.f, localArrayList, null, true));
  }
  
  protected void a(eau parameau)
  {
    Object localObject = ((drb)parameau.c()).k();
    parameau = new ArrayList(((List)localObject).size());
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      a((cyx[])nextb, parameau);
    }
    if (!a.i)
    {
      int i = parameau.size() - 1;
      while (i >= 0)
      {
        if (!((bdy)parameau.get(i)).q()) {
          parameau.remove(i);
        }
        i -= 1;
      }
    }
    if (!parameau.isEmpty()) {
      a.d.a(parameau);
    }
  }
  
  public void a(String paramString)
  {
    if (Patterns.EMAIL_ADDRESS.matcher(paramString).matches())
    {
      if (a.i)
      {
        localObject = new beb().a(paramString).e(paramString).a();
        a.d.a(Collections.singletonList(localObject));
      }
      c(paramString, null);
      return;
    }
    String str = ezm.m(paramString);
    Object localObject = str;
    if (str == null)
    {
      localObject = str;
      if (aal.a(a.context, "babel_use_loose_number_match", true))
      {
        localObject = str;
        if (ezm.e(paramString)) {
          localObject = ezm.f(paramString);
        }
      }
    }
    if (localObject != null)
    {
      paramString = new beb().a(paramString).f((String)localObject).a();
      a.d.a(Collections.singletonList(paramString));
      c(null, (String)localObject);
      return;
    }
    a.d.a(null);
  }
}

/* Location:
 * Qualified Name:     dbn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */