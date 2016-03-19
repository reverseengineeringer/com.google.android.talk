import android.database.sqlite.SQLiteDatabase;

final class azz
  implements hvv
{
  private static final String[] a = { "client_callerid_settings" };
  
  public String a()
  {
    return "caller_id";
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE client_callerid_settings (phone_number_e164 TEXT PRIMARY KEY,is_default INT,refreshed_at INT,client_callerid_setting BLOB);");
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    if (ezi.a("Babel_CalleridDatabase", 3)) {
      ezi.a("Babel_CalleridDatabase", 45 + "Upgrade database: " + paramInt1 + " --> 1", new Object[0]);
    }
    switch (paramInt1)
    {
    default: 
      ezi.d("Babel_CalleridDatabase", "db upgrade not supported", new Object[0]);
      return false;
    }
    ezi.c("Babel_CalleridDatabase", 52 + "db upgrade from " + paramInt1 + " to 1" + " succeeded", new Object[0]);
    return true;
  }
  
  public String[] b()
  {
    return a;
  }
  
  public String[] c()
  {
    return new String[0];
  }
}

/* Location:
 * Qualified Name:     azz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */