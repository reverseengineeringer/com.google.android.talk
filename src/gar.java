import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Looper;
import android.util.Base64;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;

public final class gar
{
  static Map<String, gar> a = new HashMap();
  static gaz c;
  static gau d;
  static String h;
  Context b;
  KeyPair e;
  String f = "";
  long g;
  
  private gar(Context paramContext, String paramString)
  {
    b = paramContext.getApplicationContext();
    f = paramString;
  }
  
  static int a(Context paramContext)
  {
    try
    {
      int i = getPackageManagergetPackageInfogetPackageName0versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      new StringBuilder("Never happens: can't find own package ").append(paramContext);
    }
    return 0;
  }
  
  public static gar a(Context paramContext, Bundle paramBundle)
  {
    if (paramBundle == null) {
      paramBundle = "";
    }
    for (;;)
    {
      try
      {
        Context localContext = paramContext.getApplicationContext();
        if (c == null)
        {
          c = new gaz(localContext);
          d = new gau(localContext);
        }
        h = Integer.toString(a(localContext));
        gar localgar = (gar)a.get(paramBundle);
        paramContext = localgar;
        if (localgar == null)
        {
          paramContext = new gar(localContext, paramBundle);
          a.put(paramBundle, paramContext);
        }
        return paramContext;
      }
      finally {}
      paramBundle = paramBundle.getString("subtype");
      while (paramBundle != null) {
        break;
      }
      paramBundle = "";
    }
  }
  
  static String a(KeyPair paramKeyPair)
  {
    paramKeyPair = paramKeyPair.getPublic().getEncoded();
    try
    {
      paramKeyPair = MessageDigest.getInstance("SHA1").digest(paramKeyPair);
      paramKeyPair[0] = ((byte)((paramKeyPair[0] & 0xF) + 112));
      paramKeyPair = Base64.encodeToString(paramKeyPair, 0, 8, 11);
      return paramKeyPair;
    }
    catch (NoSuchAlgorithmException paramKeyPair) {}
    return null;
  }
  
  static String a(byte[] paramArrayOfByte)
  {
    return Base64.encodeToString(paramArrayOfByte, 11);
  }
  
  public static gar b(Context paramContext)
  {
    return a(paramContext, null);
  }
  
  public String a(String paramString1, String paramString2, Bundle paramBundle)
  {
    int j = 0;
    int k = 1;
    if (Looper.getMainLooper() == Looper.myLooper()) {
      throw new IOException("MAIN_THREAD");
    }
    Object localObject = c.a("appVersion");
    if ((localObject == null) || (!((String)localObject).equals(h)))
    {
      i = 1;
      if (i == 0) {
        break label133;
      }
    }
    label133:
    for (localObject = null;; localObject = c.a(f, paramString1, paramString2))
    {
      if (localObject == null) {
        break label150;
      }
      return (String)localObject;
      localObject = c.a("lastToken");
      if (localObject == null)
      {
        i = 1;
        break;
      }
      long l = Long.parseLong((String)localObject);
      if (System.currentTimeMillis() / 1000L - Long.valueOf(l).longValue() > 604800L)
      {
        i = 1;
        break;
      }
      i = 0;
      break;
    }
    label150:
    int i = k;
    if (paramBundle.getString("ttl") != null) {
      i = 0;
    }
    if ("jwt".equals(paramBundle.getString("type"))) {
      i = j;
    }
    for (;;)
    {
      paramBundle = b(paramString1, paramString2, paramBundle);
      localObject = paramBundle;
      if (paramBundle == null) {
        break;
      }
      localObject = paramBundle;
      if (i == 0) {
        break;
      }
      c.a(f, paramString1, paramString2, paramBundle, h);
      return paramBundle;
    }
  }
  
  void a()
  {
    g = 0L;
    c.c(f);
    e = null;
  }
  
  public String b(String paramString1, String paramString2, Bundle paramBundle)
  {
    if (paramString2 != null) {
      paramBundle.putString("scope", paramString2);
    }
    paramBundle.putString("sender", paramString1);
    if ("".equals(f)) {}
    for (paramString2 = paramString1;; paramString2 = f)
    {
      if (!paramBundle.containsKey("legacy.register"))
      {
        paramBundle.putString("subscription", paramString1);
        paramBundle.putString("subtype", paramString2);
        paramBundle.putString("X-subscription", paramString1);
        paramBundle.putString("X-subtype", paramString2);
      }
      paramString1 = d;
      if (e == null) {
        e = c.b(f);
      }
      if (e == null)
      {
        g = System.currentTimeMillis();
        e = c.a(f, g);
      }
      paramBundle = paramString1.a(paramBundle, e);
      if (paramBundle != null) {
        break;
      }
      throw new IOException("SERVICE_NOT_AVAILABLE");
    }
    paramString2 = paramBundle.getStringExtra("registration_id");
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = paramBundle.getStringExtra("unregistered");
    }
    paramBundle.getLongExtra("Retry-After", 0L);
    if (paramString1 == null)
    {
      paramString1 = paramBundle.getStringExtra("error");
      if (paramString1 != null) {
        throw new IOException(paramString1);
      }
      new StringBuilder("Unexpected response from GCM ").append(paramBundle.getExtras());
      new Throwable();
      throw new IOException("SERVICE_NOT_AVAILABLE");
    }
    return paramString1;
  }
}

/* Location:
 * Qualified Name:     gar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */