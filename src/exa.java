import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.view.View;

public final class exa
{
  private static final Uri a = Uri.parse("content://com.google.android.gsf.gservices");
  private static final String[] b = { "android_id" };
  private static int c = -1;
  private static int d = -1;
  private static int e = -1;
  
  public static int a(Context paramContext)
  {
    if (e == -1)
    {
      paramContext = paramContext.getResources();
      i = paramContext.getIdentifier("status_bar_height", "dimen", "android");
      if (i <= 0) {
        break label41;
      }
    }
    label41:
    for (int i = paramContext.getDimensionPixelSize(i);; i = 0)
    {
      e = i;
      return e;
    }
  }
  
  private static int a(Resources paramResources, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "navigation_bar_height";; str = "navigation_bar_height_landscape")
    {
      int i = paramResources.getIdentifier(str, "dimen", "android");
      if (i <= 0) {
        break;
      }
      return paramResources.getDimensionPixelSize(i);
    }
    return 0;
  }
  
  public static int a(View paramView, Context paramContext)
  {
    if (((paramView.getSystemUiVisibility() & 0x2) != 0) || ((!c(paramContext)) && (!ewz.c()))) {
      return 0;
    }
    return b(paramContext);
  }
  
  /* Error */
  public static long a()
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore_2
    //   2: getstatic 91	aal:oJ	Landroid/content/Context;
    //   5: invokevirtual 95	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   8: getstatic 24	exa:a	Landroid/net/Uri;
    //   11: aconst_null
    //   12: aconst_null
    //   13: getstatic 30	exa:b	[Ljava/lang/String;
    //   16: aconst_null
    //   17: invokevirtual 101	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   20: astore 5
    //   22: lload_2
    //   23: lstore_0
    //   24: aload 5
    //   26: ifnull +36 -> 62
    //   29: lload_2
    //   30: lstore_0
    //   31: aload 5
    //   33: invokeinterface 106 1 0
    //   38: ifeq +24 -> 62
    //   41: aload 5
    //   43: iconst_1
    //   44: invokeinterface 110 2 0
    //   49: astore 4
    //   51: aload 4
    //   53: ifnull +23 -> 76
    //   56: aload 4
    //   58: invokestatic 116	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   61: lstore_0
    //   62: aload 5
    //   64: ifnull +10 -> 74
    //   67: aload 5
    //   69: invokeinterface 119 1 0
    //   74: lload_0
    //   75: lreturn
    //   76: lconst_0
    //   77: lstore_0
    //   78: goto -16 -> 62
    //   81: astore 4
    //   83: aconst_null
    //   84: astore 5
    //   86: aload 5
    //   88: ifnull +10 -> 98
    //   91: aload 5
    //   93: invokeinterface 119 1 0
    //   98: aload 4
    //   100: athrow
    //   101: astore 4
    //   103: lload_2
    //   104: lstore_0
    //   105: goto -43 -> 62
    //   108: astore 4
    //   110: goto -24 -> 86
    // Local variable table:
    //   start	length	slot	name	signature
    //   23	82	0	l1	long
    //   1	103	2	l2	long
    //   49	8	4	str	String
    //   81	18	4	localObject1	Object
    //   101	1	4	localNumberFormatException	NumberFormatException
    //   108	1	4	localObject2	Object
    //   20	72	5	localCursor	android.database.Cursor
    // Exception table:
    //   from	to	target	type
    //   2	22	81	finally
    //   56	62	101	java/lang/NumberFormatException
    //   31	51	108	finally
    //   56	62	108	finally
  }
  
  public static void a(View paramView)
  {
    int j = paramView.getSystemUiVisibility() | 0x1 | 0x4 | 0x400;
    int i = j;
    if (Build.VERSION.SDK_INT >= 19) {
      i = j | 0x2 | 0x200 | 0x800;
    }
    paramView.setSystemUiVisibility(i);
  }
  
  public static void a(View paramView, boolean paramBoolean)
  {
    int i = paramView.getSystemUiVisibility() & 0xFFFFFFFE & 0xFFFFFFFB;
    int j;
    if (paramBoolean)
    {
      i |= 0x400;
      j = i;
      if (Build.VERSION.SDK_INT >= 19)
      {
        i &= 0xFFFFFFFD;
        if (!paramBoolean) {
          break label67;
        }
        i |= 0x200;
      }
    }
    for (;;)
    {
      j = i & 0xF7FF;
      paramView.setSystemUiVisibility(j);
      return;
      i &= 0xFBFF;
      break;
      label67:
      i &= 0xFDFF;
    }
  }
  
  public static int b(Context paramContext)
  {
    int i = 0;
    if ((c == -1) || (d == -1))
    {
      Resources localResources = paramContext.getResources();
      c = a(localResources, true);
      if (ewz.c()) {
        i = a(localResources, false);
      }
      d = i;
    }
    if (c(paramContext)) {
      return c;
    }
    return d;
  }
  
  public static String b()
  {
    Object localObject = (TelephonyManager)aal.oJ.getSystemService("phone");
    if (localObject != null) {
      try
      {
        localObject = ((TelephonyManager)localObject).getNetworkOperator();
        return (String)localObject;
      }
      catch (Exception localException)
      {
        return "none";
      }
    }
    return "none";
  }
  
  public static boolean c(Context paramContext)
  {
    return getResourcesgetConfigurationorientation == 1;
  }
  
  public static boolean d(Context paramContext)
  {
    return getResourcesgetConfigurationkeyboard == 1;
  }
}

/* Location:
 * Qualified Name:     exa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */