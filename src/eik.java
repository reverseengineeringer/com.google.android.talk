import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class eik
  implements Runnable
{
  eik(eie parameie) {}
  
  public void run()
  {
    eie localeie = eie.a();
    for (;;)
    {
      try
      {
        localeie.c();
        Object localObject2 = aal.oJ.getSharedPreferences("GmsPeopleCache", 0).getString("last_refresh_thumbprint", "N/A");
        String str1 = g;
        String str2 = String.valueOf(localObject2);
        if (str2.length() != 0)
        {
          "GmsPeopleCache: old Thumbprint: ".concat(str2);
          str2 = String.valueOf(str1);
          if (str2.length() != 0)
          {
            "GmsPeopleCache: current Thumbprint: ".concat(str2);
            if ((!aal.a(aal.oJ, "babel_refresh_contacts_derived_data_use_thumbprint", true)) || (!str1.equals(localObject2))) {
              bfz.d(aal.oJ);
            }
            long l = System.currentTimeMillis();
            localObject2 = aal.oJ.getSharedPreferences("GmsPeopleCache", 0).edit();
            ((SharedPreferences.Editor)localObject2).putLong("last_refresh_timestamp", l);
            ((SharedPreferences.Editor)localObject2).putString("last_refresh_thumbprint", str1);
            ((SharedPreferences.Editor)localObject2).apply();
          }
        }
        else
        {
          new String("GmsPeopleCache: old Thumbprint: ");
          continue;
        }
        new String("GmsPeopleCache: current Thumbprint: ");
      }
      finally
      {
        localeie.c();
      }
    }
  }
}

/* Location:
 * Qualified Name:     eik
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */