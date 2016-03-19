import android.content.Context;
import android.os.AsyncTask;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

final class etq
  extends AsyncTask<Void, Void, Long>
{
  private static final byte[] a = { 0, 1 };
  private static final byte[] b = { 1, 1 };
  private static final byte[] c = { a[0], a[1], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
  private final ets d;
  private etr e;
  
  etq(Context paramContext, etr parametr)
  {
    paramContext = (ets)ilh.b(paramContext, ets.class);
    if (paramContext != null) {}
    for (d = paramContext;; d = new ets())
    {
      e = parametr;
      return;
    }
  }
  
  private static boolean a(DatagramSocket paramDatagramSocket, InetAddress paramInetAddress)
  {
    byte[] arrayOfByte = new byte['Ѐ'];
    paramInetAddress = new DatagramPacket(c, c.length, paramInetAddress, 19302);
    DatagramPacket localDatagramPacket = new DatagramPacket(arrayOfByte, 1024);
    try
    {
      paramDatagramSocket.send(paramInetAddress);
      paramDatagramSocket.receive(localDatagramPacket);
      if ((localDatagramPacket.getLength() > 2) && (arrayOfByte[0] == b[0]) && (arrayOfByte[1] == b[1])) {
        return true;
      }
    }
    catch (IOException paramDatagramSocket)
    {
      paramDatagramSocket = String.valueOf(paramDatagramSocket);
      ezi.c("Babel_telephony", String.valueOf(paramDatagramSocket).length() + 44 + "TeleStunPing.bindToStunServer, bind failed: " + paramDatagramSocket, new Object[0]);
      return false;
    }
    return false;
  }
  
  /* Error */
  private Long c()
  {
    // Byte code:
    //   0: ldc 104
    //   2: invokestatic 110	java/net/InetAddress:getByName	(Ljava/lang/String;)Ljava/net/InetAddress;
    //   5: astore 7
    //   7: aload_0
    //   8: getfield 37	etq:d	Lets;
    //   11: invokevirtual 113	ets:a	()Ljava/net/DatagramSocket;
    //   14: astore 6
    //   16: aload 6
    //   18: sipush 1000
    //   21: invokevirtual 116	java/net/DatagramSocket:setSoTimeout	(I)V
    //   24: iconst_0
    //   25: istore_1
    //   26: aload_0
    //   27: invokevirtual 120	etq:isCancelled	()Z
    //   30: ifne +146 -> 176
    //   33: iload_1
    //   34: iconst_3
    //   35: if_icmpge +141 -> 176
    //   38: iload_1
    //   39: iconst_1
    //   40: iadd
    //   41: istore_1
    //   42: invokestatic 126	android/os/SystemClock:elapsedRealtime	()J
    //   45: lstore_2
    //   46: aload 6
    //   48: aload 7
    //   50: invokestatic 128	etq:a	(Ljava/net/DatagramSocket;Ljava/net/InetAddress;)Z
    //   53: ifeq -27 -> 26
    //   56: invokestatic 126	android/os/SystemClock:elapsedRealtime	()J
    //   59: lstore 4
    //   61: aload 6
    //   63: invokevirtual 131	java/net/DatagramSocket:close	()V
    //   66: lload 4
    //   68: lload_2
    //   69: lsub
    //   70: invokestatic 136	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   73: areturn
    //   74: astore 6
    //   76: aload 6
    //   78: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   81: astore 6
    //   83: ldc 72
    //   85: new 74	java/lang/StringBuilder
    //   88: dup
    //   89: aload 6
    //   91: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   94: invokevirtual 77	java/lang/String:length	()I
    //   97: bipush 64
    //   99: iadd
    //   100: invokespecial 80	java/lang/StringBuilder:<init>	(I)V
    //   103: ldc -118
    //   105: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: aload 6
    //   110: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: iconst_0
    //   117: anewarray 92	java/lang/Object
    //   120: invokestatic 140	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   123: aconst_null
    //   124: areturn
    //   125: astore 6
    //   127: aload 6
    //   129: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   132: astore 6
    //   134: ldc 72
    //   136: new 74	java/lang/StringBuilder
    //   139: dup
    //   140: aload 6
    //   142: invokestatic 70	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   145: invokevirtual 77	java/lang/String:length	()I
    //   148: bipush 54
    //   150: iadd
    //   151: invokespecial 80	java/lang/StringBuilder:<init>	(I)V
    //   154: ldc -114
    //   156: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: aload 6
    //   161: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: iconst_0
    //   168: anewarray 92	java/lang/Object
    //   171: invokestatic 140	ezi:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   174: aconst_null
    //   175: areturn
    //   176: aload 6
    //   178: invokevirtual 131	java/net/DatagramSocket:close	()V
    //   181: aconst_null
    //   182: areturn
    //   183: astore 7
    //   185: aload 6
    //   187: invokevirtual 131	java/net/DatagramSocket:close	()V
    //   190: aload 7
    //   192: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	193	0	this	etq
    //   25	17	1	i	int
    //   45	24	2	l1	long
    //   59	8	4	l2	long
    //   14	48	6	localDatagramSocket	DatagramSocket
    //   74	3	6	localUnknownHostException	java.net.UnknownHostException
    //   81	28	6	str1	String
    //   125	3	6	localSocketException	java.net.SocketException
    //   132	54	6	str2	String
    //   5	44	7	localInetAddress	InetAddress
    //   183	8	7	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	7	74	java/net/UnknownHostException
    //   7	24	125	java/net/SocketException
    //   26	33	183	finally
    //   42	46	183	finally
    //   46	61	183	finally
  }
  
  void a()
  {
    ezi.c("Babel_telephony", "TeleStunPing.startPing", new Object[0]);
    executeOnExecutor(d.b(), new Void[0]);
  }
  
  void b()
  {
    ezi.c("Babel_telephony", "TeleStunPing.cancelPing", new Object[0]);
    e = null;
    cancel(true);
  }
}

/* Location:
 * Qualified Name:     etq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */