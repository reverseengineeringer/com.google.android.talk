import android.database.Cursor;
import android.database.CursorWrapper;
import android.text.TextUtils;

public final class biq
  extends CursorWrapper
  implements bzh
{
  private byu a;
  
  public biq(Cursor paramCursor)
  {
    super(paramCursor);
  }
  
  public gpr a()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    String str;
    if (a != null)
    {
      localObject1 = localObject2;
      if (e() != 1)
      {
        localObject1 = getString(2);
        str = ezm.k(getString(1));
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          break label54;
        }
        localObject1 = a.a((String)localObject1);
      }
    }
    label54:
    do
    {
      return (gpr)localObject1;
      localObject1 = localObject2;
    } while (TextUtils.isEmpty(str));
    return a.b(str);
  }
  
  public void a(byu parambyu)
  {
    a = parambyu;
  }
  
  public bzq b()
  {
    return new bzq(new bzv(getString(1), ""));
  }
  
  public bzi c()
  {
    boolean bool = true;
    String str1 = getString(0);
    String str2 = getString(1);
    long l = getLong(3);
    int i = getInt(4);
    String str3 = getString(6);
    if (getInt(7) != 0) {}
    for (;;)
    {
      return new bzi(str1, str2, l, i, str3, bool);
      bool = false;
    }
  }
  
  public int d()
  {
    return 0;
  }
  
  public int e()
  {
    return getInt(5);
  }
  
  public boolean f()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     biq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */