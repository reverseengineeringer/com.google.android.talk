import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class djw
{
  private static final boolean a = false;
  private String b;
  private String c;
  private long d;
  private int e;
  private String f;
  private boolean g;
  private final eot h;
  private final hba i;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  public djw(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("phone_verification", 0);
    b = localSharedPreferences.getString("account_name", null);
    c = localSharedPreferences.getString("phone_number", null);
    d = localSharedPreferences.getLong("verification_time", 0L);
    e = localSharedPreferences.getInt("verification_state", 100);
    f = localSharedPreferences.getString("last_successful_number", null);
    h = ((eot)ilh.a(paramContext, eot.class));
    i = ((hba)ilh.a(paramContext, hba.class));
  }
  
  private void a(int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    if (a) {
      new StringBuilder(38).append("Setting verification state:").append(paramInt);
    }
    e = paramInt;
    b = paramString1;
    c = paramString2;
    g = paramBoolean;
    paramString1 = dvd.a(b, null);
    switch (paramInt)
    {
    }
    for (;;)
    {
      paramString1 = aal.oJ.getSharedPreferences("phone_verification", 0).edit();
      paramString1.putString("account_name", b);
      paramString1.putString("phone_number", c);
      paramString1.putInt("verification_state", e);
      if (e == 101)
      {
        d = System.currentTimeMillis();
        paramString1.putLong("verification_time", d);
      }
      if (paramInt == 104)
      {
        f = c;
        paramString1.putString("last_successful_number", f);
      }
      paramString1.apply();
      return;
      aal.a(paramString1, 2042);
      continue;
      aal.a(paramString1, 2044);
      continue;
      aal.a(paramString1, 1598);
      continue;
      aal.a(paramString1, 2045);
    }
  }
  
  private void b(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        aal.a(dvd.a(b, null), 2048);
        a(paramInt, b, c, g);
        if (paramInt == 105)
        {
          ezi.a("Babel", "Sending verification failure notification", new Object[0]);
          if (paramBoolean)
          {
            c("phone_verification_failure_no_retry");
            return;
          }
          c("phone_verification_failure_retry");
          continue;
        }
        if (paramInt != 104) {
          continue;
        }
      }
      finally {}
      ezi.a("Babel", "Sending verifcation success notification", new Object[0]);
      c("phone_verification_success");
    }
  }
  
  private static void c(String paramString)
  {
    fi localfi = fi.a(aal.oJ);
    Intent localIntent = new Intent("phone_verification_outcome");
    localIntent.putExtra("phone_verification_result", paramString);
    localfi.a(localIntent);
  }
  
  private boolean e()
  {
    try
    {
      if (e == 104) {
        return false;
      }
      a(101, b, c, g);
      if (a)
      {
        String str1 = String.valueOf("Retrying phone verification.  Account: ");
        String str2 = b;
        String str3 = c;
        new StringBuilder(String.valueOf(str1).length() + 8 + String.valueOf(str2).length() + String.valueOf(str3).length()).append(str1).append(str2).append(" Phone: ").append(str3);
      }
      boolean bool = f();
      return bool;
    }
    finally {}
  }
  
  private boolean f()
  {
    bfd localbfd = dvd.a(b, null);
    if ((localbfd == null) || (dvd.d(localbfd)))
    {
      ezi.d("Babel", "Account not ready. Skip phone verification", new Object[0]);
      b(105, false);
      aal.a(localbfd, 2046);
      return false;
    }
    if (a)
    {
      String str1 = String.valueOf("Starting phone verification.  Account: ");
      String str2 = b;
      String str3 = c;
      new StringBuilder(String.valueOf(str1).length() + 8 + String.valueOf(str2).length() + String.valueOf(str3).length()).append(str1).append(str2).append(" Phone: ").append(str3);
    }
    RealTimeChatService.c(localbfd, c);
    return true;
  }
  
  public djx a(bfd parambfd)
  {
    if (TextUtils.equals(parambfd.a(), b))
    {
      localObject = ezm.a(c, ezp.c);
      if (a()) {
        return new djx(102, (String)localObject);
      }
    }
    Object localObject = parambfd.s();
    if (((ArrayList)localObject).size() > 0)
    {
      parambfd = new StringBuilder();
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        if (parambfd.length() > 0) {
          parambfd.append(", ");
        }
        parambfd.append(ezm.a(str, ezp.c));
      }
      return new djx(100, parambfd.toString());
    }
    localObject = ezm.f();
    parambfd = (bfd)localObject;
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      parambfd = f;
    }
    if (!TextUtils.isEmpty(parambfd)) {}
    for (parambfd = ezm.a(parambfd, ezp.c);; parambfd = null) {
      return new djx(101, parambfd);
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    b(paramInt, paramBoolean);
  }
  
  public void a(String paramString)
  {
    try
    {
      if (a)
      {
        localObject = String.valueOf("Finishing phone verification.  Account: ");
        String str1 = b;
        String str2 = c;
        new StringBuilder(String.valueOf(localObject).length() + 28 + String.valueOf(str1).length() + String.valueOf(str2).length() + String.valueOf(paramString).length()).append((String)localObject).append(str1).append(" Phone: ").append(str2).append(" Verification Code: ").append(paramString);
      }
      Object localObject = dvd.a(b, null);
      if ((localObject == null) || (dvd.d((bfd)localObject)))
      {
        ezi.d("Babel", "Account not ready. Abort phone verification", new Object[0]);
        aal.a((bfd)localObject, 2046);
        a(105, b, c, g);
        return;
      }
      a(103, b, c, g);
      RealTimeChatService.a((bfd)localObject, c, paramString, g);
      return;
    }
    finally {}
  }
  
  public boolean a()
  {
    for (;;)
    {
      try
      {
        if ((e >= 101) && (e <= 103))
        {
          bool = true;
          return bool;
        }
      }
      finally {}
      boolean bool = false;
    }
  }
  
  public boolean a(String paramString1, String paramString2, boolean paramBoolean)
  {
    try
    {
      if ((a()) && (c.equals(paramString1)))
      {
        paramBoolean = e();
        return paramBoolean;
      }
      a(101, paramString2, paramString1, paramBoolean);
      paramBoolean = f();
      return paramBoolean;
    }
    finally {}
  }
  
  public int b()
  {
    try
    {
      int j = e;
      return j;
    }
    finally {}
  }
  
  public void b(String paramString)
  {
    c = paramString;
  }
  
  public boolean b(bfd parambfd)
  {
    boolean bool = ezm.e();
    Object localObject = i.a(parambfd.g());
    int j;
    if (bool)
    {
      j = 2295;
      ((haw)localObject).a(j).a(TimeUnit.DAYS);
      if (!parambfd.C())
      {
        localObject = dvd.r().iterator();
        do
        {
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
        } while (!((bfd)((Iterator)localObject).next()).r());
      }
    }
    else
    {
      for (j = 1;; j = 0)
      {
        if ((j != 0) || (h.a(parambfd.g())) || (parambfd.y())) {
          break label129;
        }
        return true;
        j = 2296;
        break;
      }
    }
    label129:
    return false;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     djw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */