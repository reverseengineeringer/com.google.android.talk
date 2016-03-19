import android.util.SparseArray;
import java.io.UnsupportedEncodingException;

public final class ade
{
  static final if<String, Integer> a;
  private static final int[] b;
  private static final String[] c;
  private static final SparseArray<String> d;
  
  static
  {
    int i = 0;
    b = new int[] { 0, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 17, 18, 38, 39, 40, 106, 113, 114, 2025, 2026, 1000, 1015, 2085 };
    c = new String[] { "*", "us-ascii", "iso-8859-1", "iso-8859-2", "iso-8859-3", "iso-8859-4", "iso-8859-5", "iso-8859-6", "iso-8859-7", "iso-8859-8", "iso-8859-9", "shift_JIS", "euc-jp", "euc-kr", "iso-2022-jp", "iso-2022-jp-2", "utf-8", "gbk", "gb18030", "gb2312", "big5", "iso-10646-ucs-2", "utf-16", "hz-gb-2312" };
    d = new SparseArray();
    a = new if();
    int j = b.length;
    while (i <= j - 1)
    {
      d.put(b[i], c[i]);
      a.put(c[i], Integer.valueOf(b[i]));
      i += 1;
    }
  }
  
  public static String a(int paramInt)
  {
    String str = (String)d.get(paramInt);
    if (str == null) {
      throw new UnsupportedEncodingException();
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     ade
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */