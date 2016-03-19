import android.os.Bundle;
import java.util.Iterator;
import java.util.List;

public class imi
  extends ipf
  implements ilk
{
  private iol j;
  public final ilh l = new ilh();
  
  public void a(Bundle paramBundle)
  {
    l.a(new ilz(this, m));
  }
  
  public ilh getBinder()
  {
    return l;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Object localObject = ilh.b(getApplicationContext());
    l.a(this);
    l.a((ilh)localObject);
    a(paramBundle);
    localObject = l.c(imd.class).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((imd)((Iterator)localObject).next()).a(this, m);
    }
    l.a();
    j = m.a(new imj(this, paramBundle));
    super.onCreate(paramBundle);
  }
  
  public void onDestroy()
  {
    m.b(j);
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     imi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */