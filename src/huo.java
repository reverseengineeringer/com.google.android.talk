import android.content.Context;

public abstract class huo
{
  public final Context a;
  public final bg b;
  public boolean c;
  
  public huo(Context paramContext, bg parambg)
  {
    a = paramContext;
    b = parambg;
  }
  
  public void a(htu paramhtu)
  {
    b(paramhtu);
  }
  
  public abstract void a(String paramString);
  
  public abstract void a(String paramString1, String paramString2, String paramString3, boolean paramBoolean);
  
  public void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public boolean a()
  {
    return c;
  }
  
  public abstract boolean a(hus paramhus);
  
  public void b(htu paramhtu)
  {
    String str2 = paramhtu.b(a);
    String str1 = str2;
    if (str2 == null) {
      str1 = null;
    }
    a(str1, null, paramhtu.h(), false);
  }
}

/* Location:
 * Qualified Name:     huo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */