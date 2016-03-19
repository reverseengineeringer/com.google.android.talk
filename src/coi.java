import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

final class coi
  extends htu
{
  private cnx[] g;
  
  coi(Context paramContext, String paramString1, Activity paramActivity, int paramInt, String paramString2, Uri paramUri)
  {
    super(paramContext, paramString1);
  }
  
  protected hus a(Context paramContext)
  {
    paramContext = new ArrayList();
    Iterator localIterator = ilh.c(a, cny.class).iterator();
    while (localIterator.hasNext()) {
      Collections.addAll(paramContext, ((cny)localIterator.next()).b(a, b));
    }
    if (!paramContext.isEmpty()) {
      g = ((cnx[])paramContext.toArray(new cnx[paramContext.size()]));
    }
    return new hus(true);
  }
  
  protected void m_()
  {
    coh.a(a, c, d, g);
  }
}

/* Location:
 * Qualified Name:     coi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */