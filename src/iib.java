import android.accounts.AuthenticatorException;
import android.content.Context;
import android.text.TextUtils;

public final class iib
{
  final String a;
  final gwi b;
  final if<String, iic> c = new if();
  
  iib(String paramString, gwi paramgwi)
  {
    a = paramString;
    b = paramgwi;
  }
  
  private iic a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    gwk localgwk = (gwk)ilh.a(paramContext, gwk.class);
    if (paramBoolean) {
      paramContext = b.a(paramContext, paramString1, paramString2);
    }
    for (;;)
    {
      return iic.a(paramContext, System.currentTimeMillis());
      try
      {
        paramContext = localgwk.a(paramString1, paramString2);
      }
      catch (gwj paramContext)
      {
        throw new AuthenticatorException("Recoverable error", paramContext);
      }
    }
  }
  
  public iic a(Context paramContext, String paramString)
  {
    Object localObject = ((ihv)ilh.a(paramContext, ihv.class)).a();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      paramContext = iic.a((String)localObject, System.currentTimeMillis());
    }
    label107:
    do
    {
      return paramContext;
      try
      {
        localObject = (iic)c.get(paramString);
        if (localObject == null) {
          break label107;
        }
        long l = ((iic)localObject).b();
        if (System.currentTimeMillis() - l <= iid.a) {
          return (iic)localObject;
        }
      }
      finally {}
      c.remove(paramString);
      b.a(paramContext, ((iic)localObject).a());
      boolean bool = ilh.a(paramContext, "token_with_notification", true);
      localObject = a(paramContext, paramString, a, bool);
      paramContext = (Context)localObject;
    } while (localObject == null);
    try
    {
      c.put(paramString, localObject);
      return (iic)localObject;
    }
    finally {}
  }
  
  public void b(Context paramContext, String paramString)
  {
    if (!TextUtils.isEmpty(((ihv)ilh.a(paramContext, ihv.class)).a())) {
      return;
    }
    try
    {
      iic localiic = (iic)c.remove(paramString);
      if (localiic != null)
      {
        b.a(paramContext, localiic.a());
        return;
      }
    }
    finally {}
    paramString = b.a(paramContext, paramString, a);
    b.a(paramContext, paramString);
  }
}

/* Location:
 * Qualified Name:     iib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */