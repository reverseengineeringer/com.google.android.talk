import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

public final class atr
  implements Handler.Callback
{
  public static final atr a = new atr();
  final Map<FragmentManager, atp> b = new HashMap();
  final Map<bg, att> c = new HashMap();
  private volatile ahw d;
  private final Handler e = new Handler(Looper.getMainLooper(), this);
  
  private ahw a(Context paramContext, bg parambg, av paramav)
  {
    att localatt = a(parambg, paramav);
    paramav = localatt.b();
    parambg = paramav;
    if (paramav == null)
    {
      parambg = new ahw(paramContext, localatt.a(), localatt.c());
      localatt.a(parambg);
    }
    return parambg;
  }
  
  private static void a(Activity paramActivity)
  {
    if ((Build.VERSION.SDK_INT >= 17) && (paramActivity.isDestroyed())) {
      throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }
  }
  
  private ahw b(Context paramContext)
  {
    if (d == null) {}
    try
    {
      if (d == null) {
        d = new ahw(paramContext.getApplicationContext(), new atg(), new atl());
      }
      return d;
    }
    finally {}
  }
  
  public ahw a(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("You cannot start a load on a null Context");
    }
    if ((avq.b()) && (!(paramContext instanceof Application)))
    {
      if ((paramContext instanceof ba))
      {
        paramContext = (ba)paramContext;
        if (avq.c()) {
          paramContext = a(paramContext.getApplicationContext());
        }
      }
      Activity localActivity;
      atp localatp;
      ahw localahw;
      do
      {
        return paramContext;
        a(paramContext);
        return a(paramContext, paramContext.C_(), null);
        if (!(paramContext instanceof Activity)) {
          break;
        }
        localActivity = (Activity)paramContext;
        if ((avq.c()) || (Build.VERSION.SDK_INT < 11)) {
          return a(localActivity.getApplicationContext());
        }
        a(localActivity);
        localatp = a(localActivity.getFragmentManager(), null);
        localahw = localatp.b();
        paramContext = localahw;
      } while (localahw != null);
      paramContext = new ahw(localActivity, localatp.a(), localatp.c());
      localatp.a(paramContext);
      return paramContext;
      if ((paramContext instanceof ContextWrapper)) {
        return a(((ContextWrapper)paramContext).getBaseContext());
      }
    }
    return b(paramContext);
  }
  
  public ahw a(av paramav)
  {
    if (paramav.getActivity() == null) {
      throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
    }
    if (avq.c()) {
      return a(paramav.getActivity().getApplicationContext());
    }
    bg localbg = paramav.getChildFragmentManager();
    return a(paramav.getActivity(), localbg, paramav);
  }
  
  atp a(FragmentManager paramFragmentManager, Fragment paramFragment)
  {
    atp localatp = (atp)paramFragmentManager.findFragmentByTag("com.bumptech.glide.manager");
    paramFragment = localatp;
    if (localatp == null)
    {
      localatp = (atp)b.get(paramFragmentManager);
      paramFragment = localatp;
      if (localatp == null)
      {
        paramFragment = new atp();
        paramFragment.a(null);
        b.put(paramFragmentManager, paramFragment);
        paramFragmentManager.beginTransaction().add(paramFragment, "com.bumptech.glide.manager").commitAllowingStateLoss();
        e.obtainMessage(1, paramFragmentManager).sendToTarget();
      }
    }
    return paramFragment;
  }
  
  att a(bg parambg, av paramav)
  {
    att localatt2 = (att)parambg.a("com.bumptech.glide.manager");
    att localatt1 = localatt2;
    if (localatt2 == null)
    {
      localatt2 = (att)c.get(parambg);
      localatt1 = localatt2;
      if (localatt2 == null)
      {
        localatt1 = new att();
        localatt1.a(paramav);
        c.put(parambg, localatt1);
        parambg.a().a(localatt1, "com.bumptech.glide.manager").c();
        e.obtainMessage(2, parambg).sendToTarget();
      }
    }
    return localatt1;
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    Object localObject2 = null;
    boolean bool = true;
    Object localObject1;
    switch (what)
    {
    default: 
      bool = false;
      localObject1 = null;
      paramMessage = (Message)localObject2;
    }
    for (;;)
    {
      if ((bool) && (localObject1 == null) && (Log.isLoggable("RMRetriever", 5)))
      {
        paramMessage = String.valueOf(paramMessage);
        new StringBuilder(String.valueOf(paramMessage).length() + 61).append("Failed to remove expected request manager fragment, manager: ").append(paramMessage);
      }
      return bool;
      paramMessage = (FragmentManager)obj;
      localObject1 = b.remove(paramMessage);
      continue;
      paramMessage = (bg)obj;
      localObject1 = c.remove(paramMessage);
    }
  }
}

/* Location:
 * Qualified Name:     atr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */