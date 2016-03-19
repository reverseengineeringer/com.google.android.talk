import android.text.TextUtils;

public final class gpm
{
  private final StringBuilder a = new StringBuilder();
  private boolean b = false;
  
  public void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    a.append(paramString);
  }
  
  public void b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    if (b) {
      a.append(" AND ");
    }
    a.append(paramString);
    b = true;
  }
  
  public String toString()
  {
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     gpm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */