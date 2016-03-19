import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import java.util.Iterator;
import java.util.List;

public class img
  extends ipe
  implements hsb, ilk
{
  private iol a;
  public final ilh binder = context.getBinder();
  public final ill context = new ill();
  
  public img() {}
  
  public img(byte paramByte)
  {
    this();
    new hsc(lifecycle).a(binder).a(aal.tA, this);
  }
  
  public ilh getBinder()
  {
    return binder;
  }
  
  public Context getContext()
  {
    return context;
  }
  
  public LayoutInflater getLayoutInflater(Bundle paramBundle)
  {
    super.getLayoutInflater(paramBundle);
    return LayoutInflater.from(context);
  }
  
  public void onActivityResult(int paramInt, Intent paramIntent)
  {
    ((hqm)getParentFragment()).a();
  }
  
  public void onAttach(Activity paramActivity)
  {
    ilh localilh = ilh.a(paramActivity, getParentFragment());
    context.a(paramActivity);
    context.a(localilh);
    binder.b(getClass().getName());
    super.onAttach(paramActivity);
  }
  
  public void onAttachBinder(Bundle paramBundle)
  {
    binder.a(new imm(this, lifecycle));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    onAttachBinder(paramBundle);
    Iterator localIterator = binder.c(imn.class).iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
    binder.a();
    a = lifecycle.a(new imh(this, paramBundle));
    super.onCreate(paramBundle);
  }
  
  public void onDestroy()
  {
    lifecycle.b(a);
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     img
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */