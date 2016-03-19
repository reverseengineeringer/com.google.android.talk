import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Iterator;
import java.util.List;

public final class cyu
  implements cyr
{
  public dlv a()
  {
    return new cys();
  }
  
  public boolean a(Context paramContext)
  {
    dcj localdcj = (dcj)ilh.a(paramContext, dcj.class);
    Iterator localIterator = cys.b.iterator();
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
    } while (localdcj.a((String)localIterator.next()));
    for (int i = 1;; i = 0) {
      return (i != 0) && (!PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("contacts_rationale_shown", false));
    }
  }
  
  public int b()
  {
    return aal.nO;
  }
}

/* Location:
 * Qualified Name:     cyu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */