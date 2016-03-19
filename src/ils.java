import android.os.Bundle;
import java.util.Iterator;
import java.util.List;

public class ils
  extends ipb
  implements ilk
{
  private iol a;
  public final ilh j = new ilh();
  
  public void a(Bundle paramBundle)
  {
    j.a(new ilz(this, k));
  }
  
  public ilh getBinder()
  {
    return j;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Object localObject = ilh.b(getApplicationContext());
    j.a(this);
    j.a((ilh)localObject);
    a(paramBundle);
    localObject = j.c(imd.class).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((imd)((Iterator)localObject).next()).a(this, k);
    }
    j.a();
    a = k.a(new ilt(this, paramBundle));
    super.onCreate(paramBundle);
  }
  
  public void onDestroy()
  {
    k.b(a);
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     ils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */