import android.content.Context;
import java.util.ArrayList;
import java.util.List;

final class crc
  implements cqz
{
  crc(crb paramcrb) {}
  
  private static void a(Context paramContext, List<cqy> paramList, Class<? extends cqy> paramClass)
  {
    paramContext = (cqy)ilh.b(paramContext, paramClass);
    if (paramContext != null) {
      paramList.add(paramContext);
    }
  }
  
  public List<cqy> a(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    a(paramContext, localArrayList, cre.class);
    a(paramContext, localArrayList, cra.class);
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     crc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */