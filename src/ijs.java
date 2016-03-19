import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.android.libraries.social.settings.PreferenceScreen;
import java.util.ArrayList;
import java.util.List;

public final class ijs
{
  private Activity a;
  private ijj b;
  private Context c;
  private long d = 0L;
  private int e;
  private SharedPreferences f;
  private SharedPreferences.Editor g;
  private boolean h;
  private String i;
  private int j;
  private PreferenceScreen k;
  private List<iju> l;
  private List<a> m;
  private List<ijt> n;
  private List<DialogInterface> o;
  private ijv p;
  
  public ijs(Activity paramActivity)
  {
    a = paramActivity;
    e = 100;
    c = paramActivity;
    i = c(paramActivity);
    f = null;
  }
  
  public static SharedPreferences b(Context paramContext)
  {
    return paramContext.getSharedPreferences(c(paramContext), 0);
  }
  
  private static String c(Context paramContext)
  {
    return String.valueOf(paramContext.getPackageName()).concat("_preferences");
  }
  
  private void l()
  {
    try
    {
      if (o == null) {
        return;
      }
      ArrayList localArrayList = new ArrayList(o);
      o.clear();
      int i1 = localArrayList.size() - 1;
      while (i1 >= 0)
      {
        ((DialogInterface)localArrayList.get(i1)).dismiss();
        i1 -= 1;
      }
      return;
    }
    finally {}
  }
  
  public PreferenceScreen a(Context paramContext)
  {
    paramContext = new PreferenceScreen(paramContext, null);
    paramContext.a(this);
    return paramContext;
  }
  
  public ijc a(CharSequence paramCharSequence)
  {
    if (k == null) {
      return null;
    }
    return k.a(paramCharSequence);
  }
  
  ijj a()
  {
    return b;
  }
  
  void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    try
    {
      if (l == null) {
        return;
      }
      ArrayList localArrayList = new ArrayList(l);
      int i2 = localArrayList.size();
      int i1 = 0;
      while ((i1 < i2) && (!((iju)localArrayList.get(i1)).a(paramInt1, paramInt2, paramIntent))) {
        i1 += 1;
      }
      return;
    }
    finally {}
  }
  
  public void a(DialogInterface paramDialogInterface)
  {
    try
    {
      if (o == null) {
        o = new ArrayList();
      }
      o.add(paramDialogInterface);
      return;
    }
    finally {}
  }
  
  void a(ijj paramijj)
  {
    b = paramijj;
  }
  
  void a(ijt paramijt)
  {
    try
    {
      if (n == null) {
        n = new ArrayList();
      }
      if (!n.contains(paramijt)) {
        n.add(paramijt);
      }
      return;
    }
    finally {}
  }
  
  public void a(iju paramiju)
  {
    try
    {
      if (l == null) {
        l = new ArrayList();
      }
      if (!l.contains(paramiju)) {
        l.add(paramiju);
      }
      return;
    }
    finally {}
  }
  
  void a(ijv paramijv)
  {
    p = paramijv;
  }
  
  boolean a(PreferenceScreen paramPreferenceScreen)
  {
    if (paramPreferenceScreen != k)
    {
      k = paramPreferenceScreen;
      return true;
    }
    return false;
  }
  
  long b()
  {
    try
    {
      long l1 = d;
      d = (1L + l1);
      return l1;
    }
    finally {}
  }
  
  public void b(DialogInterface paramDialogInterface)
  {
    try
    {
      if (o == null) {
        return;
      }
      o.remove(paramDialogInterface);
      return;
    }
    finally {}
  }
  
  void b(ijt paramijt)
  {
    try
    {
      if (n != null) {
        n.remove(paramijt);
      }
      return;
    }
    finally {}
  }
  
  public SharedPreferences c()
  {
    if (f == null) {
      f = c.getSharedPreferences(i, j);
    }
    return f;
  }
  
  PreferenceScreen d()
  {
    return k;
  }
  
  SharedPreferences.Editor e()
  {
    if (h)
    {
      if (g == null) {
        g = c().edit();
      }
      return g;
    }
    return c().edit();
  }
  
  boolean f()
  {
    return !h;
  }
  
  Activity g()
  {
    return a;
  }
  
  void h()
  {
    try
    {
      if (m == null) {
        return;
      }
      ArrayList localArrayList = new ArrayList(m);
      int i2 = localArrayList.size();
      int i1 = 0;
      while (i1 < i2)
      {
        localArrayList.get(i1);
        i1 += 1;
      }
      return;
    }
    finally {}
  }
  
  void i()
  {
    for (;;)
    {
      try
      {
        if (n == null) {
          break label73;
        }
        ArrayList localArrayList = new ArrayList(n);
        if (localArrayList != null)
        {
          int i2 = localArrayList.size();
          int i1 = 0;
          if (i1 < i2)
          {
            ((ijt)localArrayList.get(i1)).d();
            i1 += 1;
            continue;
          }
        }
        l();
      }
      finally {}
      return;
      label73:
      Object localObject2 = null;
    }
  }
  
  int j()
  {
    try
    {
      int i1 = e;
      e = (i1 + 1);
      return i1;
    }
    finally {}
  }
  
  ijv k()
  {
    return p;
  }
}

/* Location:
 * Qualified Name:     ijs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */