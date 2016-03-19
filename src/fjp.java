import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.lang.ref.WeakReference;

final class fjp
  extends BroadcastReceiver
{
  private WeakReference<fjj> a;
  
  fjp(fjj paramfjj)
  {
    a = new WeakReference(paramfjj);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getData();
    paramContext = null;
    if (paramIntent != null) {
      paramContext = paramIntent.getSchemeSpecificPart();
    }
    if ((paramContext == null) || (!paramContext.equals("com.google.android.gms"))) {}
    do
    {
      return;
      paramContext = (fjj)a.get();
    } while (paramContext == null);
    fjj.a(paramContext);
  }
}

/* Location:
 * Qualified Name:     fjp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */