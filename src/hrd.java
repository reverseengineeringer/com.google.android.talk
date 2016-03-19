import android.content.SharedPreferences.Editor;

public final class hrd
  implements hrb
{
  int a;
  
  public hrd(int paramInt)
  {
    a = paramInt;
  }
  
  public Object a(Object paramObject)
  {
    return Integer.valueOf(a);
  }
  
  public void a(SharedPreferences.Editor paramEditor, String paramString)
  {
    paramEditor.putInt(paramString, a);
  }
}

/* Location:
 * Qualified Name:     hrd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */