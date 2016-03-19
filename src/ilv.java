import android.os.Bundle;
import java.util.Iterator;
import java.util.List;

public class ilv
  extends ipc
  implements ilk
{
  public final ilh A = new ilh();
  private iol j;
  
  public void a(Bundle paramBundle)
  {
    A.a(new ilz(this, B));
  }
  
  public ilh getBinder()
  {
    return A;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Object localObject = ilh.b(getApplicationContext());
    A.a(this);
    A.a((ilh)localObject);
    a(paramBundle);
    localObject = A.c(imd.class).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((imd)((Iterator)localObject).next()).a(this, B);
    }
    A.a();
    j = B.a(new ilw(this, paramBundle));
    super.onCreate(paramBundle);
  }
  
  public void onDestroy()
  {
    B.b(j);
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     ilv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */