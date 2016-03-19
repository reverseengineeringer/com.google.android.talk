import android.database.Cursor;
import android.database.sqlite.SQLiteException;

final class eoe
  implements eod
{
  private Cursor a;
  private final bfz b;
  
  public eoe(bfz parambfz, long paramLong1, long paramLong2)
  {
    b = parambfz;
    try
    {
      a = b.e().a("messages", eog.a, eny.a(eny.d, "timestamp", paramLong1 * 1000L, 1000L * paramLong2), null, "timestamp DESC");
      return;
    }
    catch (SQLiteException parambfz)
    {
      int i = b.g().g();
      String str = String.valueOf(parambfz);
      ezi.d("Babel_SMS", String.valueOf(str).length() + 60 + "SmsSyncManager A#" + i + ": failed to query local sms/mms " + str, parambfz);
      throw parambfz;
    }
  }
  
  public ems a()
  {
    Cursor localCursor;
    if ((a != null) && (a.moveToNext()))
    {
      localCursor = a;
      if (localCursor != null) {}
    }
    else
    {
      return null;
    }
    return new eof(localCursor.getLong(0), localCursor.getInt(3), eny.a(eny.a(localCursor.getString(2))), localCursor.getLong(1));
  }
  
  public void b()
  {
    if (a != null)
    {
      a.close();
      a = null;
    }
  }
}

/* Location:
 * Qualified Name:     eoe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */