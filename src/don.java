import android.text.TextUtils;
import java.util.Locale;

public final class don
{
  private static final boolean a = false;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public static jxw a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    jxw localjxw = new jxw();
    a = paramString;
    return localjxw;
  }
  
  @Deprecated
  static kdo a(String paramString, int paramInt1, int paramInt2, fak paramfak)
  {
    return a(null, false, paramString, paramInt1, paramInt2, paramfak);
  }
  
  @Deprecated
  static kdo a(jxk paramjxk, boolean paramBoolean, String paramString, int paramInt1, int paramInt2, fak paramfak)
  {
    return a(a(paramjxk, paramBoolean, paramString, paramInt1, paramfak), paramInt2);
  }
  
  @Deprecated
  static kdo a(jxk paramjxk, boolean paramBoolean, String paramString, int paramInt, fak paramfak)
  {
    kdo localkdo = new kdo();
    a = paramfak.e();
    long l = dwt.a().b();
    if ((l != 0L) || (!TextUtils.isEmpty(paramString)))
    {
      b = new jxj();
      if (l != 0L)
      {
        b.b = Long.toString(l);
        b.c = Long.toString(l);
      }
      if (!TextUtils.isEmpty(paramString)) {
        b.a = paramString;
      }
    }
    if (paramjxk != null) {
      c = paramjxk;
    }
    if (paramBoolean) {
      d = Locale.getDefault().toString();
    }
    f = Integer.valueOf(paramInt);
    return localkdo;
  }
  
  static kdo a(kdo paramkdo, int paramInt)
  {
    if ((paramInt == -1) || (!dvp.o.b(paramInt))) {}
    long l1;
    long l2;
    do
    {
      return paramkdo;
      duu localduu = new duu(aal.oJ);
      l1 = localduu.a(paramInt);
      l2 = localduu.b(paramInt);
    } while ((l1 == -1L) || (l2 == -1L));
    i = new jxc();
    i.c = Long.valueOf(l1);
    i.d = Long.valueOf(l2);
    return paramkdo;
  }
}

/* Location:
 * Qualified Name:     don
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */