import android.content.Context;
import android.os.Bundle;

final class ibs
  extends htu
{
  private final hql a;
  
  public ibs(String paramString, hql paramhql)
  {
    super(paramString);
    a = paramhql;
  }
  
  protected hus a(Context paramContext)
  {
    try
    {
      Object localObject = a.a();
      paramContext = new String[localObject.length];
      int i = 0;
      while (i < paramContext.length)
      {
        paramContext[i] = localObject[i].a();
        i += 1;
      }
      localObject = new hus(true);
      ((hus)localObject).d().putStringArray("account_name_array", paramContext);
      return (hus)localObject;
    }
    catch (hqn paramContext) {}
    return new hus(false);
  }
}

/* Location:
 * Qualified Name:     ibs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */