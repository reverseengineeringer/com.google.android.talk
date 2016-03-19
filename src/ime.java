import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import java.util.Iterator;
import java.util.List;

public class ime
  extends ipd
  implements ilk
{
  private iol aj;
  public final ill am = new ill();
  public final ilh an = am.getBinder();
  
  public void e(Bundle paramBundle)
  {
    an.a(new imm(this, ao));
  }
  
  public ilh getBinder()
  {
    return an;
  }
  
  public Context getContext()
  {
    return am;
  }
  
  public LayoutInflater getLayoutInflater(Bundle paramBundle)
  {
    super.getLayoutInflater(paramBundle);
    return LayoutInflater.from(am);
  }
  
  public void onAttach(Activity paramActivity)
  {
    ilh localilh = ilh.a(paramActivity, getParentFragment());
    am.a(paramActivity);
    am.a(localilh);
    an.b(getClass().getName());
    super.onAttach(paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    e(paramBundle);
    Iterator localIterator = an.c(imn.class).iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
    an.a();
    aj = ao.a(new imf(this, paramBundle));
    super.onCreate(paramBundle);
  }
  
  public void onDestroy()
  {
    ao.b(aj);
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     ime
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */