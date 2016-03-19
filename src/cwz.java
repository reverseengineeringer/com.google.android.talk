import android.database.Cursor;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public final class cwz
{
  public final String a;
  public final String b;
  public final boolean c;
  public final int d;
  public final int e;
  public final String f;
  public final long g;
  public final List<cya> h;
  public int i;
  public final boolean j;
  public final String k;
  public final int l;
  public final long m;
  
  public cwz(String paramString1, String paramString2, int paramInt1, String paramString3, long paramLong1, boolean paramBoolean, int paramInt2, String paramString4, int paramInt3, long paramLong2)
  {
    a = paramString1;
    b = paramString2;
    e = paramInt1;
    if (e == 2) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      d = paramInt2;
      f = paramString3;
      g = paramLong1;
      h = new ArrayList();
      i = 0;
      j = paramBoolean;
      k = paramString4;
      l = paramInt3;
      m = paramLong2;
      if (cxt.b)
      {
        paramString1 = a;
        paramString2 = f;
        new StringBuilder(String.valueOf(paramString1).length() + 20 + String.valueOf(paramString2).length()).append("Conversation Line: ").append(paramString1).append(" ").append(paramString2);
      }
      return;
    }
  }
  
  static String a(Cursor paramCursor, int paramInt1, int paramInt2)
  {
    String str2 = paramCursor.getString(paramInt1);
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = paramCursor.getString(paramInt2);
    }
    return str1;
  }
  
  public eku a()
  {
    if (h.size() > 0) {
      return h.get(0)).p;
    }
    return eku.b;
  }
  
  boolean b()
  {
    return l == 1;
  }
}

/* Location:
 * Qualified Name:     cwz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */