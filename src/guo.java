import android.os.ParcelFileDescriptor;
import java.util.concurrent.Callable;

final class guo
  implements Callable<Boolean>
{
  guo(gun paramgun, ParcelFileDescriptor paramParcelFileDescriptor, byte[] paramArrayOfByte) {}
  
  /* Error */
  private Boolean a()
  {
    // Byte code:
    //   0: ldc 30
    //   2: iconst_3
    //   3: invokestatic 36	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   6: ifeq +20 -> 26
    //   9: new 38	java/lang/StringBuilder
    //   12: dup
    //   13: ldc 40
    //   15: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   18: aload_0
    //   19: getfield 19	guo:a	Landroid/os/ParcelFileDescriptor;
    //   22: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   25: pop
    //   26: new 49	android/os/ParcelFileDescriptor$AutoCloseOutputStream
    //   29: dup
    //   30: aload_0
    //   31: getfield 19	guo:a	Landroid/os/ParcelFileDescriptor;
    //   34: invokespecial 52	android/os/ParcelFileDescriptor$AutoCloseOutputStream:<init>	(Landroid/os/ParcelFileDescriptor;)V
    //   37: astore_1
    //   38: aload_1
    //   39: aload_0
    //   40: getfield 21	guo:b	[B
    //   43: invokevirtual 56	android/os/ParcelFileDescriptor$AutoCloseOutputStream:write	([B)V
    //   46: aload_1
    //   47: invokevirtual 59	android/os/ParcelFileDescriptor$AutoCloseOutputStream:flush	()V
    //   50: ldc 30
    //   52: iconst_3
    //   53: invokestatic 36	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   56: ifeq +20 -> 76
    //   59: new 38	java/lang/StringBuilder
    //   62: dup
    //   63: ldc 61
    //   65: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   68: aload_0
    //   69: getfield 19	guo:a	Landroid/os/ParcelFileDescriptor;
    //   72: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   75: pop
    //   76: iconst_1
    //   77: invokestatic 67	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   80: astore_2
    //   81: ldc 30
    //   83: iconst_3
    //   84: invokestatic 36	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   87: ifeq +20 -> 107
    //   90: new 38	java/lang/StringBuilder
    //   93: dup
    //   94: ldc 69
    //   96: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   99: aload_0
    //   100: getfield 19	guo:a	Landroid/os/ParcelFileDescriptor;
    //   103: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   106: pop
    //   107: aload_1
    //   108: invokevirtual 72	android/os/ParcelFileDescriptor$AutoCloseOutputStream:close	()V
    //   111: aload_2
    //   112: areturn
    //   113: astore_2
    //   114: new 38	java/lang/StringBuilder
    //   117: dup
    //   118: ldc 74
    //   120: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   123: aload_0
    //   124: getfield 19	guo:a	Landroid/os/ParcelFileDescriptor;
    //   127: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   130: pop
    //   131: ldc 30
    //   133: iconst_3
    //   134: invokestatic 36	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   137: ifeq +20 -> 157
    //   140: new 38	java/lang/StringBuilder
    //   143: dup
    //   144: ldc 69
    //   146: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   149: aload_0
    //   150: getfield 19	guo:a	Landroid/os/ParcelFileDescriptor;
    //   153: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   156: pop
    //   157: aload_1
    //   158: invokevirtual 72	android/os/ParcelFileDescriptor$AutoCloseOutputStream:close	()V
    //   161: iconst_0
    //   162: invokestatic 67	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   165: areturn
    //   166: astore_2
    //   167: ldc 30
    //   169: iconst_3
    //   170: invokestatic 36	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   173: ifeq +20 -> 193
    //   176: new 38	java/lang/StringBuilder
    //   179: dup
    //   180: ldc 69
    //   182: invokespecial 43	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   185: aload_0
    //   186: getfield 19	guo:a	Landroid/os/ParcelFileDescriptor;
    //   189: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   192: pop
    //   193: aload_1
    //   194: invokevirtual 72	android/os/ParcelFileDescriptor$AutoCloseOutputStream:close	()V
    //   197: aload_2
    //   198: athrow
    //   199: astore_1
    //   200: goto -3 -> 197
    //   203: astore_1
    //   204: goto -43 -> 161
    //   207: astore_1
    //   208: aload_2
    //   209: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	210	0	this	guo
    //   37	157	1	localAutoCloseOutputStream	android.os.ParcelFileDescriptor.AutoCloseOutputStream
    //   199	1	1	localIOException1	java.io.IOException
    //   203	1	1	localIOException2	java.io.IOException
    //   207	1	1	localIOException3	java.io.IOException
    //   80	32	2	localBoolean1	Boolean
    //   113	1	2	localIOException4	java.io.IOException
    //   166	43	2	localBoolean2	Boolean
    // Exception table:
    //   from	to	target	type
    //   38	76	113	java/io/IOException
    //   76	81	113	java/io/IOException
    //   38	76	166	finally
    //   76	81	166	finally
    //   114	131	166	finally
    //   167	193	199	java/io/IOException
    //   193	197	199	java/io/IOException
    //   131	157	203	java/io/IOException
    //   157	161	203	java/io/IOException
    //   81	107	207	java/io/IOException
    //   107	111	207	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     guo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */