import android.content.SharedPreferences.Editor;

public final class hrc
  implements hrb
{
  float a;
  
  public hrc(float paramFloat)
  {
    a = paramFloat;
  }
  
  public Object a(Object paramObject)
  {
    return Float.valueOf(a);
  }
  
  public void a(SharedPreferences.Editor paramEditor, String paramString)
  {
    paramEditor.putFloat(paramString, a);
  }
}

/* Location:
 * Qualified Name:     hrc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */