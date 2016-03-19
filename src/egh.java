import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public final class egh
  extends efo
{
  private static final boolean d = false;
  private final List<egi> e = new ArrayList();
  private List<String> f = new ArrayList();
  private String g;
  
  static
  {
    imx localimx = ezi.d;
  }
  
  public egh(kbt paramkbt)
  {
    super(null, null, -1L);
    StringBuilder localStringBuilder = new StringBuilder();
    paramkbt = a;
    int k = paramkbt.length;
    int i = 0;
    while (i < k)
    {
      kcn[] arrayOfkcn = paramkbt[i];
      if (a == null)
      {
        ezi.d("Babel_ConversationsData", "Empty conversationId in ClientMarkEventObservedNotification from the server.", new Object[0]);
        i += 1;
      }
      else
      {
        String str1 = a.a;
        localStringBuilder.append("conid: ").append(str1).append(" ");
        arrayOfkcn = b;
        int m = arrayOfkcn.length;
        int j = 0;
        label130:
        kcn localkcn;
        if (j < m)
        {
          localkcn = arrayOfkcn[j];
          if (!TextUtils.isEmpty(a)) {
            break label171;
          }
          ezi.d("Babel_ConversationsData", "Empty eventId in ClientMarkEventObservedNotification from the server.", new Object[0]);
        }
        for (;;)
        {
          j += 1;
          break label130;
          break;
          label171:
          String str2 = a;
          int n = aal.a(c, 0);
          e.add(new egi(str1, str2, n));
          f.add(str1);
          localStringBuilder.append("msgid: ").append(str2).append(" ");
        }
      }
    }
    g = localStringBuilder.toString();
  }
  
  /* Error */
  protected void a(bfz parambfz, dyy paramdyy)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 122	bfz:g	()Lbfd;
    //   4: invokevirtual 127	bfd:g	()I
    //   7: istore_3
    //   8: getstatic 133	dvp:v	Ldml;
    //   11: iload_3
    //   12: invokevirtual 138	dml:b	(I)Z
    //   15: ifne +4 -> 19
    //   18: return
    //   19: aload_1
    //   20: invokevirtual 140	bfz:a	()V
    //   23: aload_1
    //   24: invokevirtual 122	bfz:g	()Lbfd;
    //   27: invokevirtual 127	bfd:g	()I
    //   30: istore_3
    //   31: getstatic 133	dvp:v	Ldml;
    //   34: iload_3
    //   35: invokevirtual 138	dml:b	(I)Z
    //   38: ifeq +18 -> 56
    //   41: getstatic 143	dvp:x	Ldml;
    //   44: iload_3
    //   45: invokevirtual 138	dml:b	(I)Z
    //   48: ifeq +8 -> 56
    //   51: aload_2
    //   52: iload_3
    //   53: invokevirtual 148	dyy:a	(I)V
    //   56: aload_1
    //   57: aload_0
    //   58: invokevirtual 151	egh:e	()Ljava/util/List;
    //   61: invokevirtual 154	bfz:a	(Ljava/util/List;)V
    //   64: getstatic 157	dvp:V	Ldml;
    //   67: iload_3
    //   68: invokevirtual 138	dml:b	(I)Z
    //   71: ifeq +14 -> 85
    //   74: iload_3
    //   75: sipush 2678
    //   78: aload_0
    //   79: invokevirtual 159	egh:d	()Ljava/lang/String;
    //   82: invokestatic 162	aal:a	(IILjava/lang/String;)V
    //   85: aload_1
    //   86: invokevirtual 164	bfz:b	()V
    //   89: aload_1
    //   90: invokevirtual 166	bfz:c	()V
    //   93: aload_0
    //   94: invokevirtual 168	egh:f	()Ljava/util/List;
    //   97: invokeinterface 172 1 0
    //   102: astore_2
    //   103: aload_2
    //   104: invokeinterface 178 1 0
    //   109: ifeq -91 -> 18
    //   112: aload_1
    //   113: aload_2
    //   114: invokeinterface 182 1 0
    //   119: checkcast 184	java/lang/String
    //   122: invokestatic 189	bft:d	(Lbfz;Ljava/lang/String;)V
    //   125: goto -22 -> 103
    //   128: astore_2
    //   129: aload_1
    //   130: invokevirtual 166	bfz:c	()V
    //   133: aload_2
    //   134: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	135	0	this	egh
    //   0	135	1	parambfz	bfz
    //   0	135	2	paramdyy	dyy
    //   7	68	3	i	int
    // Exception table:
    //   from	to	target	type
    //   23	56	128	finally
    //   56	85	128	finally
    //   85	89	128	finally
  }
  
  public String d()
  {
    return g;
  }
  
  public List<egi> e()
  {
    return e;
  }
  
  public List<String> f()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     egh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */