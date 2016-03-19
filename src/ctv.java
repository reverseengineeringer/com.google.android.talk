import android.database.Cursor;
import android.text.TextUtils;

class ctv
{
  public String a;
  public String b;
  public String c;
  public String d;
  public boolean e;
  public boolean f;
  public String g;
  public String h;
  public String i;
  public long j;
  
  protected static void a(Cursor paramCursor, ctv paramctv)
  {
    a = paramCursor.getString(3);
    b = paramCursor.getString(4);
    c = paramCursor.getString(5);
    d = paramCursor.getString(6);
    f = ezc.d(paramCursor.getInt(7));
    e = ezc.d(paramCursor.getInt(8));
    g = paramCursor.getString(9);
    h = paramCursor.getString(10);
    i = paramCursor.getString(11);
    j = paramCursor.getLong(12);
  }
  
  boolean a()
  {
    return (a == null) || (TextUtils.isEmpty(a.trim()));
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          return bool1;
                          bool1 = bool2;
                        } while (paramObject == null);
                        bool1 = bool2;
                      } while (getClass() != paramObject.getClass());
                      paramObject = (ctv)paramObject;
                      bool1 = bool2;
                    } while (e != e);
                    bool1 = bool2;
                  } while (f != f);
                  bool1 = bool2;
                } while (j != j);
                bool1 = bool2;
              } while (!a.equals(a));
              bool1 = bool2;
            } while (!aal.c(b, b));
            bool1 = bool2;
          } while (!aal.c(c, c));
          bool1 = bool2;
        } while (!aal.c(d, d));
        bool1 = bool2;
      } while (!aal.c(g, g));
      bool1 = bool2;
    } while (!aal.c(h, h));
    return aal.c(i, i);
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
}

/* Location:
 * Qualified Name:     ctv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */