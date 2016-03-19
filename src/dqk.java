import java.util.List;

public class dqk
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final byte[] g;
  private final List<dtv> h;
  private final boolean i;
  
  private dqk(jyf paramjyf)
  {
    super(responseHeader, -1L);
    if (b != null) {}
    for (g = lyi.a(b);; g = null)
    {
      h = dtv.a(c);
      boolean bool1 = bool2;
      if (d != null)
      {
        bool1 = bool2;
        if (!aal.a(d, false)) {
          bool1 = true;
        }
      }
      i = bool1;
      if (dqf.a)
      {
        paramjyf = String.valueOf(paramjyf);
        new StringBuilder(String.valueOf(paramjyf).length() + 32).append("CreateConversationResponse from:").append(paramjyf);
      }
      return;
    }
  }
  
  private ega k()
  {
    try
    {
      if (g == null) {
        return null;
      }
      Object localObject = new jxr();
      byte[] arrayOfByte = g;
      localObject = new ega((jxr)lyi.b((lyi)localObject, arrayOfByte, arrayOfByte.length), (byte)0);
      return (ega)localObject;
    }
    catch (lyg locallyg) {}
    return null;
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (jyf)lyi.b(new jyf(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dqk(paramArrayOfByte);
  }
  
  /* Error */
  public void a(bfz parambfz, dyy paramdyy)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: invokespecial 119	dqf:a	(Lbfz;Ldyy;)V
    //   6: aload_0
    //   7: invokespecial 121	dqk:k	()Lega;
    //   10: astore 8
    //   12: aload_0
    //   13: getfield 124	dqk:b	Leff;
    //   16: checkcast 126	dos
    //   19: getfield 130	dos:j	Ljava/lang/String;
    //   22: astore 9
    //   24: ldc -124
    //   26: iconst_3
    //   27: invokestatic 137	ezi:a	(Ljava/lang/String;I)Z
    //   30: ifeq +146 -> 176
    //   33: ldc -117
    //   35: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   38: astore 10
    //   40: aload 8
    //   42: invokevirtual 143	ega:n	()Ljava/lang/String;
    //   45: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   48: astore 11
    //   50: aload 8
    //   52: invokevirtual 145	ega:a	()Ljava/lang/String;
    //   55: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   58: astore 12
    //   60: aload 8
    //   62: invokevirtual 148	ega:toString	()Ljava/lang/String;
    //   65: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   68: astore 13
    //   70: ldc -124
    //   72: new 72	java/lang/StringBuilder
    //   75: dup
    //   76: aload 10
    //   78: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   81: invokevirtual 76	java/lang/String:length	()I
    //   84: bipush 39
    //   86: iadd
    //   87: aload 9
    //   89: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   92: invokevirtual 76	java/lang/String:length	()I
    //   95: iadd
    //   96: aload 11
    //   98: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   101: invokevirtual 76	java/lang/String:length	()I
    //   104: iadd
    //   105: aload 12
    //   107: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   110: invokevirtual 76	java/lang/String:length	()I
    //   113: iadd
    //   114: aload 13
    //   116: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   119: invokevirtual 76	java/lang/String:length	()I
    //   122: iadd
    //   123: invokespecial 79	java/lang/StringBuilder:<init>	(I)V
    //   126: aload 10
    //   128: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: aload 9
    //   133: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: ldc -106
    //   138: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: aload 11
    //   143: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: ldc -104
    //   148: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: aload 12
    //   153: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: ldc -102
    //   158: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload 13
    //   163: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: iconst_0
    //   170: anewarray 157	java/lang/Object
    //   173: invokestatic 160	ezi:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   176: aload_1
    //   177: invokevirtual 164	bfz:a	()V
    //   180: aload_0
    //   181: getfield 167	dqk:c	Ldsf;
    //   184: getfield 172	dsf:b	I
    //   187: istore_3
    //   188: new 174	bfy
    //   191: dup
    //   192: invokespecial 175	bfy:<init>	()V
    //   195: astore 10
    //   197: iload_3
    //   198: bipush 6
    //   200: if_icmpne +33 -> 233
    //   203: invokestatic 181	java/lang/System:currentTimeMillis	()J
    //   206: ldc2_w 182
    //   209: lmul
    //   210: lstore 4
    //   212: aload 8
    //   214: invokevirtual 186	ega:w	()J
    //   217: lstore 6
    //   219: lload 6
    //   221: lconst_0
    //   222: lcmp
    //   223: ifne +126 -> 349
    //   226: aload 8
    //   228: lload 4
    //   230: invokevirtual 189	ega:a	(J)V
    //   233: aload_1
    //   234: aload 8
    //   236: lconst_0
    //   237: aload 9
    //   239: aload_2
    //   240: aload 10
    //   242: iconst_1
    //   243: invokestatic 194	bft:a	(Lbfz;Lega;JLjava/lang/String;Ldyy;Lbfy;Z)Z
    //   246: pop
    //   247: aload 10
    //   249: getfield 196	bfy:a	Ljava/lang/String;
    //   252: astore 9
    //   254: aload_0
    //   255: getfield 51	dqk:h	Ljava/util/List;
    //   258: invokeinterface 201 1 0
    //   263: ifle +32 -> 295
    //   266: lconst_1
    //   267: aload 8
    //   269: invokevirtual 186	ega:w	()J
    //   272: ladd
    //   273: lstore 4
    //   275: aload_1
    //   276: aload_0
    //   277: getfield 51	dqk:h	Ljava/util/List;
    //   280: aload 9
    //   282: lload 4
    //   284: invokestatic 204	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   287: lload 4
    //   289: ldc2_w 24
    //   292: invokestatic 207	bft:a	(Lbfz;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JJ)V
    //   295: aload_0
    //   296: getfield 62	dqk:i	Z
    //   299: ifeq +24 -> 323
    //   302: aload_2
    //   303: new 209	doz
    //   306: dup
    //   307: aload 9
    //   309: iconst_1
    //   310: iconst_1
    //   311: iconst_0
    //   312: aconst_null
    //   313: lconst_0
    //   314: aconst_null
    //   315: lconst_0
    //   316: aconst_null
    //   317: invokespecial 212	doz:<init>	(Ljava/lang/String;ZZZ[BJLjava/lang/String;JLegf;)V
    //   320: invokevirtual 217	dyy:a	(Leff;)V
    //   323: aload_1
    //   324: invokevirtual 219	bfz:b	()V
    //   327: aload_1
    //   328: invokevirtual 221	bfz:c	()V
    //   331: aload 9
    //   333: ifnull +15 -> 348
    //   336: aload_1
    //   337: aload 9
    //   339: invokestatic 224	bft:c	(Lbfz;Ljava/lang/String;)V
    //   342: aload_1
    //   343: aload 9
    //   345: invokestatic 226	bft:d	(Lbfz;Ljava/lang/String;)V
    //   348: return
    //   349: lload 6
    //   351: lstore 4
    //   353: goto -127 -> 226
    //   356: astore_2
    //   357: aload_1
    //   358: invokevirtual 221	bfz:c	()V
    //   361: aload_2
    //   362: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	363	0	this	dqk
    //   0	363	1	parambfz	bfz
    //   0	363	2	paramdyy	dyy
    //   187	14	3	j	int
    //   210	142	4	l1	long
    //   217	133	6	l2	long
    //   10	258	8	localega	ega
    //   22	322	9	str1	String
    //   38	210	10	localObject	Object
    //   48	94	11	str2	String
    //   58	94	12	str3	String
    //   68	94	13	str4	String
    // Exception table:
    //   from	to	target	type
    //   180	197	356	finally
    //   203	219	356	finally
    //   226	233	356	finally
    //   233	295	356	finally
    //   295	323	356	finally
    //   323	327	356	finally
  }
}

/* Location:
 * Qualified Name:     dqk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */