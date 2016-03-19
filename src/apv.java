import java.io.InputStream;

public final class apv
  implements aiu<InputStream>
{
  private final amg a;
  
  public apv(amg paramamg)
  {
    a = paramamg;
  }
  
  /* Error */
  private boolean a(InputStream paramInputStream, java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 16	apv:a	Lamg;
    //   4: ldc 21
    //   6: invokevirtual 26	amg:a	(I)[B
    //   9: astore 4
    //   11: new 28	java/io/FileOutputStream
    //   14: dup
    //   15: aload_2
    //   16: invokespecial 31	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   19: astore_2
    //   20: aload_1
    //   21: aload 4
    //   23: invokevirtual 37	java/io/InputStream:read	([B)I
    //   26: istore_3
    //   27: iload_3
    //   28: iconst_m1
    //   29: if_icmpeq +34 -> 63
    //   32: aload_2
    //   33: aload 4
    //   35: iconst_0
    //   36: iload_3
    //   37: invokevirtual 43	java/io/OutputStream:write	([BII)V
    //   40: goto -20 -> 20
    //   43: astore_1
    //   44: aload_2
    //   45: ifnull +7 -> 52
    //   48: aload_2
    //   49: invokevirtual 46	java/io/OutputStream:close	()V
    //   52: aload_0
    //   53: getfield 16	apv:a	Lamg;
    //   56: aload 4
    //   58: invokevirtual 49	amg:a	([B)V
    //   61: iconst_0
    //   62: ireturn
    //   63: aload_2
    //   64: invokevirtual 46	java/io/OutputStream:close	()V
    //   67: aload_2
    //   68: invokevirtual 46	java/io/OutputStream:close	()V
    //   71: aload_0
    //   72: getfield 16	apv:a	Lamg;
    //   75: aload 4
    //   77: invokevirtual 49	amg:a	([B)V
    //   80: iconst_1
    //   81: ireturn
    //   82: astore_1
    //   83: aconst_null
    //   84: astore_2
    //   85: aload_2
    //   86: ifnull +7 -> 93
    //   89: aload_2
    //   90: invokevirtual 46	java/io/OutputStream:close	()V
    //   93: aload_0
    //   94: getfield 16	apv:a	Lamg;
    //   97: aload 4
    //   99: invokevirtual 49	amg:a	([B)V
    //   102: aload_1
    //   103: athrow
    //   104: astore_1
    //   105: goto -34 -> 71
    //   108: astore_1
    //   109: goto -57 -> 52
    //   112: astore_2
    //   113: goto -20 -> 93
    //   116: astore_1
    //   117: goto -32 -> 85
    //   120: astore_1
    //   121: aconst_null
    //   122: astore_2
    //   123: goto -79 -> 44
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	apv
    //   0	126	1	paramInputStream	InputStream
    //   0	126	2	paramFile	java.io.File
    //   26	11	3	i	int
    //   9	89	4	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   20	27	43	java/io/IOException
    //   32	40	43	java/io/IOException
    //   63	67	43	java/io/IOException
    //   11	20	82	finally
    //   67	71	104	java/io/IOException
    //   48	52	108	java/io/IOException
    //   89	93	112	java/io/IOException
    //   20	27	116	finally
    //   32	40	116	finally
    //   63	67	116	finally
    //   11	20	120	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     apv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */