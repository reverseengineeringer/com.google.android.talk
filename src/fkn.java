import android.text.TextUtils;
import com.google.android.gms.common.data.DataHolder;
import java.util.Arrays;

public class fkn
  implements gpt
{
  public final DataHolder a;
  public int b;
  private int c;
  
  public fkn(DataHolder paramDataHolder, int paramInt)
  {
    a = ((DataHolder)aal.d(paramDataHolder));
    a(paramInt);
  }
  
  public fkn(DataHolder paramDataHolder, int paramInt, byte paramByte)
  {
    this(paramDataHolder, paramInt);
  }
  
  public boolean O_()
  {
    return !a.e();
  }
  
  public String Q_()
  {
    return b("page_gaia_id");
  }
  
  public boolean S_()
  {
    return Q_() != null;
  }
  
  public String T_()
  {
    return gos.a.a(b("avatar"));
  }
  
  public String V_()
  {
    String str2 = b("display_name");
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = a();
    }
    return str1;
  }
  
  public int a(String paramString)
  {
    return a.a(paramString, b, c);
  }
  
  public String a()
  {
    return b("account_name");
  }
  
  protected void a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < a.d())) {}
    for (boolean bool = true;; bool = false)
    {
      aal.a(bool);
      b = paramInt;
      c = a.a(b);
      return;
    }
  }
  
  public String b(String paramString)
  {
    return a.b(paramString, b, c);
  }
  
  public byte[] c(String paramString)
  {
    return a.c(paramString, b, c);
  }
  
  @Deprecated
  public String e()
  {
    return Q_();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof fkn))
    {
      paramObject = (fkn)paramObject;
      bool1 = bool2;
      if (aal.a(Integer.valueOf(b), Integer.valueOf(b)))
      {
        bool1 = bool2;
        if (aal.a(Integer.valueOf(c), Integer.valueOf(c)))
        {
          bool1 = bool2;
          if (a == a) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public String g()
  {
    return gos.a.a(b("cover_photo_url"));
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(b), Integer.valueOf(c), a });
  }
}

/* Location:
 * Qualified Name:     fkn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */