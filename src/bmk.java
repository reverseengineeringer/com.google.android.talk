import android.os.AsyncTask;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

final class bmk
  extends AsyncTask<Void, Void, Void>
{
  private final List<Map<String, String>> b = new ArrayList();
  private final List<ArrayList<hq<String, String>>> c = new ArrayList();
  
  bmk(bmj parambmj) {}
  
  /* Error */
  private Void a()
  {
    // Byte code:
    //   0: new 30	bfz
    //   3: dup
    //   4: aload_0
    //   5: getfield 16	bmk:a	Lbmj;
    //   8: getfield 35	bmj:a	Lblw;
    //   11: getfield 40	blw:a	Landroid/content/Context;
    //   14: aload_0
    //   15: getfield 16	bmk:a	Lbmj;
    //   18: getfield 35	bmj:a	Lblw;
    //   21: getfield 43	blw:b	Lbfd;
    //   24: invokevirtual 49	bfd:g	()I
    //   27: invokespecial 52	bfz:<init>	(Landroid/content/Context;I)V
    //   30: astore_2
    //   31: aload_0
    //   32: getfield 16	bmk:a	Lbmj;
    //   35: getfield 35	bmj:a	Lblw;
    //   38: getfield 56	blw:d	Lcyx;
    //   41: astore_3
    //   42: invokestatic 61	eie:a	()Leie;
    //   45: astore_1
    //   46: aload_1
    //   47: invokevirtual 65	eie:f	()Z
    //   50: ifeq +32 -> 82
    //   53: aload_3
    //   54: getfield 70	cyx:b	Lczb;
    //   57: getfield 75	czb:a	Ljava/lang/String;
    //   60: ifnull +28 -> 88
    //   63: aload_3
    //   64: getfield 70	cyx:b	Lczb;
    //   67: getfield 75	czb:a	Ljava/lang/String;
    //   70: astore_3
    //   71: aload_0
    //   72: aload_3
    //   73: aload_1
    //   74: aload_3
    //   75: invokevirtual 78	eie:a	(Ljava/lang/String;)Lbzq;
    //   78: aload_2
    //   79: invokespecial 81	bmk:a	(Ljava/lang/String;Lbzq;Lbfz;)V
    //   82: aload_1
    //   83: invokevirtual 83	eie:c	()V
    //   86: aconst_null
    //   87: areturn
    //   88: aload_3
    //   89: getfield 85	cyx:c	Ljava/lang/String;
    //   92: ifnull -10 -> 82
    //   95: aload_3
    //   96: getfield 85	cyx:c	Ljava/lang/String;
    //   99: astore_3
    //   100: aload_0
    //   101: aload_3
    //   102: aload_2
    //   103: aload_3
    //   104: aload_1
    //   105: invokevirtual 88	bfz:b	(Ljava/lang/String;Leie;)Lbzq;
    //   108: aload_2
    //   109: invokespecial 81	bmk:a	(Ljava/lang/String;Lbzq;Lbfz;)V
    //   112: goto -30 -> 82
    //   115: astore_2
    //   116: aload_1
    //   117: invokevirtual 83	eie:c	()V
    //   120: aload_2
    //   121: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	this	bmk
    //   45	72	1	localeie	eie
    //   30	79	2	localbfz	bfz
    //   115	6	2	localObject1	Object
    //   41	63	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   46	82	115	finally
    //   88	112	115	finally
  }
  
  private void a(String paramString, bzq parambzq, bfz parambfz)
  {
    if (parambzq == null)
    {
      parambzq = new hq();
      parambzq.put("text", String.valueOf(paramString).concat("/ no contacts match"));
      b.add(parambzq);
      paramString = new ArrayList();
      c.add(paramString);
      return;
    }
    Object localObject1 = new hq();
    Object localObject2 = String.valueOf(parambzq.c());
    ((hq)localObject1).put("text", String.valueOf(paramString).length() + 1 + String.valueOf(localObject2).length() + paramString + "/" + (String)localObject2);
    b.add(localObject1);
    localObject1 = new ArrayList();
    localObject2 = parambzq.f().iterator();
    if (((Iterator)localObject2).hasNext())
    {
      Object localObject3 = (bzv)((Iterator)localObject2).next();
      String str1 = a;
      String str2 = parambfz.a(null, str1);
      bgq localbgq = parambfz.a(aal.l(str1), false, 3);
      label231:
      Locale localLocale;
      if (TextUtils.equals(a.a.e, str2))
      {
        paramString = "(INCL)";
        localLocale = Locale.US;
        localObject3 = b;
        if (localbgq == null) {
          break label300;
        }
      }
      label300:
      for (boolean bool = true;; bool = false)
      {
        a((ArrayList)localObject1, str1, String.format(localLocale, "    %s\n    computed merge key: %s %s\n    conversation exists? %s", new Object[] { localObject3, str2, paramString, Boolean.valueOf(bool) }));
        break;
        paramString = "(EXCL)";
        break label231;
      }
    }
    paramString = parambzq.g().iterator();
    while (paramString.hasNext()) {
      a((ArrayList)localObject1, "email", nexta);
    }
    a((ArrayList)localObject1, "qualifiedId", parambzq.b());
    c.add(localObject1);
  }
  
  private static void a(ArrayList<hq<String, String>> paramArrayList, String paramString1, String paramString2)
  {
    hq localhq = new hq();
    localhq.put("main", paramString1);
    localhq.put("sub", paramString2);
    paramArrayList.add(localhq);
  }
}

/* Location:
 * Qualified Name:     bmk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */