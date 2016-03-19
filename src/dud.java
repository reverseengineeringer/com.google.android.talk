import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class dud
  implements dty
{
  private final eot a;
  
  dud(Context paramContext)
  {
    a = ((eot)ilh.a(paramContext, eot.class));
  }
  
  public boolean a(Context paramContext)
  {
    return b(paramContext);
  }
  
  public boolean a(Context paramContext, bfd parambfd)
  {
    return (parambfd != null) && (aal.a(parambfd, bhh.b)) && (a(paramContext)) && (b(parambfd));
  }
  
  public boolean a(Context paramContext, String paramString)
  {
    Intent localIntent = aal.a(paramContext, paramString);
    paramString = new ArrayList();
    Iterator localIterator = paramContext.getPackageManager().queryIntentActivities(localIntent, 0).iterator();
    while (localIterator.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      if ((activityInfo != null) && (!"com.google.android.apps.hangoutsdialer".equals(activityInfo.packageName)))
      {
        paramString.add(((Intent)localIntent.clone()).setPackage(activityInfo.packageName).setClassName(activityInfo.packageName, activityInfo.name));
        if (activityInfo.packageName.contains("com.android")) {
          paramString = aen.a(new Intent[] { (Intent)paramString.get(paramString.size() - 1) });
        }
      }
    }
    for (;;)
    {
      switch (paramString.size())
      {
      default: 
        paramContext.startActivity(Intent.createChooser((Intent)paramString.remove(paramString.size() - 1), paramContext.getString(aal.pu)).putExtra("android.intent.extra.INITIAL_INTENTS", paramString.toArray()));
        return true;
      case 0: 
        return false;
      }
      paramContext.startActivity((Intent)paramString.get(0));
      return true;
    }
  }
  
  public boolean a(bfd parambfd)
  {
    return (parambfd != null) && (aal.a(parambfd, bhh.b)) && (!parambfd.y()) && (!a.a(parambfd.g())) && (parambfd.N() != 3);
  }
  
  public boolean b(Context paramContext)
  {
    return eyv.a(paramContext, "com.google.android.apps.hangoutsdialer");
  }
  
  public boolean b(Context paramContext, bfd parambfd)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    String str;
    if (parambfd.t())
    {
      bool1 = bool2;
      if (a(paramContext, parambfd))
      {
        str = paramContext.getResources().getString(StressMode.cm);
        paramContext = ((hpz)ilh.a(paramContext, hpz.class)).a(parambfd.g());
        if (ezm.b()) {
          break label76;
        }
      }
    }
    label76:
    for (bool1 = true;; bool1 = false)
    {
      bool1 = paramContext.a(str, bool1);
      return bool1;
    }
  }
  
  public boolean b(bfd parambfd)
  {
    return (parambfd != null) && (!parambfd.y()) && (!a.a(parambfd.g())) && (parambfd.O());
  }
  
  public boolean c(Context paramContext, bfd parambfd)
  {
    return ((hpz)ilh.a(paramContext, hpz.class)).a(parambfd.g()).d("registered_for_incoming_pstn_calls");
  }
}

/* Location:
 * Qualified Name:     dud
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */