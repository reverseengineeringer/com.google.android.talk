public final class cvx
{
  public static agu a = null;
  private static final boolean b;
  private static final ezv c;
  
  static
  {
    imx localimx = ezi.i;
    b = false;
    c = ezv.a("VolleyUtils");
  }
  
  /* Error */
  public static agu a()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 31	cvx:a	Lagu;
    //   6: ifnonnull +114 -> 120
    //   9: getstatic 29	cvx:c	Lezv;
    //   12: ldc 39
    //   14: invokevirtual 42	ezv:b	(Ljava/lang/String;)Ljava/lang/String;
    //   17: astore_0
    //   18: getstatic 48	aal:oJ	Landroid/content/Context;
    //   21: astore_1
    //   22: aload_1
    //   23: invokestatic 53	gqa:a	(Landroid/content/Context;)V
    //   26: new 55	gab
    //   29: dup
    //   30: aload_1
    //   31: invokestatic 58	aal:i	()Ljava/lang/String;
    //   34: invokespecial 62	gab:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   37: astore_2
    //   38: getstatic 20	cvx:b	Z
    //   41: ifeq +9 -> 50
    //   44: aload_2
    //   45: ldc 64
    //   47: invokevirtual 67	gab:a	(Ljava/lang/String;)V
    //   50: new 69	ahe
    //   53: dup
    //   54: new 71	ahi
    //   57: dup
    //   58: aload_2
    //   59: invokespecial 74	ahi:<init>	(Lorg/apache/http/client/HttpClient;)V
    //   62: invokespecial 77	ahe:<init>	(Lahi;)V
    //   65: astore_2
    //   66: new 79	agu
    //   69: dup
    //   70: new 81	cvv
    //   73: dup
    //   74: aload_1
    //   75: invokevirtual 87	android/content/Context:getCacheDir	()Ljava/io/File;
    //   78: getstatic 48	aal:oJ	Landroid/content/Context;
    //   81: ldc 89
    //   83: ldc 90
    //   85: invokestatic 93	aal:a	(Landroid/content/Context;Ljava/lang/String;I)I
    //   88: invokespecial 96	cvv:<init>	(Ljava/io/File;I)V
    //   91: aload_2
    //   92: getstatic 48	aal:oJ	Landroid/content/Context;
    //   95: ldc 98
    //   97: iconst_2
    //   98: invokestatic 93	aal:a	(Landroid/content/Context;Ljava/lang/String;I)I
    //   101: invokespecial 101	agu:<init>	(Lagi;Lago;I)V
    //   104: astore_1
    //   105: aload_1
    //   106: putstatic 31	cvx:a	Lagu;
    //   109: aload_1
    //   110: invokevirtual 103	agu:a	()V
    //   113: getstatic 29	cvx:c	Lezv;
    //   116: aload_0
    //   117: invokevirtual 105	ezv:c	(Ljava/lang/String;)V
    //   120: getstatic 31	cvx:a	Lagu;
    //   123: astore_0
    //   124: ldc 2
    //   126: monitorexit
    //   127: aload_0
    //   128: areturn
    //   129: astore_2
    //   130: ldc 64
    //   132: ldc 107
    //   134: aload_2
    //   135: invokestatic 111	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   138: aload_2
    //   139: invokevirtual 114	fhq:a	()I
    //   142: aload_1
    //   143: invokestatic 119	fhr:a	(ILandroid/content/Context;)V
    //   146: goto -120 -> 26
    //   149: astore_1
    //   150: getstatic 29	cvx:c	Lezv;
    //   153: aload_0
    //   154: invokevirtual 105	ezv:c	(Ljava/lang/String;)V
    //   157: aload_1
    //   158: athrow
    //   159: astore_0
    //   160: ldc 2
    //   162: monitorexit
    //   163: aload_0
    //   164: athrow
    //   165: astore_2
    //   166: ldc 64
    //   168: ldc 121
    //   170: aload_2
    //   171: invokestatic 111	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   174: goto -148 -> 26
    // Local variable table:
    //   start	length	slot	name	signature
    //   17	137	0	localObject1	Object
    //   159	5	0	localObject2	Object
    //   21	122	1	localObject3	Object
    //   149	9	1	localObject4	Object
    //   37	55	2	localObject5	Object
    //   129	10	2	localfhq	fhq
    //   165	6	2	localfhp	fhp
    // Exception table:
    //   from	to	target	type
    //   22	26	129	fhq
    //   18	22	149	finally
    //   22	26	149	finally
    //   26	50	149	finally
    //   50	113	149	finally
    //   130	146	149	finally
    //   166	174	149	finally
    //   3	18	159	finally
    //   113	120	159	finally
    //   120	124	159	finally
    //   150	159	159	finally
    //   22	26	165	fhp
  }
  
  public static void a(String paramString)
  {
    a();
    agi localagi = a.b();
    if (localagi != null) {
      localagi.b(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     cvx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */