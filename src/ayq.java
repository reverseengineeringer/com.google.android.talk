import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;

final class ayq
  implements ilu, ios, iov, ioz
{
  Activity a;
  Dialog b;
  private hpu c;
  private hpz d;
  private ayx e;
  private boolean f;
  
  ayq(Activity paramActivity, iog paramiog)
  {
    a = paramActivity;
    paramiog.a(this);
  }
  
  public void X_()
  {
    f = true;
    c();
  }
  
  public void a()
  {
    f = false;
    if (b != null)
    {
      b.dismiss();
      b = null;
    }
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    c = ((hpu)paramilh.a(hpu.class));
    d = ((hpz)paramilh.a(hpz.class));
    e = ((ayx)paramilh.a(ayx.class));
    c.a(new ayr(this));
  }
  
  void c()
  {
    if (!f) {}
    int j;
    do
    {
      return;
      j = c.a();
    } while ((j == -1) || (!d.c(j)));
    Object localObject1 = a.getPackageManager();
    for (;;)
    {
      try
      {
        localObject1 = ((PackageManager)localObject1).getPackageInfo(a.getPackageName(), 0);
        Object localObject2 = a;
        i = versionCode;
        localObject1 = ((hpz)ilh.a((Context)localObject2, hpz.class)).a(j);
        if (((hqb)localObject1).a("app_upgrade_version_code", 0) < i)
        {
          i = 0;
          if (i == 0) {
            break;
          }
          if (i != 2) {
            break label236;
          }
          bool = true;
          localObject1 = new ays(this, j);
          localObject2 = new ayt(this, bool);
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(a);
          if (!bool) {
            break label241;
          }
          i = aal.ia;
          localBuilder = localBuilder.setTitle(i);
          if (!bool) {
            break label248;
          }
          i = aal.ib;
          b = localBuilder.setMessage(i).setOnCancelListener((DialogInterface.OnCancelListener)localObject2).setPositiveButton(aal.hZ, (DialogInterface.OnClickListener)localObject1).create();
          b.show();
          return;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        throw new AssertionError(localNameNotFoundException);
      }
      int i = localNameNotFoundException.a("app_upgrade_type", 0);
      continue;
      label236:
      boolean bool = false;
      continue;
      label241:
      i = aal.id;
      continue;
      label248:
      i = aal.ic;
    }
  }
}

/* Location:
 * Qualified Name:     ayq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */