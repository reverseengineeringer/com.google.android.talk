import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import java.io.InputStream;

public final class exs
  implements Handler.Callback, ejb, Runnable
{
  private static ext T;
  private static Handler U;
  private static final byte[] W = new byte['̀'];
  static final byte[] a = "NETSCAPE2.0".getBytes();
  private static final Object aa = new Object();
  int A;
  final Handler B;
  boolean C;
  boolean D;
  final byte[] E;
  int F;
  int G;
  int[] H;
  public int I;
  public final int[] J;
  public int K;
  int L;
  boolean M;
  private final exb N;
  private long O;
  private boolean P;
  private int Q;
  private boolean R;
  private boolean S;
  private boolean V;
  private boolean X;
  private int Y;
  private exv Z;
  volatile boolean b;
  volatile boolean c;
  int d;
  boolean e;
  int f;
  int[] g;
  int[] h;
  boolean i;
  int j;
  int k;
  int l;
  int m;
  int n;
  final byte[] o;
  int p;
  boolean q;
  int r;
  final short[] s;
  final byte[] t;
  final byte[] u;
  byte[] v;
  boolean w;
  int[] x;
  int y;
  Bitmap z;
  
  /* Error */
  public exs(byte[] paramArrayOfByte, exv paramexv, exb paramexb)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: aload_0
    //   4: invokespecial 89	java/lang/Object:<init>	()V
    //   7: aload_0
    //   8: sipush 256
    //   11: newarray <illegal type>
    //   13: putfield 103	exs:o	[B
    //   16: aload_0
    //   17: iconst_2
    //   18: putfield 105	exs:p	I
    //   21: aload_0
    //   22: sipush 4096
    //   25: newarray <illegal type>
    //   27: putfield 107	exs:s	[S
    //   30: aload_0
    //   31: sipush 4096
    //   34: newarray <illegal type>
    //   36: putfield 109	exs:t	[B
    //   39: aload_0
    //   40: sipush 4097
    //   43: newarray <illegal type>
    //   45: putfield 111	exs:u	[B
    //   48: aload_0
    //   49: iconst_1
    //   50: putfield 113	exs:S	Z
    //   53: aload_0
    //   54: new 115	android/os/Handler
    //   57: dup
    //   58: invokestatic 121	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   61: aload_0
    //   62: invokespecial 124	android/os/Handler:<init>	(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    //   65: putfield 126	exs:B	Landroid/os/Handler;
    //   68: aload_0
    //   69: sipush 256
    //   72: newarray <illegal type>
    //   74: putfield 128	exs:J	[I
    //   77: aload_0
    //   78: aload_3
    //   79: putfield 130	exs:N	Lexb;
    //   82: aload_0
    //   83: iconst_1
    //   84: putfield 132	exs:M	Z
    //   87: getstatic 91	exs:aa	Ljava/lang/Object;
    //   90: astore_3
    //   91: aload_3
    //   92: monitorenter
    //   93: getstatic 134	exs:T	Lext;
    //   96: ifnonnull +41 -> 137
    //   99: new 136	ext
    //   102: dup
    //   103: invokespecial 137	ext:<init>	()V
    //   106: astore 8
    //   108: aload 8
    //   110: putstatic 134	exs:T	Lext;
    //   113: aload 8
    //   115: invokevirtual 140	ext:start	()V
    //   118: new 115	android/os/Handler
    //   121: dup
    //   122: getstatic 134	exs:T	Lext;
    //   125: invokevirtual 143	ext:getLooper	()Landroid/os/Looper;
    //   128: getstatic 134	exs:T	Lext;
    //   131: invokespecial 124	android/os/Handler:<init>	(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    //   134: putstatic 145	exs:U	Landroid/os/Handler;
    //   137: aload_3
    //   138: monitorexit
    //   139: aload_0
    //   140: aload_2
    //   141: putfield 147	exs:Z	Lexv;
    //   144: aload_0
    //   145: aload_1
    //   146: putfield 149	exs:E	[B
    //   149: new 151	exu
    //   152: dup
    //   153: aload_0
    //   154: aload_1
    //   155: invokespecial 154	exu:<init>	(Lexs;[B)V
    //   158: astore_1
    //   159: aload_1
    //   160: invokevirtual 160	java/io/InputStream:read	()I
    //   163: bipush 71
    //   165: if_icmpne +197 -> 362
    //   168: iconst_1
    //   169: istore 4
    //   171: iload 4
    //   173: ifeq +195 -> 368
    //   176: aload_1
    //   177: invokevirtual 160	java/io/InputStream:read	()I
    //   180: bipush 73
    //   182: if_icmpne +186 -> 368
    //   185: iconst_1
    //   186: istore 4
    //   188: iload 4
    //   190: ifeq +184 -> 374
    //   193: aload_1
    //   194: invokevirtual 160	java/io/InputStream:read	()I
    //   197: bipush 70
    //   199: if_icmpne +175 -> 374
    //   202: iconst_1
    //   203: istore 4
    //   205: iload 4
    //   207: ifne +173 -> 380
    //   210: aload_0
    //   211: iconst_1
    //   212: putfield 162	exs:b	Z
    //   215: ldc -92
    //   217: ldc -90
    //   219: iconst_0
    //   220: anewarray 4	java/lang/Object
    //   223: invokestatic 171	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   226: aload_0
    //   227: aload_1
    //   228: invokevirtual 173	exu:a	()I
    //   231: putfield 175	exs:I	I
    //   234: aload_0
    //   235: aload_0
    //   236: getfield 175	exs:I	I
    //   239: putfield 177	exs:L	I
    //   242: aload_0
    //   243: getfield 179	exs:F	I
    //   246: istore 4
    //   248: aload_0
    //   249: iload 4
    //   251: putfield 181	exs:n	I
    //   254: aload_0
    //   255: iload 4
    //   257: putfield 183	exs:l	I
    //   260: aload_0
    //   261: aload_0
    //   262: getfield 185	exs:G	I
    //   265: putfield 187	exs:m	I
    //   268: iconst_0
    //   269: istore 6
    //   271: iload 5
    //   273: istore 4
    //   275: iload 6
    //   277: istore 5
    //   279: iload 4
    //   281: ifne +231 -> 512
    //   284: aload_0
    //   285: aload_0
    //   286: getfield 130	exs:N	Lexb;
    //   289: aload_0
    //   290: getfield 179	exs:F	I
    //   293: aload_0
    //   294: getfield 185	exs:G	I
    //   297: invokevirtual 192	exb:b	(II)Landroid/graphics/Bitmap;
    //   300: putfield 194	exs:z	Landroid/graphics/Bitmap;
    //   303: aload_0
    //   304: iconst_0
    //   305: putfield 196	exs:C	Z
    //   308: aload_0
    //   309: getfield 179	exs:F	I
    //   312: aload_0
    //   313: getfield 185	exs:G	I
    //   316: imul
    //   317: istore 6
    //   319: aload_0
    //   320: iload 6
    //   322: newarray <illegal type>
    //   324: putfield 198	exs:H	[I
    //   327: aload_0
    //   328: iload 6
    //   330: newarray <illegal type>
    //   332: putfield 200	exs:v	[B
    //   335: getstatic 145	exs:U	Landroid/os/Handler;
    //   338: getstatic 145	exs:U	Landroid/os/Handler;
    //   341: bipush 10
    //   343: aload_0
    //   344: invokevirtual 204	android/os/Handler:obtainMessage	(ILjava/lang/Object;)Landroid/os/Message;
    //   347: invokevirtual 208	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   350: pop
    //   351: iconst_1
    //   352: istore 4
    //   354: goto -75 -> 279
    //   357: astore_1
    //   358: aload_3
    //   359: monitorexit
    //   360: aload_1
    //   361: athrow
    //   362: iconst_0
    //   363: istore 4
    //   365: goto -194 -> 171
    //   368: iconst_0
    //   369: istore 4
    //   371: goto -183 -> 188
    //   374: iconst_0
    //   375: istore 4
    //   377: goto -172 -> 205
    //   380: aload_1
    //   381: ldc2_w 209
    //   384: invokevirtual 214	java/io/InputStream:skip	(J)J
    //   387: pop2
    //   388: aload_0
    //   389: aload_1
    //   390: invokestatic 217	exs:a	(Ljava/io/InputStream;)I
    //   393: putfield 179	exs:F	I
    //   396: aload_0
    //   397: aload_1
    //   398: invokestatic 217	exs:a	(Ljava/io/InputStream;)I
    //   401: putfield 185	exs:G	I
    //   404: aload_0
    //   405: getfield 179	exs:F	I
    //   408: ifle +10 -> 418
    //   411: aload_0
    //   412: getfield 185	exs:G	I
    //   415: ifgt +102 -> 517
    //   418: aload_0
    //   419: iconst_1
    //   420: putfield 162	exs:b	Z
    //   423: ldc -92
    //   425: ldc -37
    //   427: iconst_0
    //   428: anewarray 4	java/lang/Object
    //   431: invokestatic 171	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   434: aload_0
    //   435: getfield 221	exs:X	Z
    //   438: ifeq -212 -> 226
    //   441: aload_0
    //   442: getfield 162	exs:b	Z
    //   445: istore 7
    //   447: iload 7
    //   449: ifne -223 -> 226
    //   452: aload_1
    //   453: aload_0
    //   454: getfield 128	exs:J	[I
    //   457: aload_0
    //   458: getfield 223	exs:Y	I
    //   461: invokestatic 226	exs:a	(Ljava/io/InputStream;[II)Z
    //   464: pop
    //   465: aload_0
    //   466: aload_0
    //   467: getfield 128	exs:J	[I
    //   470: aload_0
    //   471: getfield 228	exs:K	I
    //   474: iaload
    //   475: putfield 230	exs:d	I
    //   478: goto -252 -> 226
    //   481: astore_2
    //   482: aload_0
    //   483: iconst_1
    //   484: putfield 162	exs:b	Z
    //   487: ldc -92
    //   489: ldc -90
    //   491: aload_2
    //   492: invokestatic 233	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   495: goto -269 -> 226
    //   498: astore_2
    //   499: aload_0
    //   500: iconst_1
    //   501: putfield 162	exs:b	Z
    //   504: ldc -92
    //   506: ldc -21
    //   508: aload_2
    //   509: invokestatic 233	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   512: aload_1
    //   513: invokevirtual 238	exu:close	()V
    //   516: return
    //   517: aload_1
    //   518: invokevirtual 160	java/io/InputStream:read	()I
    //   521: istore 4
    //   523: iload 4
    //   525: sipush 128
    //   528: iand
    //   529: ifeq +57 -> 586
    //   532: iconst_1
    //   533: istore 7
    //   535: aload_0
    //   536: iload 7
    //   538: putfield 221	exs:X	Z
    //   541: aload_0
    //   542: iconst_2
    //   543: iload 4
    //   545: bipush 7
    //   547: iand
    //   548: ishl
    //   549: putfield 223	exs:Y	I
    //   552: aload_0
    //   553: aload_1
    //   554: invokevirtual 160	java/io/InputStream:read	()I
    //   557: putfield 228	exs:K	I
    //   560: aload_1
    //   561: lconst_1
    //   562: invokevirtual 214	java/io/InputStream:skip	(J)J
    //   565: pop2
    //   566: goto -132 -> 434
    //   569: astore_2
    //   570: aload_0
    //   571: iconst_1
    //   572: putfield 162	exs:b	Z
    //   575: ldc -92
    //   577: ldc -16
    //   579: aload_2
    //   580: invokestatic 233	ezi:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   583: goto -71 -> 512
    //   586: iconst_0
    //   587: istore 7
    //   589: goto -54 -> 535
    //   592: astore_2
    //   593: ldc -92
    //   595: ldc -14
    //   597: iconst_0
    //   598: anewarray 4	java/lang/Object
    //   601: invokestatic 171	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   604: iload 5
    //   606: iconst_1
    //   607: iadd
    //   608: istore 5
    //   610: iload 5
    //   612: iconst_1
    //   613: if_icmpgt +12 -> 625
    //   616: getstatic 247	hbu:a	Lhbu;
    //   619: invokevirtual 249	hbu:a	()V
    //   622: goto -343 -> 279
    //   625: aload_0
    //   626: iconst_1
    //   627: putfield 162	exs:b	Z
    //   630: ldc -92
    //   632: ldc -5
    //   634: iconst_0
    //   635: anewarray 4	java/lang/Object
    //   638: invokestatic 171	ezi:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   641: iconst_1
    //   642: istore 4
    //   644: goto -365 -> 279
    //   647: astore_1
    //   648: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	649	0	this	exs
    //   0	649	1	paramArrayOfByte	byte[]
    //   0	649	2	paramexv	exv
    //   0	649	3	paramexb	exb
    //   169	474	4	i1	int
    //   1	613	5	i2	int
    //   269	60	6	i3	int
    //   445	143	7	bool	boolean
    //   106	8	8	localext	ext
    // Exception table:
    //   from	to	target	type
    //   93	137	357	finally
    //   137	139	357	finally
    //   358	360	357	finally
    //   452	478	481	java/lang/ArrayIndexOutOfBoundsException
    //   159	168	498	java/io/IOException
    //   176	185	498	java/io/IOException
    //   193	202	498	java/io/IOException
    //   210	226	498	java/io/IOException
    //   226	268	498	java/io/IOException
    //   284	351	498	java/io/IOException
    //   380	418	498	java/io/IOException
    //   418	434	498	java/io/IOException
    //   434	447	498	java/io/IOException
    //   452	478	498	java/io/IOException
    //   482	495	498	java/io/IOException
    //   517	523	498	java/io/IOException
    //   535	566	498	java/io/IOException
    //   593	604	498	java/io/IOException
    //   616	622	498	java/io/IOException
    //   625	641	498	java/io/IOException
    //   159	168	569	java/lang/IllegalArgumentException
    //   176	185	569	java/lang/IllegalArgumentException
    //   193	202	569	java/lang/IllegalArgumentException
    //   210	226	569	java/lang/IllegalArgumentException
    //   226	268	569	java/lang/IllegalArgumentException
    //   284	351	569	java/lang/IllegalArgumentException
    //   380	418	569	java/lang/IllegalArgumentException
    //   418	434	569	java/lang/IllegalArgumentException
    //   434	447	569	java/lang/IllegalArgumentException
    //   452	478	569	java/lang/IllegalArgumentException
    //   482	495	569	java/lang/IllegalArgumentException
    //   517	523	569	java/lang/IllegalArgumentException
    //   535	566	569	java/lang/IllegalArgumentException
    //   593	604	569	java/lang/IllegalArgumentException
    //   616	622	569	java/lang/IllegalArgumentException
    //   625	641	569	java/lang/IllegalArgumentException
    //   284	351	592	java/lang/OutOfMemoryError
    //   512	516	647	java/io/IOException
  }
  
  private static int a(InputStream paramInputStream)
  {
    return paramInputStream.read() | paramInputStream.read() << 8;
  }
  
  public static int a(byte[] paramArrayOfByte, int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i2 = 0;
    int i1 = paramInt2;
    paramInt2 = i2;
    while (paramInt2 < paramInt1)
    {
      int i4 = i1 + 1;
      i2 = paramArrayOfByte[i1];
      int i3 = i4 + 1;
      i4 = paramArrayOfByte[i4];
      i1 = i3 + 1;
      paramArrayOfInt[paramInt2] = ((i4 & 0xFF) << 8 | (i2 & 0xFF) << 16 | 0xFF000000 | paramArrayOfByte[i3] & 0xFF);
      paramInt2 += 1;
    }
    return i1;
  }
  
  private void a(Runnable paramRunnable)
  {
    B.removeCallbacks(paramRunnable);
    P = false;
  }
  
  private static boolean a(InputStream paramInputStream, int[] paramArrayOfInt, int paramInt)
  {
    byte[] arrayOfByte = W;
    int i1 = paramInt * 3;
    try
    {
      if (paramInputStream.read(W, 0, i1) < i1) {
        return false;
      }
      a(W, paramArrayOfInt, paramInt, 0);
      return true;
    }
    finally {}
  }
  
  public static boolean a(byte[] paramArrayOfByte)
  {
    return (paramArrayOfByte.length >= 3) && (paramArrayOfByte[0] == 71) && (paramArrayOfByte[1] == 73) && (paramArrayOfByte[2] == 70);
  }
  
  public void a() {}
  
  public void a(exv paramexv)
  {
    Z = paramexv;
    if ((paramexv != null) && (V)) {
      Z.a(z);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (S == paramBoolean) {
      return;
    }
    S = paramBoolean;
    if (S)
    {
      g();
      return;
    }
    h();
  }
  
  public void b() {}
  
  public byte[] c()
  {
    return E;
  }
  
  public int d()
  {
    return F;
  }
  
  public int e()
  {
    return G;
  }
  
  public boolean f()
  {
    return b;
  }
  
  public void g()
  {
    if (!P)
    {
      P = true;
      O = SystemClock.uptimeMillis();
      run();
    }
  }
  
  public void h()
  {
    if (P) {
      a(this);
    }
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    boolean bool = false;
    int i2 = 0;
    if (what == 11)
    {
      Q = arg1;
      if (z != null)
      {
        z.setPixels(H, 0, F, 0, 0, F, G);
        V = true;
        R = false;
        if (Z != null)
        {
          int i1 = i2;
          if (!b)
          {
            i1 = i2;
            if (V)
            {
              i1 = i2;
              if (!C)
              {
                i1 = i2;
                if (l > 0)
                {
                  i1 = i2;
                  if (m > 0) {
                    i1 = 1;
                  }
                }
              }
            }
          }
          if (i1 != 0)
          {
            Z.a(z);
            if (!P) {
              break label209;
            }
            if (!R)
            {
              O = Math.max(O + Q, SystemClock.uptimeMillis() + 5L);
              long l1 = O;
              if (S)
              {
                B.postAtTime(this, l1);
                R = true;
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      bool = true;
      return bool;
      label209:
      a(this);
    }
  }
  
  void i()
  {
    if (w) {}
    for (;;)
    {
      return;
      if (x == null) {
        x = null;
      }
      try
      {
        x = new int[H.length];
        if (x == null) {
          continue;
        }
        System.arraycopy(H, 0, x, 0, H.length);
        w = true;
        return;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        for (;;)
        {
          Log.e("Babel", "Gif backupFrame threw an OOME", localOutOfMemoryError);
        }
      }
    }
  }
  
  public void j()
  {
    if (z != null)
    {
      N.a(z);
      z = null;
    }
    C = true;
  }
  
  int k()
  {
    byte[] arrayOfByte = E;
    int i1 = L;
    L = (i1 + 1);
    i1 = arrayOfByte[i1] & 0xFF;
    if (i1 > 0)
    {
      System.arraycopy(E, L, o, 0, i1);
      L += i1;
    }
    return i1;
  }
  
  int l()
  {
    byte[] arrayOfByte = E;
    int i1 = L;
    L = (i1 + 1);
    i1 = arrayOfByte[i1];
    arrayOfByte = E;
    int i2 = L;
    L = (i2 + 1);
    return i1 & 0xFF | (arrayOfByte[i2] & 0xFF) << 8;
  }
  
  void m()
  {
    int i1;
    do
    {
      byte[] arrayOfByte = E;
      i1 = L;
      L = (i1 + 1);
      i1 = arrayOfByte[i1] & 0xFF;
      L += i1;
    } while (i1 > 0);
  }
  
  public void run()
  {
    if (C) {}
    while (c) {
      return;
    }
    U.sendMessage(U.obtainMessage(10, this));
  }
}

/* Location:
 * Qualified Name:     exs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */