import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.text.TextUtils;
import android.util.Patterns;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class dur
{
  public final boolean a;
  final boolean b;
  private final String c;
  private final duo d;
  
  private dur(boolean paramBoolean, duo paramduo)
  {
    a = paramBoolean;
    b = false;
    c = c;
    d = paramduo;
  }
  
  public dur(boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    a = paramBoolean1;
    b = paramBoolean2;
    c = paramString;
    d = null;
    if ((paramBoolean1) || (paramBoolean2)) {}
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      hbs.a("Must either be reachable or an emergency number", paramBoolean1);
      if (paramBoolean2) {
        hbs.b("Phone number must be specified for emergency number", TextUtils.isEmpty(paramString));
      }
      return;
    }
  }
  
  public static dur a(Context paramContext, int paramInt1, bkw parambkw, int paramInt2, String paramString)
  {
    boolean bool2 = true;
    boolean bool3 = ezm.j(paramString);
    switch (dut.a[parambkw.ordinal()])
    {
    default: 
      paramContext = String.valueOf(parambkw);
      throw new IllegalArgumentException(String.valueOf(paramContext).length() + 27 + "Unknown conversation type: " + paramContext);
    case 1: 
      int i;
      if (!aal.f(paramInt2))
      {
        if (paramInt2 != 0) {
          break label140;
        }
        i = 1;
        if (i == 0) {
          break label146;
        }
      }
      for (boolean bool1 = true;; bool1 = false)
      {
        hbs.a("SMS_MESSAGE conversation type with non-SMS transport type", bool1);
        if (!bool3) {
          break label152;
        }
        return new dur(a(paramContext, paramInt1), true, paramString);
        i = 0;
        break;
      }
      if (aal.h(paramInt2))
      {
        if (TextUtils.isEmpty(paramString))
        {
          bool1 = false;
          if (!bool1) {
            break label229;
          }
        }
      }
      else
      {
        paramContext = new duo(paramContext, paramInt1);
        c = paramString;
        if (paramContext.a()) {
          break label304;
        }
      }
      for (bool1 = bool2;; bool1 = false)
      {
        return new dur(bool1, paramContext);
        bool1 = Patterns.EMAIL_ADDRESS.matcher(paramString).matches();
        break;
        parambkw = ezm.k(paramString);
        paramInt2 = parambkw.length();
        paramContext = new duo(paramContext, paramInt1);
        c = paramString;
        if (!ezm.b(parambkw))
        {
          bool1 = true;
          b = bool1;
          if (paramInt2 - 1 <= 11) {
            break label298;
          }
        }
        for (bool1 = true;; bool1 = false)
        {
          a = bool1;
          break;
          bool1 = false;
          break label266;
        }
      }
    case 2: 
      label140:
      label146:
      label152:
      label229:
      label266:
      label298:
      label304:
      return new dur(true, bool3, paramString);
    }
    return new dur(true, false, null);
  }
  
  private static void a(Context paramContext, DialogInterface.OnCancelListener paramOnCancelListener, String paramString1, String paramString2)
  {
    paramContext = new AlertDialog.Builder(paramContext).setTitle(paramString1).setMessage(paramString2).setCancelable(false).setPositiveButton(17039370, new dus());
    if (paramOnCancelListener != null) {
      paramContext.setOnCancelListener(paramOnCancelListener);
    }
    paramContext.create().show();
  }
  
  public static void a(Context paramContext, String paramString, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    ezi.a("Babel_Reachability", "Showing warning dialog for trying to SMS emergency number", new Object[0]);
    a(paramContext, paramOnCancelListener, paramContext.getString(aal.pR), paramContext.getString(aal.pQ, new Object[] { ezm.p(paramString) }));
  }
  
  public static boolean a(Context paramContext, int paramInt)
  {
    eot localeot = (eot)ilh.a(paramContext, eot.class);
    paramContext = (awo)ilh.a(paramContext, awo.class);
    return (localeot.c(paramInt)) && (ezm.e()) && (!paramContext.a(paramContext.a(paramInt)));
  }
  
  public void a(Context paramContext, boolean paramBoolean)
  {
    if (!a)
    {
      if (!b) {
        break label75;
      }
      if (paramBoolean)
      {
        String str = c;
        ezi.a("Babel_Reachability", "Showing warning dialog for trying to invite an emergency number to Hangouts", new Object[0]);
        a(paramContext, null, paramContext.getString(aal.pU), paramContext.getString(aal.pT, new Object[] { ezm.p(str) }));
      }
    }
    else
    {
      return;
    }
    a(paramContext, c, null);
    return;
    label75:
    d.a(paramContext, null);
  }
}

/* Location:
 * Qualified Name:     dur
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */