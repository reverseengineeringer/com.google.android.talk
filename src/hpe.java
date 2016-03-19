import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.SecureRandomSpi;

public final class hpe
  extends SecureRandomSpi
{
  private static final File a = new File("/dev/urandom");
  private static final Object b = new Object();
  private static DataInputStream c;
  private static OutputStream d;
  private boolean e;
  
  private static DataInputStream a()
  {
    synchronized (b)
    {
      DataInputStream localDataInputStream = c;
      if (localDataInputStream == null) {}
      try
      {
        c = new DataInputStream(new FileInputStream(a));
        localDataInputStream = c;
        return localDataInputStream;
      }
      catch (IOException localIOException)
      {
        String str = String.valueOf(a);
        throw new SecurityException(String.valueOf(str).length() + 27 + "Failed to open " + str + " for reading", localIOException);
      }
    }
  }
  
  private static OutputStream b()
  {
    synchronized (b)
    {
      OutputStream localOutputStream = d;
      if (localOutputStream == null) {}
      try
      {
        d = new FileOutputStream(a);
        localOutputStream = d;
        return localOutputStream;
      }
      catch (IOException localIOException)
      {
        String str = String.valueOf(a);
        throw new SecurityException(String.valueOf(str).length() + 27 + "Failed to open " + str + " for writing", localIOException);
      }
    }
  }
  
  protected byte[] engineGenerateSeed(int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    engineNextBytes(arrayOfByte);
    return arrayOfByte;
  }
  
  /* Error */
  protected void engineNextBytes(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 97	hpe:e	Z
    //   4: ifne +10 -> 14
    //   7: aload_0
    //   8: invokestatic 102	hpd:a	()[B
    //   11: invokevirtual 105	hpe:engineSetSeed	([B)V
    //   14: getstatic 32	hpe:b	Ljava/lang/Object;
    //   17: astore_2
    //   18: aload_2
    //   19: monitorenter
    //   20: invokestatic 107	hpe:a	()Ljava/io/DataInputStream;
    //   23: astore_3
    //   24: aload_2
    //   25: monitorexit
    //   26: aload_3
    //   27: monitorenter
    //   28: aload_3
    //   29: aload_1
    //   30: invokevirtual 110	java/io/DataInputStream:readFully	([B)V
    //   33: aload_3
    //   34: monitorexit
    //   35: return
    //   36: astore_1
    //   37: aload_2
    //   38: monitorexit
    //   39: aload_1
    //   40: athrow
    //   41: astore_1
    //   42: getstatic 26	hpe:a	Ljava/io/File;
    //   45: invokestatic 55	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   48: astore_2
    //   49: new 57	java/lang/SecurityException
    //   52: dup
    //   53: new 59	java/lang/StringBuilder
    //   56: dup
    //   57: aload_2
    //   58: invokestatic 55	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   61: invokevirtual 63	java/lang/String:length	()I
    //   64: bipush 20
    //   66: iadd
    //   67: invokespecial 66	java/lang/StringBuilder:<init>	(I)V
    //   70: ldc 112
    //   72: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: aload_2
    //   76: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: aload_1
    //   83: invokespecial 81	java/lang/SecurityException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   86: athrow
    //   87: astore_1
    //   88: aload_3
    //   89: monitorexit
    //   90: aload_1
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	hpe
    //   0	92	1	paramArrayOfByte	byte[]
    //   23	66	3	localDataInputStream	DataInputStream
    // Exception table:
    //   from	to	target	type
    //   20	26	36	finally
    //   37	39	36	finally
    //   14	20	41	java/io/IOException
    //   26	28	41	java/io/IOException
    //   39	41	41	java/io/IOException
    //   90	92	41	java/io/IOException
    //   28	35	87	finally
    //   88	90	87	finally
  }
  
  /* Error */
  protected void engineSetSeed(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: getstatic 32	hpe:b	Ljava/lang/Object;
    //   3: astore_2
    //   4: aload_2
    //   5: monitorenter
    //   6: invokestatic 116	hpe:b	()Ljava/io/OutputStream;
    //   9: astore_3
    //   10: aload_2
    //   11: monitorexit
    //   12: aload_3
    //   13: aload_1
    //   14: invokevirtual 121	java/io/OutputStream:write	([B)V
    //   17: aload_3
    //   18: invokevirtual 124	java/io/OutputStream:flush	()V
    //   21: aload_0
    //   22: iconst_1
    //   23: putfield 97	hpe:e	Z
    //   26: return
    //   27: astore_1
    //   28: aload_2
    //   29: monitorexit
    //   30: aload_1
    //   31: athrow
    //   32: astore_1
    //   33: getstatic 26	hpe:a	Ljava/io/File;
    //   36: invokestatic 55	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   39: astore_2
    //   40: new 57	java/lang/SecurityException
    //   43: dup
    //   44: new 59	java/lang/StringBuilder
    //   47: dup
    //   48: aload_2
    //   49: invokestatic 55	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   52: invokevirtual 63	java/lang/String:length	()I
    //   55: bipush 24
    //   57: iadd
    //   58: invokespecial 66	java/lang/StringBuilder:<init>	(I)V
    //   61: ldc 126
    //   63: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: aload_2
    //   67: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: aload_1
    //   74: invokespecial 81	java/lang/SecurityException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   77: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	78	0	this	hpe
    //   0	78	1	paramArrayOfByte	byte[]
    //   9	9	3	localOutputStream	OutputStream
    // Exception table:
    //   from	to	target	type
    //   6	12	27	finally
    //   28	30	27	finally
    //   0	6	32	java/lang/Exception
    //   12	26	32	java/lang/Exception
    //   30	32	32	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     hpe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */