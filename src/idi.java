import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public final class idi
{
  private static final int a;
  private final byte[] b;
  private final long c;
  
  static
  {
    try
    {
      a = MessageDigest.getInstance("SHA-1").getDigestLength();
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new IllegalStateException(localNoSuchAlgorithmException);
    }
  }
  
  private idi(byte[] paramArrayOfByte, long paramLong)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length != a)) {
      throw new IllegalArgumentException("Incorrect fingerprint size");
    }
    b = paramArrayOfByte;
    c = paramLong;
  }
  
  /* Error */
  public static idi a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: sipush 8192
    //   3: newarray <illegal type>
    //   5: astore 6
    //   7: aconst_null
    //   8: astore 5
    //   10: ldc 16
    //   12: invokestatic 22	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   15: astore 4
    //   17: new 52	java/security/DigestInputStream
    //   20: dup
    //   21: new 54	java/io/BufferedInputStream
    //   24: dup
    //   25: aload_0
    //   26: sipush 8192
    //   29: invokespecial 57	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   32: aload 4
    //   34: invokespecial 60	java/security/DigestInputStream:<init>	(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    //   37: astore 4
    //   39: lconst_0
    //   40: lstore_2
    //   41: aload 4
    //   43: astore_0
    //   44: aload 4
    //   46: aload 6
    //   48: invokevirtual 64	java/security/DigestInputStream:read	([B)I
    //   51: istore_1
    //   52: iload_1
    //   53: iflt +11 -> 64
    //   56: lload_2
    //   57: iload_1
    //   58: i2l
    //   59: ladd
    //   60: lstore_2
    //   61: goto -20 -> 41
    //   64: aload 4
    //   66: invokevirtual 67	java/security/DigestInputStream:close	()V
    //   69: new 2	idi
    //   72: dup
    //   73: aload 4
    //   75: invokevirtual 71	java/security/DigestInputStream:getMessageDigest	()Ljava/security/MessageDigest;
    //   78: invokevirtual 75	java/security/MessageDigest:digest	()[B
    //   81: lload_2
    //   82: invokespecial 77	idi:<init>	([BJ)V
    //   85: areturn
    //   86: astore 5
    //   88: aconst_null
    //   89: astore_0
    //   90: new 30	java/lang/IllegalStateException
    //   93: dup
    //   94: aload 5
    //   96: invokespecial 34	java/lang/IllegalStateException:<init>	(Ljava/lang/Throwable;)V
    //   99: athrow
    //   100: astore 5
    //   102: aload_0
    //   103: astore 4
    //   105: aload 5
    //   107: astore_0
    //   108: aload 4
    //   110: ifnull +8 -> 118
    //   113: aload 4
    //   115: invokevirtual 67	java/security/DigestInputStream:close	()V
    //   118: aload_0
    //   119: athrow
    //   120: astore_0
    //   121: aload 5
    //   123: astore 4
    //   125: goto -17 -> 108
    //   128: astore 5
    //   130: aload 4
    //   132: astore_0
    //   133: goto -43 -> 90
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	136	0	paramInputStream	java.io.InputStream
    //   51	7	1	i	int
    //   40	42	2	l	long
    //   15	116	4	localObject1	Object
    //   8	1	5	localObject2	Object
    //   86	9	5	localNoSuchAlgorithmException1	NoSuchAlgorithmException
    //   100	22	5	localObject3	Object
    //   128	1	5	localNoSuchAlgorithmException2	NoSuchAlgorithmException
    //   5	42	6	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   10	39	86	java/security/NoSuchAlgorithmException
    //   44	52	100	finally
    //   90	100	100	finally
    //   10	39	120	finally
    //   44	52	128	java/security/NoSuchAlgorithmException
  }
  
  public static String a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    paramString = String.valueOf(paramString.substring(0, 32));
    if (paramString.length() != 0) {
      return "cs_01_".concat(paramString);
    }
    return new String("cs_01_");
  }
  
  public String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < a)
    {
      int j = b[i];
      localStringBuilder.append(Integer.toHexString(j >> 4 & 0xF));
      localStringBuilder.append(Integer.toHexString(j & 0xF));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public long b()
  {
    return c;
  }
  
  public byte[] c()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof idi)) {
      return false;
    }
    paramObject = (idi)paramObject;
    return Arrays.equals(b, b);
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(b);
  }
}

/* Location:
 * Qualified Name:     idi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */