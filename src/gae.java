import android.util.Log;

final class gae
{
  final boolean a;
  private final String b;
  private final int c;
  
  protected gae(String paramString, int paramInt, boolean paramBoolean)
  {
    b = paramString;
    c = paramInt;
    a = false;
  }
  
  protected void a(String paramString)
  {
    Log.println(c, b, paramString);
  }
  
  protected boolean a()
  {
    return Log.isLoggable(b, c);
  }
}

/* Location:
 * Qualified Name:     gae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */