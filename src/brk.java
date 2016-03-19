import android.content.Context;
import android.os.Bundle;
import android.util.SparseArray;
import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class brk
  implements bhv
{
  private final SparseArray<List<ejc>> a = new SparseArray();
  private final Context b;
  
  public brk(Context paramContext)
  {
    b = paramContext;
  }
  
  public void a(Bundle paramBundle, eit parameit, bfd parambfd)
  {
    Object localObject = paramBundle.getParcelableArrayList("save_media_attachments");
    int i = (int)System.currentTimeMillis();
    paramBundle = new ArrayList();
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      eno localeno = (eno)((Iterator)localObject).next();
      if (aen.b(b))
      {
        eyd localeyd = new eyd(a, parambfd.a());
        localeyd.c();
        paramBundle.add(new bhs(localeyd, this, b, true, Integer.valueOf(i)));
      }
    }
    if (!paramBundle.isEmpty())
    {
      a.append(i, paramBundle);
      paramBundle = paramBundle.iterator();
      while (paramBundle.hasNext()) {
        parameit.c((ejc)paramBundle.next());
      }
    }
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    hbs.a("Expected null", parameys);
    hbs.a("Expected null", paramexs);
    int i = aal.a((Integer)parambhs.l(), 0);
    parameys = (List)a.get(i);
    parameys.remove(parambhs);
    if (paramBoolean1)
    {
      if (parameys.isEmpty())
      {
        a.remove(i);
        Toast.makeText(b, StressMode.rK, 0).show();
      }
      return;
    }
    parameys = parameys.iterator();
    while (parameys.hasNext()) {
      ((ejc)parameys.next()).b();
    }
    Toast.makeText(b, StressMode.rJ, 0).show();
  }
}

/* Location:
 * Qualified Name:     brk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */