import android.content.Context;
import android.database.Cursor;
import android.os.Build.VERSION;
import android.text.TextUtils;

public final class gnv
{
  public static final String[] a = { "contact_id", "display_name", "mimetype", "data1", "data2", "data3" };
  private static boolean b = false;
  private static boolean c = false;
  
  public static final String a()
  {
    if (Build.VERSION.SDK_INT < 14) {
      return null;
    }
    return "((data_set IS NULL) OR (account_type='com.google' AND data_set!='plus'))";
  }
  
  public static final void a(gpm paramgpm)
  {
    paramgpm.b("(mimetype IN ('vnd.android.cursor.item/email_v2','vnd.android.cursor.item/phone_v2'))");
  }
  
  public static final void a(gpm paramgpm, boolean paramBoolean, Context paramContext)
  {
    if (!paramBoolean)
    {
      if (Build.VERSION.SDK_INT < 11) {
        break label42;
      }
      if (a(paramContext)) {
        paramgpm.b("(contact_id IN (SELECT _id FROM default_directory))");
      }
    }
    for (;;)
    {
      paramContext = a();
      if (!TextUtils.isEmpty(paramContext)) {
        paramgpm.b(paramContext);
      }
      return;
      label42:
      paramgpm.b("(in_visible_group=1)");
    }
  }
  
  /* Error */
  private static final boolean a(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 31	gnv:c	Z
    //   6: ifeq +12 -> 18
    //   9: getstatic 29	gnv:b	Z
    //   12: istore_1
    //   13: ldc 2
    //   15: monitorexit
    //   16: iload_1
    //   17: ireturn
    //   18: iconst_1
    //   19: putstatic 31	gnv:c	Z
    //   22: aload_0
    //   23: invokevirtual 73	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   26: getstatic 79	android/provider/ContactsContract$Groups:CONTENT_URI	Landroid/net/Uri;
    //   29: aconst_null
    //   30: ldc 81
    //   32: aconst_null
    //   33: aconst_null
    //   34: invokevirtual 87	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   37: astore_2
    //   38: aload_2
    //   39: ifnull +9 -> 48
    //   42: aload_2
    //   43: astore_0
    //   44: iconst_1
    //   45: putstatic 29	gnv:b	Z
    //   48: aload_2
    //   49: ifnull +9 -> 58
    //   52: aload_2
    //   53: invokeinterface 92 1 0
    //   58: getstatic 29	gnv:b	Z
    //   61: istore_1
    //   62: goto -49 -> 13
    //   65: astore_3
    //   66: aconst_null
    //   67: astore_2
    //   68: aload_2
    //   69: astore_0
    //   70: iconst_5
    //   71: invokestatic 98	aal:q	(I)Z
    //   74: pop
    //   75: aload_2
    //   76: astore_0
    //   77: aload_3
    //   78: invokevirtual 101	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   81: pop
    //   82: aload_2
    //   83: astore_0
    //   84: iconst_3
    //   85: invokestatic 98	aal:q	(I)Z
    //   88: pop
    //   89: aload_2
    //   90: ifnull -32 -> 58
    //   93: aload_2
    //   94: invokeinterface 92 1 0
    //   99: goto -41 -> 58
    //   102: astore_0
    //   103: ldc 2
    //   105: monitorexit
    //   106: aload_0
    //   107: athrow
    //   108: astore_2
    //   109: aconst_null
    //   110: astore_0
    //   111: aload_0
    //   112: ifnull +9 -> 121
    //   115: aload_0
    //   116: invokeinterface 92 1 0
    //   121: aload_2
    //   122: athrow
    //   123: astore_2
    //   124: goto -13 -> 111
    //   127: astore_3
    //   128: goto -60 -> 68
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	paramContext	Context
    //   12	50	1	bool	boolean
    //   37	57	2	localCursor	Cursor
    //   108	14	2	localObject1	Object
    //   123	1	2	localObject2	Object
    //   65	13	3	localException1	Exception
    //   127	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   22	38	65	java/lang/Exception
    //   3	13	102	finally
    //   18	22	102	finally
    //   52	58	102	finally
    //   58	62	102	finally
    //   93	99	102	finally
    //   115	121	102	finally
    //   121	123	102	finally
    //   22	38	108	finally
    //   44	48	123	finally
    //   70	75	123	finally
    //   77	82	123	finally
    //   84	89	123	finally
    //   44	48	127	java/lang/Exception
  }
  
  public static boolean a(Cursor paramCursor)
  {
    if (paramCursor.isAfterLast()) {}
    long l;
    do
    {
      while (!paramCursor.moveToNext())
      {
        return false;
        l = paramCursor.getLong(0);
      }
    } while (l == paramCursor.getLong(0));
    return true;
  }
  
  public static boolean b(Cursor paramCursor)
  {
    boolean bool;
    if (!paramCursor.isBeforeFirst())
    {
      bool = true;
      aal.b(bool);
      if (!paramCursor.isAfterLast()) {
        break label31;
      }
    }
    label31:
    long l;
    do
    {
      return false;
      bool = false;
      break;
      l = paramCursor.getLong(0);
    } while ((!paramCursor.moveToNext()) || (l != paramCursor.getLong(0)));
    return true;
  }
}

/* Location:
 * Qualified Name:     gnv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */