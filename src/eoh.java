import android.database.Cursor;

final class eoh
  implements eod
{
  private Cursor a;
  private Cursor b;
  private ems c;
  private ems d;
  
  /* Error */
  public eoh(long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 19	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: aconst_null
    //   6: putfield 21	eoh:a	Landroid/database/Cursor;
    //   9: aload_0
    //   10: aconst_null
    //   11: putfield 23	eoh:b	Landroid/database/Cursor;
    //   14: getstatic 29	aal:oJ	Landroid/content/Context;
    //   17: astore 6
    //   19: aload 6
    //   21: invokevirtual 35	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   24: astore 7
    //   26: getstatic 41	eny:g	Landroid/net/Uri;
    //   29: astore 8
    //   31: invokestatic 47	enn:f	()Z
    //   34: ifeq +94 -> 128
    //   37: getstatic 52	emw:a	[Ljava/lang/String;
    //   40: astore 5
    //   42: aload_0
    //   43: aload 7
    //   45: aload 8
    //   47: aload 5
    //   49: getstatic 55	eny:b	Ljava/lang/String;
    //   52: ldc 57
    //   54: lload_1
    //   55: lload_3
    //   56: invokestatic 60	eny:a	(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;
    //   59: aconst_null
    //   60: ldc 62
    //   62: invokestatic 65	aal:a	(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   65: putfield 21	eoh:a	Landroid/database/Cursor;
    //   68: aload_0
    //   69: aload 6
    //   71: invokevirtual 35	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   74: getstatic 67	eny:f	Landroid/net/Uri;
    //   77: getstatic 70	emu:a	[Ljava/lang/String;
    //   80: getstatic 72	eny:c	Ljava/lang/String;
    //   83: ldc 57
    //   85: lload_1
    //   86: ldc2_w 73
    //   89: ldiv
    //   90: ldc2_w 75
    //   93: lload_3
    //   94: ladd
    //   95: ldc2_w 73
    //   98: ldiv
    //   99: invokestatic 60	eny:a	(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;
    //   102: aconst_null
    //   103: ldc 62
    //   105: invokestatic 65	aal:a	(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   108: putfield 23	eoh:b	Landroid/database/Cursor;
    //   111: aload_0
    //   112: aload_0
    //   113: invokespecial 79	eoh:c	()Lems;
    //   116: putfield 81	eoh:c	Lems;
    //   119: aload_0
    //   120: aload_0
    //   121: invokespecial 83	eoh:d	()Lems;
    //   124: putfield 85	eoh:d	Lems;
    //   127: return
    //   128: getstatic 87	emw:b	[Ljava/lang/String;
    //   131: astore 5
    //   133: goto -91 -> 42
    //   136: astore 5
    //   138: aload 5
    //   140: invokestatic 93	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   143: astore 6
    //   145: ldc 95
    //   147: new 97	java/lang/StringBuilder
    //   150: dup
    //   151: aload 6
    //   153: invokestatic 93	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   156: invokevirtual 101	java/lang/String:length	()I
    //   159: bipush 45
    //   161: iadd
    //   162: invokespecial 104	java/lang/StringBuilder:<init>	(I)V
    //   165: ldc 106
    //   167: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: aload 6
    //   172: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   178: aload 5
    //   180: invokestatic 119	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   183: aload 5
    //   185: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	186	0	this	eoh
    //   0	186	1	paramLong1	long
    //   0	186	3	paramLong2	long
    //   40	92	5	arrayOfString	String[]
    //   136	48	5	localSQLiteException	android.database.sqlite.SQLiteException
    //   17	154	6	localObject	Object
    //   24	20	7	localContentResolver	android.content.ContentResolver
    //   29	17	8	localUri	android.net.Uri
    // Exception table:
    //   from	to	target	type
    //   14	42	136	android/database/sqlite/SQLiteException
    //   42	127	136	android/database/sqlite/SQLiteException
    //   128	133	136	android/database/sqlite/SQLiteException
  }
  
  private ems c()
  {
    if ((a != null) && (a.moveToNext()))
    {
      Cursor localCursor = a;
      emw localemw = new emw();
      localemw.a(localCursor);
      return localemw;
    }
    return null;
  }
  
  private ems d()
  {
    if ((b != null) && (b.moveToNext())) {
      return emu.a(b);
    }
    return null;
  }
  
  public ems a()
  {
    if ((c != null) && (d != null))
    {
      if (c.c() >= d.c())
      {
        localems = c;
        c = c();
        return localems;
      }
      localems = d;
      d = d();
      return localems;
    }
    if (c != null)
    {
      localems = c;
      c = c();
      return localems;
    }
    ems localems = d;
    d = d();
    return localems;
  }
  
  public void b()
  {
    if (a != null)
    {
      a.close();
      a = null;
    }
    if (b != null)
    {
      b.close();
      b = null;
    }
  }
}

/* Location:
 * Qualified Name:     eoh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */