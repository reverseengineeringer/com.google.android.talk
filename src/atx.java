import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class atx
{
  private final Context a;
  
  public atx(Context paramContext)
  {
    a = paramContext;
  }
  
  /* Error */
  private static atw a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 27	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   4: astore_1
    //   5: aload_1
    //   6: invokevirtual 31	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   9: astore_0
    //   10: aload_0
    //   11: instanceof 33
    //   14: ifne +101 -> 115
    //   17: aload_0
    //   18: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   21: astore_0
    //   22: new 41	java/lang/RuntimeException
    //   25: dup
    //   26: new 43	java/lang/StringBuilder
    //   29: dup
    //   30: aload_0
    //   31: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   34: invokevirtual 47	java/lang/String:length	()I
    //   37: bipush 44
    //   39: iadd
    //   40: invokespecial 50	java/lang/StringBuilder:<init>	(I)V
    //   43: ldc 52
    //   45: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: aload_0
    //   49: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 63	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: astore_0
    //   60: new 65	java/lang/IllegalArgumentException
    //   63: dup
    //   64: ldc 67
    //   66: aload_0
    //   67: invokespecial 70	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   70: athrow
    //   71: astore_0
    //   72: aload_1
    //   73: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   76: astore_1
    //   77: new 41	java/lang/RuntimeException
    //   80: dup
    //   81: new 43	java/lang/StringBuilder
    //   84: dup
    //   85: aload_1
    //   86: invokestatic 39	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   89: invokevirtual 47	java/lang/String:length	()I
    //   92: bipush 53
    //   94: iadd
    //   95: invokespecial 50	java/lang/StringBuilder:<init>	(I)V
    //   98: ldc 72
    //   100: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: aload_1
    //   104: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: aload_0
    //   111: invokespecial 73	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   114: athrow
    //   115: aload_0
    //   116: checkcast 33	atw
    //   119: areturn
    //   120: astore_0
    //   121: goto -49 -> 72
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	124	0	paramString	String
    //   4	100	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	5	59	java/lang/ClassNotFoundException
    //   5	10	71	java/lang/InstantiationException
    //   5	10	120	java/lang/IllegalAccessException
  }
  
  public List<atw> a()
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      ApplicationInfo localApplicationInfo = a.getPackageManager().getApplicationInfo(a.getPackageName(), 128);
      if (metaData != null)
      {
        Iterator localIterator = metaData.keySet().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if ("GlideModule".equals(metaData.get(str))) {
            localArrayList.add(a(str));
          }
        }
      }
      return localNameNotFoundException;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new RuntimeException("Unable to find metadata to parse GlideModules", localNameNotFoundException);
    }
  }
}

/* Location:
 * Qualified Name:     atx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */