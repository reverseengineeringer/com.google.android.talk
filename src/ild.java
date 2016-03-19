import android.app.ActionBar;
import android.app.Activity;
import android.app.TaskStackBuilder;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.MenuItem;
import java.util.ArrayList;

public final class ild
  implements ilu, inl, ior, ioz
{
  private final Activity a;
  private hpu b;
  private rf c;
  private iha d;
  private boolean e = true;
  private ArrayList<a> f = new ArrayList();
  
  private ild(Activity paramActivity, iog paramiog)
  {
    a = paramActivity;
    paramiog.a(this);
  }
  
  public ild(rf paramrf, iog paramiog)
  {
    this(paramrf, paramiog);
    c = paramrf;
  }
  
  private boolean a(Activity paramActivity)
  {
    Intent localIntent = paramActivity.getParentActivityIntent();
    Object localObject = localIntent;
    if (localIntent == null)
    {
      localObject = localIntent;
      if (d != null)
      {
        localObject = d;
        if (b != null) {
          b.a();
        }
        localObject = ((iha)localObject).a();
      }
    }
    if ((localObject != null) && (paramActivity.shouldUpRecreateTask((Intent)localObject)))
    {
      localObject = TaskStackBuilder.create(paramActivity);
      paramActivity.onCreateNavigateUpTaskStack((TaskStackBuilder)localObject);
      paramActivity.onPrepareNavigateUpTaskStack((TaskStackBuilder)localObject);
      ((TaskStackBuilder)localObject).startActivities();
      try
      {
        paramActivity.finishAffinity();
        return true;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        for (;;)
        {
          paramActivity.finish();
        }
      }
    }
    return false;
  }
  
  private boolean a(rf paramrf)
  {
    Object localObject2 = paramrf.A_();
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = localObject2;
      if (d != null)
      {
        localObject1 = d;
        if (b != null) {
          b.a();
        }
        localObject1 = ((iha)localObject1).a();
      }
    }
    if ((localObject1 != null) && (paramrf.a_((Intent)localObject1)))
    {
      localObject2 = eo.a(paramrf);
      paramrf.a((eo)localObject2);
      if (((eo)localObject2).a() == 0) {
        ((eo)localObject2).a((Intent)localObject1);
      }
      ((eo)localObject2).b();
      try
      {
        aj.a(paramrf);
        return true;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        for (;;)
        {
          paramrf.finish();
        }
      }
    }
    return false;
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    d = ((iha)ilh.b(a, iha.class));
    b = ((hpu)paramilh.b(hpu.class));
  }
  
  public void a(Bundle paramBundle)
  {
    if (c != null)
    {
      paramBundle = c.g();
      if (paramBundle != null) {
        paramBundle.a(e);
      }
    }
    do
    {
      do
      {
        return;
      } while (Build.VERSION.SDK_INT < 11);
      paramBundle = a.getActionBar();
    } while (paramBundle == null);
    paramBundle.setDisplayHomeAsUpEnabled(e);
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      int i = f.size() - 1;
      while (i >= 0)
      {
        if (((a)f.get(i)).w()) {
          return true;
        }
        i -= 1;
      }
      if (!ilb.a(a)) {
        if (c != null)
        {
          if (a(c)) {
            return true;
          }
        }
        else if ((Build.VERSION.SDK_INT >= 16) && (a(a))) {
          return true;
        }
      }
      a.onBackPressed();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     ild
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */