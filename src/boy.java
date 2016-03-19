import com.google.android.apps.hangouts.views.ParticipantsGalleryView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

final class boy
  implements Runnable
{
  boy(bng parambng) {}
  
  public void run()
  {
    bng localbng = a;
    long l = System.currentTimeMillis();
    Object localObject2 = new ArrayList();
    Iterator localIterator = aR.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (l - getValueb > 30000L)
      {
        if (ezi.a("Babel_Conv", 3))
        {
          localObject1 = String.valueOf(getValuea);
          if (((String)localObject1).length() == 0) {
            break label146;
          }
        }
        label146:
        for (localObject1 = "Typing status expired for ".concat((String)localObject1);; localObject1 = new String("Typing status expired for "))
        {
          ezi.b("Babel_Conv", (String)localObject1, new Object[0]);
          ((List)localObject2).add(localEntry.getKey());
          break;
        }
      }
    }
    Object localObject1 = ((List)localObject2).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (czb)((Iterator)localObject1).next();
      aR.remove(localObject2);
      localObject2 = localbng.a((czb)localObject2);
      if (localObject2 != null) {
        aQ.a((cyx)localObject2, 4, true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     boy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */