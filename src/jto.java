import android.content.DialogInterface.OnClickListener;

public final class jto
{
  final jts a;
  
  jto(jts paramjts)
  {
    a = paramjts;
  }
  
  public DialogInterface.OnClickListener a(DialogInterface.OnClickListener paramOnClickListener, String paramString)
  {
    return new jtp(this, paramString, paramOnClickListener);
  }
  
  public void a(Class<?> paramClass, String paramString)
  {
    jts localjts = a;
    paramClass = String.valueOf(paramClass.getSimpleName());
    localjts.a(String.valueOf(paramClass).length() + 2 + String.valueOf(paramString).length() + paramClass + ": " + paramString);
  }
  
  public void a(String paramString)
  {
    a.a(paramString);
  }
  
  void b(String paramString)
  {
    a.a(paramString);
  }
}

/* Location:
 * Qualified Name:     jto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */