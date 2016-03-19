import android.database.Cursor;

public final class emt
{
  public static final String[] a = { "address", "charset" };
  public static final int b;
  public static final int c;
  private static int d = 0;
  
  static
  {
    d = 1;
    b = 0;
    int i = d;
    d = i + 1;
    c = i;
  }
  
  public static String a(Cursor paramCursor)
  {
    int i = paramCursor.getInt(c);
    return aal.a(aal.b(paramCursor.getString(b), 4), i);
  }
}

/* Location:
 * Qualified Name:     emt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */