import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import java.util.Iterator;
import java.util.List;

public class iiq
  extends ijb
  implements ilk
{
  public final ill a = new ill();
  public final ilh b = a.getBinder();
  private iol f;
  
  public void a(Bundle paramBundle)
  {
    b.a(new imm(this, c));
  }
  
  public ilh getBinder()
  {
    return b;
  }
  
  public Context getContext()
  {
    return a;
  }
  
  public LayoutInflater getLayoutInflater(Bundle paramBundle)
  {
    super.getLayoutInflater(paramBundle);
    return LayoutInflater.from(a);
  }
  
  public void onAttach(Activity paramActivity)
  {
    ilh localilh = ilh.a(paramActivity, getParentFragment());
    a.a(paramActivity);
    a.a(localilh);
    c.a(paramActivity);
    super.onAttach(paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    a(paramBundle);
    Iterator localIterator = b.c(imn.class).iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
    b.a();
    f = c.a(new iir(this, paramBundle));
    super.onCreate(paramBundle);
  }
  
  public void onDestroy()
  {
    c.b(f);
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     iiq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */