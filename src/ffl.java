import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class ffl
{
  Context a;
  private ffm b;
  
  ffl(Context paramContext)
  {
    a = paramContext;
    b = new ffm((bcm)ilh.a(paramContext, bcm.class));
  }
  
  /* Error */
  private List<cxq> a(int paramInt1, String paramString, int paramInt2)
  {
    // Byte code:
    //   0: getstatic 37	com/google/android/apps/hangouts/content/EsProvider:k	Landroid/net/Uri;
    //   3: iload_1
    //   4: invokestatic 40	com/google/android/apps/hangouts/content/EsProvider:a	(Landroid/net/Uri;I)Landroid/net/Uri;
    //   7: astore 5
    //   9: iload_3
    //   10: ifne +105 -> 115
    //   13: ldc 42
    //   15: astore 4
    //   17: aload 5
    //   19: invokevirtual 48	android/net/Uri:buildUpon	()Landroid/net/Uri$Builder;
    //   22: ldc 50
    //   24: aload 4
    //   26: invokevirtual 56	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   29: invokevirtual 60	android/net/Uri$Builder:build	()Landroid/net/Uri;
    //   32: astore 5
    //   34: new 62	java/util/ArrayList
    //   37: dup
    //   38: invokespecial 63	java/util/ArrayList:<init>	()V
    //   41: astore 4
    //   43: aload_0
    //   44: getfield 15	ffl:a	Landroid/content/Context;
    //   47: invokevirtual 69	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   50: aload 5
    //   52: getstatic 74	cxs:a	[Ljava/lang/String;
    //   55: ldc 76
    //   57: iconst_1
    //   58: anewarray 78	java/lang/String
    //   61: dup
    //   62: iconst_0
    //   63: aload_2
    //   64: aastore
    //   65: ldc 80
    //   67: invokevirtual 86	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   70: astore_2
    //   71: aload_2
    //   72: ifnull +81 -> 153
    //   75: aload_2
    //   76: invokeinterface 92 1 0
    //   81: ifeq +66 -> 147
    //   84: aload 4
    //   86: new 94	cxq
    //   89: dup
    //   90: aload_2
    //   91: iload_1
    //   92: invokespecial 97	cxq:<init>	(Landroid/database/Cursor;I)V
    //   95: invokeinterface 103 2 0
    //   100: pop
    //   101: goto -26 -> 75
    //   104: astore 4
    //   106: aload_2
    //   107: invokeinterface 106 1 0
    //   112: aload 4
    //   114: athrow
    //   115: getstatic 112	java/util/Locale:US	Ljava/util/Locale;
    //   118: ldc 114
    //   120: iconst_2
    //   121: anewarray 4	java/lang/Object
    //   124: dup
    //   125: iconst_0
    //   126: iload_3
    //   127: invokestatic 120	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   130: aastore
    //   131: dup
    //   132: iconst_1
    //   133: bipush 20
    //   135: invokestatic 120	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   138: aastore
    //   139: invokestatic 124	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   142: astore 4
    //   144: goto -127 -> 17
    //   147: aload_2
    //   148: invokeinterface 106 1 0
    //   153: aload 4
    //   155: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	156	0	this	ffl
    //   0	156	1	paramInt1	int
    //   0	156	2	paramString	String
    //   0	156	3	paramInt2	int
    //   15	70	4	localObject1	Object
    //   104	9	4	localObject2	Object
    //   142	12	4	str	String
    //   7	44	5	localUri	Uri
    // Exception table:
    //   from	to	target	type
    //   75	101	104	finally
  }
  
  public ffv a(Cursor paramCursor, bfd parambfd, String paramString, Uri paramUri, grp paramgrp, long paramLong, Map<String, String> paramMap)
  {
    int i = parambfd.g();
    ffm localffm = b;
    ill localill = new ill(a);
    localill.getBinder().a(hpu.class, new ffk((hpz)ilh.a(a, hpz.class), i));
    paramString = new ffo(this, localill, paramString, paramUri, paramgrp, paramLong, localffm);
    paramString.a(paramCursor, parambfd.g(), paramMap);
    return n;
  }
  
  public ArrayList<grp> a(int paramInt1, String paramString, int paramInt2, Map<String, String> paramMap)
  {
    Object localObject = a(paramInt1, paramString, paramInt2);
    paramString = new ArrayList();
    if (!((List)localObject).isEmpty())
    {
      localObject = ((List)localObject).iterator();
      if (((Iterator)localObject).hasNext())
      {
        cxq localcxq = (cxq)((Iterator)localObject).next();
        ffw localffw = new ffw();
        localffw.a(j);
        if (b != null) {
          localffw.a(b.toString());
        }
        localffw.a(a);
        if (l != null) {
          localffw.b(Long.parseLong(l));
        }
        localffw.a(d);
        localffw.a(n);
        paramInt1 = e;
        paramInt2 = f;
        if (aal.f(paramInt1)) {
          if (paramInt2 == 1) {
            paramInt1 = fft.c;
          }
        }
        for (;;)
        {
          localffw.b(paramInt1);
          if (o.c)
          {
            localffw.b(m);
            localffw.c(q);
          }
          paramString.add(localffw.a());
          if ((a != emd.c) || (!o.c) || (i == null)) {
            break;
          }
          paramMap.put(m, i);
          break;
          paramInt1 = fft.b;
          continue;
          paramInt1 = fft.a;
        }
      }
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     ffl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */