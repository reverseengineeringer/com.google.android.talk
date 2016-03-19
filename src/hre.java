import android.content.SharedPreferences.Editor;

public final class hre
  implements hrb
{
  long a;
  
  public hre(long paramLong)
  {
    a = paramLong;
  }
  
  public Object a(Object paramObject)
  {
    return Long.valueOf(a);
  }
  
  public void a(SharedPreferences.Editor paramEditor, String paramString)
  {
    paramEditor.putLong(paramString, a);
  }
}

/* Location:
 * Qualified Name:     hre
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */