import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import java.util.HashSet;
import java.util.Set;

public abstract class imc<T extends ima>
  implements ilq, ilu, iow, ioz
{
  public final iog a;
  private Set<String> b = new HashSet();
  private final Class c;
  private imb<T> d;
  
  public imc(iog paramiog, Class paramClass)
  {
    a = paramiog;
    c = paramClass;
    paramiog.a(this);
  }
  
  public abstract imb<T> a(Context paramContext);
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      paramContext = paramBundle.getStringArray("extra_auto_bound_objects");
      int j = paramContext.length;
      int i = 0;
      for (;;)
      {
        if (i < j)
        {
          paramBundle = paramContext[i];
          try
          {
            paramilh.a(Class.forName(paramBundle));
            i += 1;
          }
          catch (ClassNotFoundException paramBundle)
          {
            for (;;)
            {
              Log.e("BaseAutoBinderModule", "Autobound class not found upon reconstruction", paramBundle);
            }
          }
        }
      }
    }
  }
  
  /* Error */
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 37	imc:c	Ljava/lang/Class;
    //   6: astore 4
    //   8: aload_2
    //   9: aload 4
    //   11: if_acmpne +6 -> 17
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: getfield 79	imc:d	Limb;
    //   21: ifnonnull +12 -> 33
    //   24: aload_0
    //   25: aload_0
    //   26: aload_1
    //   27: invokevirtual 81	imc:a	(Landroid/content/Context;)Limb;
    //   30: putfield 79	imc:d	Limb;
    //   33: aload_2
    //   34: invokevirtual 85	java/lang/Class:getName	()Ljava/lang/String;
    //   37: astore_1
    //   38: aload_0
    //   39: getfield 79	imc:d	Limb;
    //   42: aload_2
    //   43: invokevirtual 90	imb:a	(Ljava/lang/Class;)Ljava/util/List;
    //   46: astore_2
    //   47: aload_2
    //   48: ifnull -34 -> 14
    //   51: aload_0
    //   52: getfield 33	imc:b	Ljava/util/Set;
    //   55: aload_1
    //   56: invokeinterface 96 2 0
    //   61: pop
    //   62: aload_2
    //   63: invokeinterface 102 1 0
    //   68: astore_1
    //   69: aload_1
    //   70: invokeinterface 108 1 0
    //   75: ifeq -61 -> 14
    //   78: aload_0
    //   79: aload_1
    //   80: invokeinterface 112 1 0
    //   85: checkcast 114	ima
    //   88: aload_0
    //   89: getfield 35	imc:a	Liog;
    //   92: aload_3
    //   93: invokevirtual 117	imc:a	(Lima;Liog;Lilh;)V
    //   96: goto -27 -> 69
    //   99: astore_1
    //   100: aload_0
    //   101: monitorexit
    //   102: aload_1
    //   103: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	104	0	this	imc
    //   0	104	1	paramContext	Context
    //   0	104	2	paramClass	Class<?>
    //   0	104	3	paramilh	ilh
    //   6	4	4	localClass	Class
    // Exception table:
    //   from	to	target	type
    //   2	8	99	finally
    //   17	33	99	finally
    //   33	47	99	finally
    //   51	69	99	finally
    //   69	96	99	finally
  }
  
  public abstract void a(T paramT, iog paramiog, ilh paramilh);
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putStringArray("extra_auto_bound_objects", (String[])b.toArray(new String[b.size()]));
  }
}

/* Location:
 * Qualified Name:     imc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */