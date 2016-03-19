import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Field;

public final class iil
{
  private static final if<Class<? extends lyi>, Field> a = new if();
  
  private static <M extends lyi> Field a(M paramM)
  {
    Class localClass = paramM.getClass();
    synchronized (a)
    {
      Field localField = (Field)a.get(localClass);
      paramM = localField;
      if (localField == null)
      {
        paramM = localClass.getField("apiHeader");
        a.put(localClass, paramM);
      }
      return paramM;
    }
  }
  
  public static <RQ extends lyi> void a(boolean paramBoolean)
  {
    Object localObject2 = null;
    mqy localmqy = new mqy();
    Object localObject3 = new mrh();
    a = Integer.valueOf(aal.J(paramBoolean));
    b = Integer.valueOf(aal.K(paramBoolean));
    c = Integer.valueOf(aal.L(paramBoolean));
    j = Integer.valueOf(aal.I(paramBoolean));
    p = ((mrh)localObject3);
    i = ((String)localObject1);
    Object localObject1 = (ihv)ilh.b(paramBoolean, ihv.class);
    if (localObject1 != null)
    {
      localObject1 = ((ihv)localObject1).b();
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        m = ((String)localObject1);
      }
      localObject1 = new mdy();
      b = ilh.b(paramBoolean, "com.google.android.libraries.social.appid");
      if (!aal.N(paramBoolean)) {
        break label233;
      }
    }
    label233:
    for (a = 3;; a = 2)
    {
      c = 2;
      int i;
      d = i;
      n = ((mdy)localObject1);
      try
      {
        lyi locallyi;
        localObject3 = a(locallyi);
        iyb localiyb = new iyb();
        b = localmqy;
        localObject1 = localObject2;
        if (paramBoolean != null)
        {
          paramBoolean = (hvt)ilh.b(paramBoolean, hvt.class);
          localObject1 = localObject2;
          if (paramBoolean != null) {
            localObject1 = paramBoolean.a();
          }
        }
        d = ((String)localObject1);
        ((Field)localObject3).set(locallyi, localiyb);
        return;
      }
      catch (NoSuchFieldException paramBoolean)
      {
        Log.e("PlusiUtils", "Failed to find apiHeader field on an http request, this should not happen", paramBoolean);
        return;
      }
      catch (IllegalAccessException paramBoolean)
      {
        Log.e("PlusiUtils", "apiHeader field on http request was not accessible, this should not happen", paramBoolean);
      }
      localObject1 = null;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     iil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */