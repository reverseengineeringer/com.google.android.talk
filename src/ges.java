import android.content.Context;
import android.content.Intent;

final class ges
  implements Runnable
{
  ges(ger paramger) {}
  
  public void run()
  {
    synchronized (ger.a(a))
    {
      Intent localIntent = new Intent("com.google.android.location.places.METHOD_CALL");
      localIntent.setPackage("com.google.android.gms");
      localIntent.putStringArrayListExtra("PLACE_IDS", ger.b(a));
      localIntent.putStringArrayListExtra("METHOD_NAMES", ger.c(a));
      localIntent.putExtra("PACKAGE_NAME", ger.d(a).getPackageName());
      localIntent.putExtra("CLIENT_VERSION", fho.a);
      ger.d(a).sendBroadcast(localIntent);
      ger.e(a);
      ger.f(a);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     ges
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */