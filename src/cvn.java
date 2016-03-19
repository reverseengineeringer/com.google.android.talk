import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.os.RemoteException;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public final class cvn
{
  final String a;
  final Map<String, Long> b;
  final Map<String, String> c;
  final ReadWriteLock d = new ReentrantReadWriteLock();
  final Lock e = d.readLock();
  final Lock f = d.writeLock();
  
  public cvn(String paramString)
  {
    a = paramString;
    b = new hq();
    c = new hq();
  }
  
  /* Error */
  private String a(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 39	cvn:f	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 71 1 0
    //   9: aload_0
    //   10: getfield 48	cvn:c	Ljava/util/Map;
    //   13: aload_1
    //   14: invokeinterface 77 2 0
    //   19: checkcast 79	java/lang/String
    //   22: astore 7
    //   24: aload 7
    //   26: ifnonnull +337 -> 363
    //   29: iload_2
    //   30: ifeq +333 -> 363
    //   33: aload_1
    //   34: aload_0
    //   35: getfield 41	cvn:a	Ljava/lang/String;
    //   38: iconst_0
    //   39: invokestatic 84	aal:a	(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    //   42: astore 7
    //   44: aload 7
    //   46: ifnull +314 -> 360
    //   49: aload_0
    //   50: getfield 46	cvn:b	Ljava/util/Map;
    //   53: aload 7
    //   55: invokeinterface 77 2 0
    //   60: checkcast 86	java/lang/Long
    //   63: astore 8
    //   65: invokestatic 92	java/lang/System:currentTimeMillis	()J
    //   68: lstore_3
    //   69: aload 8
    //   71: lconst_0
    //   72: invokestatic 95	aal:a	(Ljava/lang/Long;J)J
    //   75: lstore 5
    //   77: iload_2
    //   78: ifne +19 -> 97
    //   81: aload 8
    //   83: ifnull +14 -> 97
    //   86: lload_3
    //   87: lload 5
    //   89: lsub
    //   90: ldc2_w 96
    //   93: lcmp
    //   94: ifle +266 -> 360
    //   97: aload_0
    //   98: getfield 48	cvn:c	Ljava/util/Map;
    //   101: aload_1
    //   102: invokeinterface 100 2 0
    //   107: pop
    //   108: aload_0
    //   109: getfield 46	cvn:b	Ljava/util/Map;
    //   112: aload 7
    //   114: invokeinterface 100 2 0
    //   119: pop
    //   120: getstatic 104	aal:oJ	Landroid/content/Context;
    //   123: aload 7
    //   125: invokestatic 109	fgk:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   128: aconst_null
    //   129: astore 7
    //   131: aload 7
    //   133: astore 8
    //   135: aload 7
    //   137: ifnonnull +95 -> 232
    //   140: aload 7
    //   142: astore 8
    //   144: aload_0
    //   145: getfield 41	cvn:a	Ljava/lang/String;
    //   148: ifnull +84 -> 232
    //   151: invokestatic 92	java/lang/System:currentTimeMillis	()J
    //   154: lstore_3
    //   155: aload_1
    //   156: aload_0
    //   157: getfield 41	cvn:a	Ljava/lang/String;
    //   160: iconst_0
    //   161: invokestatic 84	aal:a	(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    //   164: astore 8
    //   166: aload 8
    //   168: ifnull +64 -> 232
    //   171: aload_0
    //   172: getfield 48	cvn:c	Ljava/util/Map;
    //   175: aload_1
    //   176: invokeinterface 100 2 0
    //   181: checkcast 79	java/lang/String
    //   184: astore 7
    //   186: aload 7
    //   188: ifnull +15 -> 203
    //   191: aload_0
    //   192: getfield 46	cvn:b	Ljava/util/Map;
    //   195: aload 7
    //   197: invokeinterface 100 2 0
    //   202: pop
    //   203: aload_0
    //   204: getfield 48	cvn:c	Ljava/util/Map;
    //   207: aload_1
    //   208: aload 8
    //   210: invokeinterface 113 3 0
    //   215: pop
    //   216: aload_0
    //   217: getfield 46	cvn:b	Ljava/util/Map;
    //   220: aload 8
    //   222: lload_3
    //   223: invokestatic 117	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   226: invokeinterface 113 3 0
    //   231: pop
    //   232: aload_0
    //   233: getfield 39	cvn:f	Ljava/util/concurrent/locks/Lock;
    //   236: invokeinterface 120 1 0
    //   241: aload 8
    //   243: areturn
    //   244: astore_1
    //   245: ldc 122
    //   247: ldc 124
    //   249: aload_1
    //   250: invokestatic 129	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   253: new 131	dvn
    //   256: dup
    //   257: bipush 100
    //   259: aload_1
    //   260: invokespecial 134	dvn:<init>	(ILjava/lang/Exception;)V
    //   263: athrow
    //   264: astore_1
    //   265: aload_0
    //   266: getfield 39	cvn:f	Ljava/util/concurrent/locks/Lock;
    //   269: invokeinterface 120 1 0
    //   274: aload_1
    //   275: athrow
    //   276: astore_1
    //   277: ldc 122
    //   279: ldc 124
    //   281: aload_1
    //   282: invokestatic 129	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   285: new 131	dvn
    //   288: dup
    //   289: bipush 100
    //   291: aload_1
    //   292: invokespecial 134	dvn:<init>	(ILjava/lang/Exception;)V
    //   295: athrow
    //   296: astore_1
    //   297: ldc 122
    //   299: ldc -120
    //   301: aload_1
    //   302: invokestatic 129	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   305: new 131	dvn
    //   308: dup
    //   309: bipush 102
    //   311: aload_1
    //   312: invokespecial 134	dvn:<init>	(ILjava/lang/Exception;)V
    //   315: athrow
    //   316: astore_1
    //   317: ldc 122
    //   319: ldc 124
    //   321: aload_1
    //   322: invokestatic 129	ezi:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   325: new 131	dvn
    //   328: dup
    //   329: bipush 100
    //   331: aload_1
    //   332: invokespecial 134	dvn:<init>	(ILjava/lang/Exception;)V
    //   335: athrow
    //   336: new 131	dvn
    //   339: dup
    //   340: sipush 139
    //   343: aload_1
    //   344: invokespecial 134	dvn:<init>	(ILjava/lang/Exception;)V
    //   347: athrow
    //   348: astore_1
    //   349: goto -13 -> 336
    //   352: astore_1
    //   353: goto -17 -> 336
    //   356: astore_1
    //   357: goto -21 -> 336
    //   360: goto -229 -> 131
    //   363: goto -319 -> 44
    //   366: astore_1
    //   367: goto -31 -> 336
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	370	0	this	cvn
    //   0	370	1	paramString	String
    //   0	370	2	paramBoolean	boolean
    //   68	155	3	l1	long
    //   75	13	5	l2	long
    //   22	174	7	str	String
    //   63	179	8	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   9	24	244	android/accounts/AuthenticatorException
    //   33	44	244	android/accounts/AuthenticatorException
    //   49	77	244	android/accounts/AuthenticatorException
    //   97	128	244	android/accounts/AuthenticatorException
    //   144	166	244	android/accounts/AuthenticatorException
    //   171	186	244	android/accounts/AuthenticatorException
    //   191	203	244	android/accounts/AuthenticatorException
    //   203	232	244	android/accounts/AuthenticatorException
    //   9	24	264	finally
    //   33	44	264	finally
    //   49	77	264	finally
    //   97	128	264	finally
    //   144	166	264	finally
    //   171	186	264	finally
    //   191	203	264	finally
    //   203	232	264	finally
    //   245	264	264	finally
    //   277	296	264	finally
    //   297	316	264	finally
    //   317	336	264	finally
    //   336	348	264	finally
    //   9	24	276	android/accounts/OperationCanceledException
    //   33	44	276	android/accounts/OperationCanceledException
    //   49	77	276	android/accounts/OperationCanceledException
    //   97	128	276	android/accounts/OperationCanceledException
    //   144	166	276	android/accounts/OperationCanceledException
    //   171	186	276	android/accounts/OperationCanceledException
    //   191	203	276	android/accounts/OperationCanceledException
    //   203	232	276	android/accounts/OperationCanceledException
    //   9	24	296	java/io/IOException
    //   33	44	296	java/io/IOException
    //   49	77	296	java/io/IOException
    //   97	128	296	java/io/IOException
    //   144	166	296	java/io/IOException
    //   171	186	296	java/io/IOException
    //   191	203	296	java/io/IOException
    //   203	232	296	java/io/IOException
    //   9	24	316	ewy
    //   33	44	316	ewy
    //   49	77	316	ewy
    //   97	128	316	ewy
    //   144	166	316	ewy
    //   171	186	316	ewy
    //   191	203	316	ewy
    //   203	232	316	ewy
    //   9	24	348	ewx
    //   33	44	348	ewx
    //   49	77	348	ewx
    //   97	128	348	ewx
    //   144	166	348	ewx
    //   171	186	348	ewx
    //   191	203	348	ewx
    //   203	232	348	ewx
    //   9	24	352	gxg
    //   33	44	352	gxg
    //   49	77	352	gxg
    //   97	128	352	gxg
    //   144	166	352	gxg
    //   171	186	352	gxg
    //   191	203	352	gxg
    //   203	232	352	gxg
    //   9	24	356	android/os/RemoteException
    //   33	44	356	android/os/RemoteException
    //   49	77	356	android/os/RemoteException
    //   97	128	356	android/os/RemoteException
    //   144	166	356	android/os/RemoteException
    //   171	186	356	android/os/RemoteException
    //   191	203	356	android/os/RemoteException
    //   203	232	356	android/os/RemoteException
    //   9	24	366	gxh
    //   33	44	366	gxh
    //   49	77	366	gxh
    //   97	128	366	gxh
    //   144	166	366	gxh
    //   171	186	366	gxh
    //   191	203	366	gxh
    //   203	232	366	gxh
  }
  
  public String a(String paramString)
  {
    return a(paramString, false);
  }
  
  public void b(String paramString)
  {
    try
    {
      aal.a(paramString, a, true);
      return;
    }
    catch (ewx paramString)
    {
      ezi.a("Babel", "Trigger Auth Notification: Ignore AccountNotFoundException", new Object[0]);
      return;
    }
    catch (gxh paramString)
    {
      ezi.a("Babel", "Trigger Auth Notification: Ignore GooglePlayServicesNotAvailableException | RemoteException | GooglePlayServicesRepairableException", new Object[0]);
      return;
    }
    catch (AuthenticatorException paramString)
    {
      ezi.a("Babel", "Trigger Auth Notification: Ignore AuthenticatorException", new Object[0]);
      return;
    }
    catch (OperationCanceledException paramString)
    {
      ezi.a("Babel", "Trigger Auth Notification: Ignore OperationCanceledException", new Object[0]);
      return;
    }
    catch (IOException paramString)
    {
      ezi.a("Babel", "Trigger Auth Notification: Ignore IOException", new Object[0]);
      return;
    }
    catch (ewy paramString)
    {
      ezi.a("Babel", "Trigger Auth Notification: Ignore BabelAuthException", new Object[0]);
      return;
    }
    catch (RemoteException paramString)
    {
      for (;;) {}
    }
    catch (gxg paramString)
    {
      for (;;) {}
    }
  }
  
  public Long c(String paramString)
  {
    e.lock();
    try
    {
      paramString = (Long)b.get(paramString);
      return paramString;
    }
    finally
    {
      e.unlock();
    }
  }
  
  public void d(String paramString)
  {
    a(paramString, true);
  }
}

/* Location:
 * Qualified Name:     cvn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */