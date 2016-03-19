import android.content.SharedPreferences.Editor;

public final class hra
  implements hrb
{
  boolean a;
  
  public hra(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public Object a(Object paramObject)
  {
    return Boolean.valueOf(a);
  }
  
  public void a(SharedPreferences.Editor paramEditor, String paramString)
  {
    paramEditor.putBoolean(paramString, a);
  }
}

/* Location:
 * Qualified Name:     hra
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */