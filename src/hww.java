import android.util.SparseIntArray;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TimeZone;

public final class hww
{
  public static final int A;
  public static final int B;
  public static final int C;
  public static final int D;
  public static final int E;
  public static final int F;
  public static final int G;
  public static final int H;
  public static final int I;
  public static final int J;
  public static final int K;
  public static final int L;
  public static final int M;
  public static final int N;
  public static final int O;
  public static final int P;
  public static final int Q;
  public static final int R;
  public static final int S;
  public static final int T;
  public static final int U;
  public static final int V;
  public static final int W;
  public static final int X;
  public static final int Y;
  public static final int Z;
  public static final int a = a(0, (short)256);
  public static final int aA;
  public static final int aB;
  public static final int aC;
  public static final int aD;
  public static final int aE;
  public static final int aF;
  public static final int aG;
  public static final int aH;
  public static final int aI;
  public static final int aJ;
  public static final int aK;
  public static final int aL;
  public static final int aM;
  public static final int aN;
  public static final int aO;
  public static final int aP;
  public static final int aQ;
  public static final int aR;
  public static final int aS;
  public static final int aT;
  public static final int aU;
  public static final int aV;
  public static final int aW;
  public static final int aX;
  public static final int aY;
  public static final int aZ;
  public static final int aa;
  public static final int ab;
  public static final int ac;
  public static final int ad;
  public static final int ae;
  public static final int af;
  public static final int ag;
  public static final int ah;
  public static final int ai;
  public static final int aj;
  public static final int ak;
  public static final int al;
  public static final int am;
  public static final int an;
  public static final int ao;
  public static final int ap;
  public static final int aq;
  public static final int ar;
  public static final int as;
  public static final int at;
  public static final int au;
  public static final int av;
  public static final int aw;
  public static final int ax;
  public static final int ay;
  public static final int az;
  public static final int b = a(0, (short)257);
  public static final int ba;
  public static final int bb;
  public static final int bc;
  public static final int bd;
  public static final int be;
  public static final int bf;
  public static final int bg;
  public static final int bh;
  public static final int bi;
  public static final int bj;
  public static final int bk;
  public static final int bl;
  public static final int bm;
  public static final int bn;
  public static final int bo;
  public static final int bp;
  public static final int bq;
  public static final ByteOrder br = ByteOrder.BIG_ENDIAN;
  private static HashSet<Short> bs;
  private static final HashSet<Short> bt;
  public static final int c = a(0, (short)258);
  public static final int d = a(0, (short)259);
  public static final int e = a(0, (short)262);
  public static final int f = a(0, (short)270);
  public static final int g = a(0, (short)271);
  public static final int h = a(0, (short)272);
  public static final int i = a(0, (short)273);
  public static final int j = a(0, (short)274);
  public static final int k = a(0, (short)277);
  public static final int l = a(0, (short)278);
  public static final int m = a(0, (short)279);
  public static final int n = a(0, (short)282);
  public static final int o = a(0, (short)283);
  public static final int p = a(0, (short)284);
  public static final int q = a(0, (short)296);
  public static final int r = a(0, (short)301);
  public static final int s = a(0, (short)305);
  public static final int t = a(0, (short)306);
  public static final int u = a(0, (short)315);
  public static final int v = a(0, (short)318);
  public static final int w = a(0, (short)319);
  public static final int x = a(0, (short)529);
  public static final int y = a(0, (short)530);
  public static final int z = a(0, (short)531);
  private hwx bu = new hwx(br);
  private final DateFormat bv = new SimpleDateFormat("yyyy:MM:dd kk:mm:ss");
  private final DateFormat bw = new SimpleDateFormat("yyyy:MM:dd");
  private final Calendar bx = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
  private SparseIntArray by = null;
  
  static
  {
    A = a(0, (short)532);
    B = a(0, (short)33432);
    C = a(0, (short)34665);
    D = a(0, (short)34853);
    E = a(1, (short)513);
    F = a(1, (short)514);
    G = a(2, (short)33434);
    H = a(2, (short)33437);
    I = a(2, (short)34850);
    J = a(2, (short)34852);
    K = a(2, (short)34855);
    L = a(2, (short)34856);
    M = a(2, (short)36864);
    N = a(2, (short)36867);
    O = a(2, (short)36868);
    P = a(2, (short)37121);
    Q = a(2, (short)37122);
    R = a(2, (short)37377);
    S = a(2, (short)37378);
    T = a(2, (short)37379);
    U = a(2, (short)37380);
    V = a(2, (short)37381);
    W = a(2, (short)37382);
    X = a(2, (short)37383);
    Y = a(2, (short)37384);
    Z = a(2, (short)37385);
    aa = a(2, (short)37386);
    ab = a(2, (short)37396);
    ac = a(2, (short)37500);
    ad = a(2, (short)37510);
    ae = a(2, (short)37520);
    af = a(2, (short)37521);
    ag = a(2, (short)37522);
    ah = a(2, (short)40960);
    ai = a(2, (short)40961);
    aj = a(2, (short)40962);
    ak = a(2, (short)40963);
    al = a(2, (short)40964);
    am = a(2, (short)40965);
    an = a(2, (short)41483);
    ao = a(2, (short)41484);
    ap = a(2, (short)41486);
    aq = a(2, (short)41487);
    ar = a(2, (short)41488);
    as = a(2, (short)41492);
    at = a(2, (short)41493);
    au = a(2, (short)41495);
    av = a(2, (short)41728);
    aw = a(2, (short)41729);
    ax = a(2, (short)41730);
    ay = a(2, (short)41985);
    az = a(2, (short)41986);
    aA = a(2, (short)41987);
    aB = a(2, (short)41988);
    aC = a(2, (short)41989);
    aD = a(2, (short)41990);
    aE = a(2, (short)41991);
    aF = a(2, (short)41992);
    aG = a(2, (short)41993);
    aH = a(2, (short)41994);
    aI = a(2, (short)41995);
    aJ = a(2, (short)41996);
    aK = a(2, (short)42016);
    aL = a(4, (short)0);
    aM = a(4, (short)1);
    aN = a(4, (short)2);
    aO = a(4, (short)3);
    aP = a(4, (short)4);
    aQ = a(4, (short)5);
    aR = a(4, (short)6);
    aS = a(4, (short)7);
    aT = a(4, (short)8);
    aU = a(4, (short)9);
    aV = a(4, (short)10);
    aW = a(4, (short)11);
    aX = a(4, (short)12);
    aY = a(4, (short)13);
    aZ = a(4, (short)14);
    ba = a(4, (short)15);
    bb = a(4, (short)16);
    bc = a(4, (short)17);
    bd = a(4, (short)18);
    be = a(4, (short)19);
    bf = a(4, (short)20);
    bg = a(4, (short)21);
    bh = a(4, (short)22);
    bi = a(4, (short)23);
    bj = a(4, (short)24);
    bk = a(4, (short)25);
    bl = a(4, (short)26);
    bm = a(4, (short)27);
    bn = a(4, (short)28);
    bo = a(4, (short)29);
    bp = a(4, (short)30);
    bq = a(3, (short)1);
    HashSet localHashSet = new HashSet();
    bs = localHashSet;
    localHashSet.add(Short.valueOf((short)D));
    bs.add(Short.valueOf((short)C));
    bs.add(Short.valueOf((short)E));
    bs.add(Short.valueOf((short)am));
    bs.add(Short.valueOf((short)i));
    localHashSet = new HashSet(bs);
    bt = localHashSet;
    localHashSet.add(Short.valueOf((short)-1));
    bt.add(Short.valueOf((short)F));
    bt.add(Short.valueOf((short)m));
  }
  
  public hww()
  {
    bw.setTimeZone(TimeZone.getTimeZone("UTC"));
  }
  
  private static int a(int paramInt, short paramShort)
  {
    return 0xFFFF & paramShort | paramInt << 16;
  }
  
  private static int a(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt.length == 0) {
      i3 = 0;
    }
    int[] arrayOfInt;
    int i2;
    int i1;
    do
    {
      return i3;
      arrayOfInt = hxi.a;
      i2 = 0;
      i1 = 0;
      i3 = i1;
    } while (i2 >= 5);
    int i5 = paramArrayOfInt.length;
    int i3 = 0;
    for (;;)
    {
      int i4 = i1;
      if (i3 < i5)
      {
        i4 = paramArrayOfInt[i3];
        if (arrayOfInt[i2] == i4) {
          i4 = i1 | 1 << i2;
        }
      }
      else
      {
        i2 += 1;
        i1 = i4;
        break;
      }
      i3 += 1;
    }
  }
  
  public static short a(int paramInt)
  {
    return (short)paramInt;
  }
  
  protected static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Throwable paramCloseable) {}
  }
  
  private static void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte['Ѐ'];
    for (int i1 = paramInputStream.read(arrayOfByte, 0, 1024); i1 != -1; i1 = paramInputStream.read(arrayOfByte, 0, 1024)) {
      paramOutputStream.write(arrayOfByte, 0, i1);
    }
  }
  
  private void a(Collection<hxh> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      hxh localhxh = (hxh)paramCollection.next();
      bu.a(localhxh);
    }
  }
  
  protected static boolean a(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    int[] arrayOfInt = hxi.a;
    int i1 = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < arrayOfInt.length)
      {
        if ((paramInt2 == arrayOfInt[i1]) && ((paramInt1 >>> 24 >> i1 & 0x1) == 1)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  /* Error */
  private boolean a(String paramString, Collection<hxh> paramCollection)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aconst_null
    //   4: astore 7
    //   6: iconst_0
    //   7: istore_3
    //   8: new 522	java/io/File
    //   11: dup
    //   12: aload_1
    //   13: invokespecial 523	java/io/File:<init>	(Ljava/lang/String;)V
    //   16: astore 9
    //   18: new 525	java/io/BufferedInputStream
    //   21: dup
    //   22: new 527	java/io/FileInputStream
    //   25: dup
    //   26: aload 9
    //   28: invokespecial 530	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   31: invokespecial 533	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   34: astore_1
    //   35: aload_1
    //   36: astore 6
    //   38: aload_1
    //   39: aload_0
    //   40: invokestatic 538	hxc:a	(Ljava/io/InputStream;Lhww;)Lhxc;
    //   43: astore 10
    //   45: aload_1
    //   46: astore 6
    //   48: aload 10
    //   50: invokevirtual 541	hxc:i	()I
    //   53: i2l
    //   54: lstore 4
    //   56: aload_1
    //   57: astore 6
    //   59: aload_1
    //   60: invokevirtual 542	java/io/InputStream:close	()V
    //   63: new 544	java/io/RandomAccessFile
    //   66: dup
    //   67: aload 9
    //   69: ldc_w 546
    //   72: invokespecial 549	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   75: astore_1
    //   76: aload_1
    //   77: invokevirtual 553	java/io/RandomAccessFile:length	()J
    //   80: lload 4
    //   82: lcmp
    //   83: ifge +67 -> 150
    //   86: new 518	java/io/IOException
    //   89: dup
    //   90: ldc_w 555
    //   93: invokespecial 556	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   96: athrow
    //   97: astore_2
    //   98: aconst_null
    //   99: astore 6
    //   101: aload_1
    //   102: astore 7
    //   104: aload 6
    //   106: astore_1
    //   107: aload_1
    //   108: astore 6
    //   110: aload 7
    //   112: invokestatic 558	hww:a	(Ljava/io/Closeable;)V
    //   115: aload_1
    //   116: astore 6
    //   118: aload_2
    //   119: athrow
    //   120: astore_1
    //   121: aload 6
    //   123: astore_2
    //   124: aload_2
    //   125: invokestatic 558	hww:a	(Ljava/io/Closeable;)V
    //   128: aload_1
    //   129: athrow
    //   130: astore_2
    //   131: aload_1
    //   132: astore 6
    //   134: new 518	java/io/IOException
    //   137: dup
    //   138: ldc_w 560
    //   141: aload_2
    //   142: invokespecial 563	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   145: athrow
    //   146: astore_2
    //   147: goto -40 -> 107
    //   150: lload 4
    //   152: lconst_0
    //   153: lcmp
    //   154: ifle +22 -> 176
    //   157: aload_0
    //   158: aload_1
    //   159: invokevirtual 567	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   162: getstatic 573	java/nio/channels/FileChannel$MapMode:READ_WRITE	Ljava/nio/channels/FileChannel$MapMode;
    //   165: lconst_0
    //   166: lload 4
    //   168: invokevirtual 579	java/nio/channels/FileChannel:map	(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    //   171: aload_2
    //   172: invokespecial 582	hww:a	(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    //   175: istore_3
    //   176: aconst_null
    //   177: invokestatic 558	hww:a	(Ljava/io/Closeable;)V
    //   180: aload_1
    //   181: invokevirtual 583	java/io/RandomAccessFile:close	()V
    //   184: iload_3
    //   185: ireturn
    //   186: astore_1
    //   187: aload 8
    //   189: astore_2
    //   190: goto -66 -> 124
    //   193: astore_2
    //   194: aconst_null
    //   195: astore_1
    //   196: goto -89 -> 107
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	199	0	this	hww
    //   0	199	1	paramString	String
    //   0	199	2	paramCollection	Collection<hxh>
    //   7	178	3	bool	boolean
    //   54	113	4	l1	long
    //   36	97	6	str1	String
    //   4	107	7	str2	String
    //   1	187	8	localObject	Object
    //   16	52	9	localFile	java.io.File
    //   43	6	10	localhxc	hxc
    // Exception table:
    //   from	to	target	type
    //   76	97	97	java/io/IOException
    //   157	176	97	java/io/IOException
    //   38	45	120	finally
    //   48	56	120	finally
    //   59	63	120	finally
    //   110	115	120	finally
    //   118	120	120	finally
    //   134	146	120	finally
    //   38	45	130	hwy
    //   38	45	146	java/io/IOException
    //   48	56	146	java/io/IOException
    //   59	63	146	java/io/IOException
    //   134	146	146	java/io/IOException
    //   8	35	186	finally
    //   63	76	186	finally
    //   76	97	186	finally
    //   157	176	186	finally
    //   8	35	193	java/io/IOException
    //   63	76	193	java/io/IOException
  }
  
  private boolean a(ByteBuffer paramByteBuffer, Collection<hxh> paramCollection)
  {
    if (paramCollection == null) {
      return false;
    }
    try
    {
      paramByteBuffer = new hwz(paramByteBuffer, this);
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext()) {
        paramByteBuffer.a((hxh)paramCollection.next());
      }
      bool = paramByteBuffer.a();
    }
    catch (hwy paramByteBuffer)
    {
      paramByteBuffer = String.valueOf(paramByteBuffer);
      throw new IOException(String.valueOf(paramByteBuffer).length() + 22 + "Invalid exif format : " + paramByteBuffer);
    }
    boolean bool;
    return bool;
  }
  
  protected static boolean a(short paramShort)
  {
    return bs.contains(Short.valueOf(paramShort));
  }
  
  public static int b(short paramShort)
  {
    switch (paramShort)
    {
    case 1: 
    case 2: 
    case 4: 
    case 5: 
    case 7: 
    default: 
      return 0;
    case 6: 
      return 90;
    case 3: 
      return 180;
    }
    return 270;
  }
  
  private hxh b(int paramInt1, int paramInt2)
  {
    if (!hxh.a(paramInt2)) {
      return null;
    }
    return bu.a((short)paramInt1, paramInt2);
  }
  
  private OutputStream c(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Argument is null");
    }
    try
    {
      paramString = new FileOutputStream(paramString);
      paramString = new hxb(paramString, this);
      paramString.a(bu);
      return paramString;
    }
    catch (FileNotFoundException paramString)
    {
      a(null);
      throw paramString;
    }
  }
  
  private int d(int paramInt)
  {
    if (a().get(paramInt) == 0) {
      return -1;
    }
    return paramInt >>> 16;
  }
  
  protected SparseIntArray a()
  {
    if (by == null)
    {
      by = new SparseIntArray();
      int i1 = a(new int[] { 0, 1 }) << 24;
      by.put(g, i1 | 0x20000);
      by.put(a, i1 | 0x40000 | 0x1);
      by.put(b, i1 | 0x40000 | 0x1);
      by.put(c, i1 | 0x30000 | 0x3);
      by.put(d, i1 | 0x30000 | 0x1);
      by.put(e, i1 | 0x30000 | 0x1);
      by.put(j, i1 | 0x30000 | 0x1);
      by.put(k, i1 | 0x30000 | 0x1);
      by.put(p, i1 | 0x30000 | 0x1);
      by.put(y, i1 | 0x30000 | 0x2);
      by.put(z, i1 | 0x30000 | 0x1);
      by.put(n, i1 | 0x50000 | 0x1);
      by.put(o, i1 | 0x50000 | 0x1);
      by.put(q, i1 | 0x30000 | 0x1);
      by.put(i, i1 | 0x40000);
      by.put(l, i1 | 0x40000 | 0x1);
      by.put(m, i1 | 0x40000);
      by.put(r, i1 | 0x30000 | 0x300);
      by.put(v, i1 | 0x50000 | 0x2);
      by.put(w, i1 | 0x50000 | 0x6);
      by.put(x, i1 | 0x50000 | 0x3);
      by.put(A, i1 | 0x50000 | 0x6);
      by.put(t, i1 | 0x20000 | 0x14);
      by.put(f, i1 | 0x20000);
      by.put(g, i1 | 0x20000);
      by.put(h, i1 | 0x20000);
      by.put(s, i1 | 0x20000);
      by.put(u, i1 | 0x20000);
      by.put(B, i1 | 0x20000);
      by.put(C, i1 | 0x40000 | 0x1);
      by.put(D, i1 | 0x40000 | 0x1);
      i1 = a(new int[] { 1 }) << 24;
      by.put(E, i1 | 0x40000 | 0x1);
      by.put(F, i1 | 0x40000 | 0x1);
      i1 = a(new int[] { 2 }) << 24;
      by.put(M, i1 | 0x70000 | 0x4);
      by.put(ah, i1 | 0x70000 | 0x4);
      by.put(ai, i1 | 0x30000 | 0x1);
      by.put(P, i1 | 0x70000 | 0x4);
      by.put(Q, i1 | 0x50000 | 0x1);
      by.put(aj, i1 | 0x40000 | 0x1);
      by.put(ak, i1 | 0x40000 | 0x1);
      by.put(ac, i1 | 0x70000);
      by.put(ad, i1 | 0x70000);
      by.put(al, i1 | 0x20000 | 0xD);
      by.put(N, i1 | 0x20000 | 0x14);
      by.put(O, i1 | 0x20000 | 0x14);
      by.put(ae, i1 | 0x20000);
      by.put(af, i1 | 0x20000);
      by.put(ag, i1 | 0x20000);
      by.put(aK, i1 | 0x20000 | 0x21);
      by.put(G, i1 | 0x50000 | 0x1);
      by.put(H, i1 | 0x50000 | 0x1);
      by.put(I, i1 | 0x30000 | 0x1);
      by.put(J, i1 | 0x20000);
      by.put(K, i1 | 0x30000);
      by.put(L, i1 | 0x70000);
      by.put(R, 0xA0000 | i1 | 0x1);
      by.put(S, i1 | 0x50000 | 0x1);
      by.put(T, 0xA0000 | i1 | 0x1);
      by.put(U, 0xA0000 | i1 | 0x1);
      by.put(V, i1 | 0x50000 | 0x1);
      by.put(W, i1 | 0x50000 | 0x1);
      by.put(X, i1 | 0x30000 | 0x1);
      by.put(Y, i1 | 0x30000 | 0x1);
      by.put(Z, i1 | 0x30000 | 0x1);
      by.put(aa, i1 | 0x50000 | 0x1);
      by.put(ab, i1 | 0x30000);
      by.put(an, i1 | 0x50000 | 0x1);
      by.put(ao, i1 | 0x70000);
      by.put(ap, i1 | 0x50000 | 0x1);
      by.put(aq, i1 | 0x50000 | 0x1);
      by.put(ar, i1 | 0x30000 | 0x1);
      by.put(as, i1 | 0x30000 | 0x2);
      by.put(at, i1 | 0x50000 | 0x1);
      by.put(au, i1 | 0x30000 | 0x1);
      by.put(av, i1 | 0x70000 | 0x1);
      by.put(aw, i1 | 0x70000 | 0x1);
      by.put(ax, i1 | 0x70000);
      by.put(ay, i1 | 0x30000 | 0x1);
      by.put(az, i1 | 0x30000 | 0x1);
      by.put(aA, i1 | 0x30000 | 0x1);
      by.put(aB, i1 | 0x50000 | 0x1);
      by.put(aC, i1 | 0x30000 | 0x1);
      by.put(aD, i1 | 0x30000 | 0x1);
      by.put(aE, i1 | 0x50000 | 0x1);
      by.put(aF, i1 | 0x30000 | 0x1);
      by.put(aG, i1 | 0x30000 | 0x1);
      by.put(aH, i1 | 0x30000 | 0x1);
      by.put(aI, i1 | 0x70000);
      by.put(aJ, i1 | 0x30000 | 0x1);
      by.put(am, i1 | 0x40000 | 0x1);
      i1 = a(new int[] { 4 }) << 24;
      by.put(aL, 0x10000 | i1 | 0x4);
      by.put(aM, i1 | 0x20000 | 0x2);
      by.put(aO, i1 | 0x20000 | 0x2);
      by.put(aN, 0xA0000 | i1 | 0x3);
      by.put(aP, 0xA0000 | i1 | 0x3);
      by.put(aQ, 0x10000 | i1 | 0x1);
      by.put(aR, i1 | 0x50000 | 0x1);
      by.put(aS, i1 | 0x50000 | 0x3);
      by.put(aT, i1 | 0x20000);
      by.put(aU, i1 | 0x20000 | 0x2);
      by.put(aV, i1 | 0x20000 | 0x2);
      by.put(aW, i1 | 0x50000 | 0x1);
      by.put(aX, i1 | 0x20000 | 0x2);
      by.put(aY, i1 | 0x50000 | 0x1);
      by.put(aZ, i1 | 0x20000 | 0x2);
      by.put(ba, i1 | 0x50000 | 0x1);
      by.put(bb, i1 | 0x20000 | 0x2);
      by.put(bc, i1 | 0x50000 | 0x1);
      by.put(bd, i1 | 0x20000);
      by.put(be, i1 | 0x20000 | 0x2);
      by.put(bf, i1 | 0x50000 | 0x1);
      by.put(bi, i1 | 0x20000 | 0x2);
      by.put(bj, i1 | 0x50000 | 0x1);
      by.put(bk, i1 | 0x20000 | 0x2);
      by.put(bl, i1 | 0x50000 | 0x1);
      by.put(bm, i1 | 0x70000);
      by.put(bn, i1 | 0x70000);
      by.put(bo, i1 | 0x20000 | 0xB);
      by.put(bp, i1 | 0x30000 | 0xB);
      i1 = a(new int[] { 3 });
      by.put(bq, i1 << 24 | 0x20000);
    }
    return by;
  }
  
  public void a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      throw new IllegalArgumentException("Argument is null");
    }
    try
    {
      paramInputStream = new hxg(this).a(paramInputStream);
      bu = paramInputStream;
      return;
    }
    catch (hwy paramInputStream)
    {
      paramInputStream = String.valueOf(paramInputStream);
      throw new IOException(String.valueOf(paramInputStream).length() + 22 + "Invalid exif format : " + paramInputStream);
    }
  }
  
  /* Error */
  public void a(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +14 -> 15
    //   4: new 632	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc_w 634
    //   11: invokespecial 635	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   14: athrow
    //   15: new 525	java/io/BufferedInputStream
    //   18: dup
    //   19: new 527	java/io/FileInputStream
    //   22: dup
    //   23: aload_1
    //   24: invokespecial 678	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   27: invokespecial 533	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   30: astore_2
    //   31: aload_0
    //   32: aload_2
    //   33: invokevirtual 680	hww:a	(Ljava/io/InputStream;)V
    //   36: aload_2
    //   37: invokevirtual 542	java/io/InputStream:close	()V
    //   40: return
    //   41: astore_1
    //   42: aconst_null
    //   43: astore_2
    //   44: aload_2
    //   45: invokestatic 558	hww:a	(Ljava/io/Closeable;)V
    //   48: aload_1
    //   49: athrow
    //   50: astore_1
    //   51: goto -7 -> 44
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	hww
    //   0	54	1	paramString	String
    //   30	15	2	localBufferedInputStream	java.io.BufferedInputStream
    // Exception table:
    //   from	to	target	type
    //   15	31	41	java/io/IOException
    //   31	36	50	java/io/IOException
  }
  
  public boolean a(int paramInt, Object paramObject)
  {
    hxh localhxh = b(paramInt, d(paramInt));
    if (localhxh == null) {
      return false;
    }
    return localhxh.a(paramObject);
  }
  
  public Integer b(int paramInt)
  {
    Object localObject = b(paramInt, d(paramInt));
    if (localObject == null) {}
    for (localObject = null; (localObject == null) || (localObject.length <= 0); localObject = ((hxh)localObject).g()) {
      return null;
    }
    return Integer.valueOf(localObject[0]);
  }
  
  /* Error */
  public void b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_3
    //   5: aload_0
    //   6: getfield 425	hww:bu	Lhwx;
    //   9: invokevirtual 698	hwx:h	()Ljava/util/List;
    //   12: astore 6
    //   14: aload_0
    //   15: aload_1
    //   16: aload 6
    //   18: invokespecial 700	hww:a	(Ljava/lang/String;Ljava/util/Collection;)Z
    //   21: ifne +162 -> 183
    //   24: aload_0
    //   25: getfield 425	hww:bu	Lhwx;
    //   28: astore 5
    //   30: aload_0
    //   31: new 420	hwx
    //   34: dup
    //   35: getstatic 416	hww:br	Ljava/nio/ByteOrder;
    //   38: invokespecial 423	hwx:<init>	(Ljava/nio/ByteOrder;)V
    //   41: putfield 425	hww:bu	Lhwx;
    //   44: new 527	java/io/FileInputStream
    //   47: dup
    //   48: aload_1
    //   49: invokespecial 678	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   52: astore_2
    //   53: new 702	java/io/ByteArrayOutputStream
    //   56: dup
    //   57: invokespecial 703	java/io/ByteArrayOutputStream:<init>	()V
    //   60: astore_3
    //   61: aload_2
    //   62: aload_3
    //   63: invokestatic 705	hww:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   66: aload_3
    //   67: invokevirtual 709	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   70: astore 7
    //   72: aload_0
    //   73: new 711	java/io/ByteArrayInputStream
    //   76: dup
    //   77: aload 7
    //   79: invokespecial 714	java/io/ByteArrayInputStream:<init>	([B)V
    //   82: invokevirtual 680	hww:a	(Ljava/io/InputStream;)V
    //   85: aload 6
    //   87: ifnull +120 -> 207
    //   90: aload_0
    //   91: aload 6
    //   93: invokespecial 716	hww:a	(Ljava/util/Collection;)V
    //   96: goto +111 -> 207
    //   99: new 632	java/lang/IllegalArgumentException
    //   102: dup
    //   103: ldc_w 634
    //   106: invokespecial 635	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   109: athrow
    //   110: astore_3
    //   111: aload_2
    //   112: astore_1
    //   113: aload_3
    //   114: astore_2
    //   115: aload_1
    //   116: invokestatic 558	hww:a	(Ljava/io/Closeable;)V
    //   119: aload_2
    //   120: athrow
    //   121: astore_3
    //   122: aload_1
    //   123: astore_2
    //   124: aload_3
    //   125: astore_1
    //   126: aload_2
    //   127: ifnull +7 -> 134
    //   130: aload_2
    //   131: invokevirtual 717	java/io/FileInputStream:close	()V
    //   134: aload_0
    //   135: aload 5
    //   137: putfield 425	hww:bu	Lhwx;
    //   140: aload_1
    //   141: athrow
    //   142: aload 4
    //   144: astore_3
    //   145: aload_0
    //   146: aload_1
    //   147: invokespecial 719	hww:c	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   150: astore_1
    //   151: aload_1
    //   152: astore_3
    //   153: aload_1
    //   154: aload 7
    //   156: iconst_0
    //   157: aload 7
    //   159: arraylength
    //   160: invokevirtual 491	java/io/OutputStream:write	([BII)V
    //   163: aload_1
    //   164: astore_3
    //   165: aload_1
    //   166: invokevirtual 722	java/io/OutputStream:flush	()V
    //   169: aload_1
    //   170: invokevirtual 723	java/io/OutputStream:close	()V
    //   173: aload_2
    //   174: invokevirtual 717	java/io/FileInputStream:close	()V
    //   177: aload_0
    //   178: aload 5
    //   180: putfield 425	hww:bu	Lhwx;
    //   183: return
    //   184: astore_1
    //   185: aload_3
    //   186: invokestatic 558	hww:a	(Ljava/io/Closeable;)V
    //   189: aload_1
    //   190: athrow
    //   191: astore_1
    //   192: goto -66 -> 126
    //   195: astore_1
    //   196: aconst_null
    //   197: astore_2
    //   198: goto -72 -> 126
    //   201: astore_2
    //   202: aload_3
    //   203: astore_1
    //   204: goto -89 -> 115
    //   207: aload 7
    //   209: ifnull -110 -> 99
    //   212: aload_1
    //   213: ifnonnull -71 -> 142
    //   216: goto -117 -> 99
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	219	0	this	hww
    //   0	219	1	paramString	String
    //   52	146	2	localObject1	Object
    //   201	1	2	localIOException1	IOException
    //   4	63	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   110	4	3	localIOException2	IOException
    //   121	4	3	localObject2	Object
    //   144	59	3	localObject3	Object
    //   1	142	4	localObject4	Object
    //   28	151	5	localhwx	hwx
    //   12	80	6	localList	java.util.List
    //   70	138	7	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   53	85	110	java/io/IOException
    //   90	96	110	java/io/IOException
    //   99	110	110	java/io/IOException
    //   169	173	110	java/io/IOException
    //   185	191	110	java/io/IOException
    //   115	121	121	finally
    //   145	151	184	java/io/IOException
    //   153	163	184	java/io/IOException
    //   165	169	184	java/io/IOException
    //   53	85	191	finally
    //   90	96	191	finally
    //   99	110	191	finally
    //   145	151	191	finally
    //   153	163	191	finally
    //   165	169	191	finally
    //   169	173	191	finally
    //   185	191	191	finally
    //   44	53	195	finally
    //   44	53	201	java/io/IOException
  }
  
  protected hxh c(int paramInt)
  {
    int i1 = a().get(paramInt);
    if (i1 == 0) {
      return null;
    }
    short s1 = (short)(i1 >> 16 & 0xFF);
    i1 &= 0xFFFF;
    if (i1 != 0) {}
    for (boolean bool = true;; bool = false) {
      return new hxh((short)paramInt, s1, i1, paramInt >>> 16, bool);
    }
  }
}

/* Location:
 * Qualified Name:     hww
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */