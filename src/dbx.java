import android.content.Context;
import android.content.Intent;
import java.util.Collections;

final class dbx
  implements czo
{
  dbx(dbv paramdbv) {}
  
  public int A()
  {
    return fii.l;
  }
  
  public void a(Context paramContext)
  {
    aal.a(dbv.a(paramContext), 2501);
    Object localObject = dhm.a;
    bkw localbkw = bkw.b;
    localObject = aal.a(dbv.a(paramContext), null, Collections.emptyList(), (dhm)localObject, localbkw);
    ((Intent)localObject).putExtra("opened_from_impression", 2148);
    paramContext.startActivity((Intent)localObject);
  }
  
  public int z()
  {
    return aen.jF;
  }
}

/* Location:
 * Qualified Name:     dbx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */