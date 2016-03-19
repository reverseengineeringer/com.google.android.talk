import android.content.Context;
import android.text.TextUtils;
import java.util.Locale;

public final class ero
{
  private final String a;
  private final String b;
  
  public ero(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  static ero a(Context paramContext, String paramString, boolean paramBoolean, eum parameum)
  {
    if (!a)
    {
      ezi.c("Babel_telephony", "TeleExperiment.getWifiExperiment, no wifi connection.", new Object[0]);
      return null;
    }
    String str1 = aal.a(paramContext, "babel_wifi_experiment_prerequisites", ers.f);
    if (TextUtils.isEmpty(str1))
    {
      ezi.c("Babel_telephony", "TeleExperiment.getWifiExperiment, no experiments defined.", new Object[0]);
      return null;
    }
    String str2 = a(str1, "wifi_ssid=");
    if ((!TextUtils.isEmpty(str2)) && (!str2.equals(aal.j(paramContext))))
    {
      ezi.c("Babel_telephony", String.valueOf(str2).length() + 49 + "TeleExperiment.getWifiExperiment, not on '" + str2 + "' wifi.", new Object[0]);
      return null;
    }
    if ((str1.contains("domestic")) && ((paramString == null) || (!Locale.US.getCountry().equals(ezm.a(paramString)))))
    {
      paramContext = String.valueOf(aal.s(paramString));
      if (paramContext.length() != 0) {}
      for (paramContext = "TeleExperiment.getWifiExperiment, not a domestic number: ".concat(paramContext);; paramContext = new String("TeleExperiment.getWifiExperiment, not a domestic number: "))
      {
        ezi.c("Babel_telephony", paramContext, new Object[0]);
        return null;
      }
    }
    if ((str1.contains("incoming")) && (!paramBoolean))
    {
      ezi.c("Babel_telephony", "TeleExperiment.getWifiExperiment, not incoming call.", new Object[0]);
      return null;
    }
    paramString = a(str1, "wifi_signal_percent_threshold=");
    if (!TextUtils.isEmpty(paramString))
    {
      try
      {
        int i = Integer.parseInt(paramString);
        if (parameum.a(i, 0)) {
          break label370;
        }
        paramContext = String.valueOf(parameum);
        ezi.c("Babel_telephony", String.valueOf(paramContext).length() + 68 + String.valueOf(paramString).length() + "TeleExperiment.getWifiExperiment, (" + paramContext + ") is not above signal threshold: " + paramString, new Object[0]);
        return null;
      }
      catch (NumberFormatException paramContext)
      {
        paramContext = String.valueOf(paramString);
        if (paramContext.length() == 0) {}
      }
      for (paramContext = "TeleExperiment.getWifiExperiment, invalid threshold value: ".concat(paramContext);; paramContext = new String("TeleExperiment.getWifiExperiment, invalid threshold value: "))
      {
        ezi.d("Babel_telephony", paramContext, new Object[0]);
        return null;
      }
    }
    label370:
    if (aal.a(paramContext, "babel_wifi_experiment_percent_probability", 0) > (int)(Math.random() * 100.0D))
    {
      paramContext = new ero("nwc", aal.a(paramContext, "babel_wifi_experiment_flags", ers.g));
      paramString = String.valueOf(paramContext);
      ezi.c("Babel_telephony", String.valueOf(paramString).length() + 34 + "TeleExperiment.getWifiExperiment, " + paramString, new Object[0]);
      return paramContext;
    }
    ezi.c("Babel_telephony", "TeleExperiment.getWifiExperiment, skipping wifi experiment", new Object[0]);
    return null;
  }
  
  private static String a(String paramString1, String paramString2)
  {
    int i = paramString1.indexOf(paramString2);
    if (i == -1) {
      return null;
    }
    i += paramString2.length();
    int j = paramString1.indexOf(',', i);
    if (j == -1) {
      return paramString1.substring(i);
    }
    return paramString1.substring(i, j);
  }
  
  String a()
  {
    return a;
  }
  
  public boolean a(String paramString)
  {
    return (a != null) && (a.equals(paramString));
  }
  
  String b()
  {
    return b;
  }
  
  public boolean b(String paramString)
  {
    return (b != null) && (b.contains(paramString));
  }
  
  public String toString()
  {
    String str1 = a;
    String str2 = b;
    return String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + str1 + "/" + str2;
  }
}

/* Location:
 * Qualified Name:     ero
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */