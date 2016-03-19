package org.chromium.net;

import android.os.Build.VERSION;
import android.util.Log;
import android.util.Pair;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.security.KeyStore;
import java.security.MessageDigest;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import javax.security.auth.x500.X500Principal;
import mqu;
import mqv;
import mqw;
import mqx;
import org.chromium.base.annotations.JNINamespace;

@JNINamespace
public class X509Util
{
  static KeyStore a;
  static final Object b = new Object();
  private static CertificateFactory c;
  private static mqw d;
  private static mqu e;
  private static mqw f;
  private static KeyStore g;
  private static File h;
  private static Set<Pair<X500Principal, PublicKey>> i;
  private static boolean j;
  private static boolean k = false;
  private static final char[] l = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  
  private static String a(X500Principal paramX500Principal)
  {
    paramX500Principal = MessageDigest.getInstance("MD5").digest(paramX500Principal.getEncoded());
    char[] arrayOfChar = new char[8];
    int m = 0;
    while (m < 4)
    {
      arrayOfChar[(m * 2)] = l[(paramX500Principal[(3 - m)] >> 4 & 0xF)];
      arrayOfChar[(m * 2 + 1)] = l[(paramX500Principal[(3 - m)] & 0xF)];
      m += 1;
    }
    return new String(arrayOfChar);
  }
  
  public static X509Certificate a(byte[] paramArrayOfByte)
  {
    a();
    return (X509Certificate)c.generateCertificate(new ByteArrayInputStream(paramArrayOfByte));
  }
  
  private static mqw a(KeyStore paramKeyStore)
  {
    Object localObject = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
    ((TrustManagerFactory)localObject).init(paramKeyStore);
    paramKeyStore = ((TrustManagerFactory)localObject).getTrustManagers();
    int n = paramKeyStore.length;
    int m = 0;
    while (m < n)
    {
      localObject = paramKeyStore[m];
      if ((localObject instanceof X509TrustManager)) {
        try
        {
          if (Build.VERSION.SDK_INT >= 17) {
            return new mqx((X509TrustManager)localObject);
          }
          mqv localmqv = new mqv((X509TrustManager)localObject);
          return localmqv;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          localObject = localObject.getClass().getName();
          Log.e("X509Util", "Error creating trust manager (" + (String)localObject + "): " + localIllegalArgumentException);
        }
      }
      m += 1;
    }
    Log.e("X509Util", "Could not find suitable trust manager");
    return null;
  }
  
  /* Error */
  public static AndroidCertVerifyResult a(byte[][] paramArrayOfByte, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: aload_0
    //   4: ifnull +14 -> 18
    //   7: aload_0
    //   8: arraylength
    //   9: ifeq +9 -> 18
    //   12: aload_0
    //   13: iconst_0
    //   14: aaload
    //   15: ifnonnull +30 -> 45
    //   18: new 100	java/lang/IllegalArgumentException
    //   21: dup
    //   22: new 146	java/lang/StringBuilder
    //   25: dup
    //   26: ldc -77
    //   28: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   31: aload_0
    //   32: invokestatic 185	java/util/Arrays:deepToString	([Ljava/lang/Object;)Ljava/lang/String;
    //   35: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokespecial 186	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   44: athrow
    //   45: invokestatic 82	org/chromium/net/X509Util:a	()V
    //   48: aload_0
    //   49: arraylength
    //   50: anewarray 97	java/security/cert/X509Certificate
    //   53: astore 6
    //   55: iconst_0
    //   56: istore_3
    //   57: iload_3
    //   58: aload_0
    //   59: arraylength
    //   60: if_icmpge +41 -> 101
    //   63: aload 6
    //   65: iload_3
    //   66: aload_0
    //   67: iload_3
    //   68: aaload
    //   69: invokestatic 188	org/chromium/net/X509Util:a	([B)Ljava/security/cert/X509Certificate;
    //   72: aastore
    //   73: iload_3
    //   74: iconst_1
    //   75: iadd
    //   76: istore_3
    //   77: goto -20 -> 57
    //   80: astore_0
    //   81: new 190	org/chromium/net/AndroidCertVerifyResult
    //   84: dup
    //   85: iconst_m1
    //   86: invokespecial 193	org/chromium/net/AndroidCertVerifyResult:<init>	(I)V
    //   89: areturn
    //   90: astore_0
    //   91: new 190	org/chromium/net/AndroidCertVerifyResult
    //   94: dup
    //   95: bipush -5
    //   97: invokespecial 193	org/chromium/net/AndroidCertVerifyResult:<init>	(I)V
    //   100: areturn
    //   101: aload 6
    //   103: iconst_0
    //   104: aaload
    //   105: invokevirtual 196	java/security/cert/X509Certificate:checkValidity	()V
    //   108: aload 6
    //   110: iconst_0
    //   111: aaload
    //   112: invokestatic 199	org/chromium/net/X509Util:b	(Ljava/security/cert/X509Certificate;)Z
    //   115: ifne +47 -> 162
    //   118: new 190	org/chromium/net/AndroidCertVerifyResult
    //   121: dup
    //   122: bipush -6
    //   124: invokespecial 193	org/chromium/net/AndroidCertVerifyResult:<init>	(I)V
    //   127: astore_0
    //   128: aload_0
    //   129: areturn
    //   130: astore_0
    //   131: new 190	org/chromium/net/AndroidCertVerifyResult
    //   134: dup
    //   135: bipush -3
    //   137: invokespecial 193	org/chromium/net/AndroidCertVerifyResult:<init>	(I)V
    //   140: areturn
    //   141: astore_0
    //   142: new 190	org/chromium/net/AndroidCertVerifyResult
    //   145: dup
    //   146: bipush -4
    //   148: invokespecial 193	org/chromium/net/AndroidCertVerifyResult:<init>	(I)V
    //   151: areturn
    //   152: astore_0
    //   153: new 190	org/chromium/net/AndroidCertVerifyResult
    //   156: dup
    //   157: iconst_m1
    //   158: invokespecial 193	org/chromium/net/AndroidCertVerifyResult:<init>	(I)V
    //   161: areturn
    //   162: getstatic 34	org/chromium/net/X509Util:b	Ljava/lang/Object;
    //   165: astore 5
    //   167: aload 5
    //   169: monitorenter
    //   170: getstatic 201	org/chromium/net/X509Util:d	Lmqw;
    //   173: ifnonnull +23 -> 196
    //   176: new 190	org/chromium/net/AndroidCertVerifyResult
    //   179: dup
    //   180: iconst_m1
    //   181: invokespecial 193	org/chromium/net/AndroidCertVerifyResult:<init>	(I)V
    //   184: astore_0
    //   185: aload 5
    //   187: monitorexit
    //   188: aload_0
    //   189: areturn
    //   190: astore_0
    //   191: aload 5
    //   193: monitorexit
    //   194: aload_0
    //   195: athrow
    //   196: getstatic 201	org/chromium/net/X509Util:d	Lmqw;
    //   199: aload 6
    //   201: aload_1
    //   202: aload_2
    //   203: invokeinterface 206 4 0
    //   208: astore_0
    //   209: aload_0
    //   210: invokeinterface 212 1 0
    //   215: ifle +25 -> 240
    //   218: aload_0
    //   219: aload_0
    //   220: invokeinterface 212 1 0
    //   225: iconst_1
    //   226: isub
    //   227: invokeinterface 216 2 0
    //   232: checkcast 97	java/security/cert/X509Certificate
    //   235: invokestatic 218	org/chromium/net/X509Util:a	(Ljava/security/cert/X509Certificate;)Z
    //   238: istore 4
    //   240: new 190	org/chromium/net/AndroidCertVerifyResult
    //   243: dup
    //   244: iload 4
    //   246: aload_0
    //   247: invokespecial 221	org/chromium/net/AndroidCertVerifyResult:<init>	(ZLjava/util/List;)V
    //   250: astore_0
    //   251: aload 5
    //   253: monitorexit
    //   254: aload_0
    //   255: areturn
    //   256: astore 7
    //   258: getstatic 223	org/chromium/net/X509Util:f	Lmqw;
    //   261: aload 6
    //   263: aload_1
    //   264: aload_2
    //   265: invokeinterface 206 4 0
    //   270: astore_0
    //   271: goto -62 -> 209
    //   274: astore_0
    //   275: new 146	java/lang/StringBuilder
    //   278: dup
    //   279: ldc -31
    //   281: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   284: aload 7
    //   286: invokevirtual 228	java/security/cert/CertificateException:getMessage	()Ljava/lang/String;
    //   289: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: pop
    //   293: new 190	org/chromium/net/AndroidCertVerifyResult
    //   296: dup
    //   297: bipush -2
    //   299: invokespecial 193	org/chromium/net/AndroidCertVerifyResult:<init>	(I)V
    //   302: astore_0
    //   303: aload 5
    //   305: monitorexit
    //   306: aload_0
    //   307: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	308	0	paramArrayOfByte	byte[][]
    //   0	308	1	paramString1	String
    //   0	308	2	paramString2	String
    //   56	21	3	m	int
    //   1	244	4	bool	boolean
    //   53	209	6	arrayOfX509Certificate	X509Certificate[]
    //   256	29	7	localCertificateException	java.security.cert.CertificateException
    // Exception table:
    //   from	to	target	type
    //   45	48	80	java/security/cert/CertificateException
    //   57	73	90	java/security/cert/CertificateException
    //   101	128	130	java/security/cert/CertificateExpiredException
    //   101	128	141	java/security/cert/CertificateNotYetValidException
    //   101	128	152	java/security/cert/CertificateException
    //   170	188	190	finally
    //   191	194	190	finally
    //   196	209	190	finally
    //   209	240	190	finally
    //   240	254	190	finally
    //   258	271	190	finally
    //   275	306	190	finally
    //   196	209	256	java/security/cert/CertificateException
    //   258	271	274	java/security/cert/CertificateException
  }
  
  static void a()
  {
    synchronized (b)
    {
      d();
      return;
    }
  }
  
  private static boolean a(X509Certificate paramX509Certificate)
  {
    if (g == null) {}
    Pair localPair;
    int m;
    Object localObject1;
    do
    {
      return false;
      localPair = new Pair(paramX509Certificate.getSubjectX500Principal(), paramX509Certificate.getPublicKey());
      if (i.contains(localPair)) {
        return true;
      }
      String str = a(paramX509Certificate.getSubjectX500Principal());
      m = 0;
      localObject1 = str + '.' + m;
    } while (!new File(h, (String)localObject1).exists());
    Object localObject2 = g.getCertificate("system:" + (String)localObject1);
    if (localObject2 != null)
    {
      if ((localObject2 instanceof X509Certificate)) {
        break label182;
      }
      localObject2 = localObject2.getClass().getName();
      Log.e("X509Util", "Anchor " + (String)localObject1 + " not an X509Certificate: " + (String)localObject2);
    }
    label182:
    do
    {
      m += 1;
      break;
      localObject1 = (X509Certificate)localObject2;
    } while ((!paramX509Certificate.getSubjectX500Principal().equals(((X509Certificate)localObject1).getSubjectX500Principal())) || (!paramX509Certificate.getPublicKey().equals(((X509Certificate)localObject1).getPublicKey())));
    i.add(localPair);
    return true;
  }
  
  static void b()
  {
    f = a(a);
  }
  
  private static boolean b(X509Certificate paramX509Certificate)
  {
    try
    {
      paramX509Certificate = paramX509Certificate.getExtendedKeyUsage();
      if (paramX509Certificate == null) {
        return true;
      }
    }
    catch (NullPointerException paramX509Certificate)
    {
      return false;
    }
    paramX509Certificate = paramX509Certificate.iterator();
    while (paramX509Certificate.hasNext())
    {
      String str = (String)paramX509Certificate.next();
      if ((str.equals("1.3.6.1.5.5.7.3.1")) || (str.equals("2.5.29.37.0")) || (str.equals("2.16.840.1.113730.4.1")) || (str.equals("1.3.6.1.4.1.311.10.3.3"))) {
        return true;
      }
    }
    return false;
  }
  
  public static void c()
  {
    synchronized (b)
    {
      d = null;
      i = null;
      d();
      nativeNotifyKeyChainChanged();
      return;
    }
  }
  
  /* Error */
  private static void d()
  {
    // Byte code:
    //   0: getstatic 84	org/chromium/net/X509Util:c	Ljava/security/cert/CertificateFactory;
    //   3: ifnonnull +12 -> 15
    //   6: ldc_w 333
    //   9: invokestatic 336	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   12: putstatic 84	org/chromium/net/X509Util:c	Ljava/security/cert/CertificateFactory;
    //   15: getstatic 201	org/chromium/net/X509Util:d	Lmqw;
    //   18: ifnonnull +10 -> 28
    //   21: aconst_null
    //   22: invokestatic 296	org/chromium/net/X509Util:a	(Ljava/security/KeyStore;)Lmqw;
    //   25: putstatic 201	org/chromium/net/X509Util:d	Lmqw;
    //   28: getstatic 338	org/chromium/net/X509Util:j	Z
    //   31: ifne +76 -> 107
    //   34: ldc_w 340
    //   37: invokestatic 343	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   40: putstatic 232	org/chromium/net/X509Util:g	Ljava/security/KeyStore;
    //   43: getstatic 232	org/chromium/net/X509Util:g	Ljava/security/KeyStore;
    //   46: aconst_null
    //   47: invokevirtual 347	java/security/KeyStore:load	(Ljava/security/KeyStore$LoadStoreParameter;)V
    //   50: new 264	java/io/File
    //   53: dup
    //   54: new 146	java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial 256	java/lang/StringBuilder:<init>	()V
    //   61: ldc_w 349
    //   64: invokestatic 355	java/lang/System:getenv	(Ljava/lang/String;)Ljava/lang/String;
    //   67: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: ldc_w 357
    //   73: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokespecial 358	java/io/File:<init>	(Ljava/lang/String;)V
    //   82: putstatic 266	org/chromium/net/X509Util:h	Ljava/io/File;
    //   85: getstatic 36	org/chromium/net/X509Util:k	Z
    //   88: ifne +15 -> 103
    //   91: getstatic 232	org/chromium/net/X509Util:g	Ljava/security/KeyStore;
    //   94: ifnull +109 -> 203
    //   97: iconst_1
    //   98: istore_0
    //   99: iload_0
    //   100: invokestatic 362	org/chromium/net/X509Util:nativeRecordCertVerifyCapabilitiesHistogram	(Z)V
    //   103: iconst_1
    //   104: putstatic 338	org/chromium/net/X509Util:j	Z
    //   107: getstatic 247	org/chromium/net/X509Util:i	Ljava/util/Set;
    //   110: ifnonnull +13 -> 123
    //   113: new 364	java/util/HashSet
    //   116: dup
    //   117: invokespecial 365	java/util/HashSet:<init>	()V
    //   120: putstatic 247	org/chromium/net/X509Util:i	Ljava/util/Set;
    //   123: getstatic 294	org/chromium/net/X509Util:a	Ljava/security/KeyStore;
    //   126: ifnonnull +19 -> 145
    //   129: invokestatic 368	java/security/KeyStore:getDefaultType	()Ljava/lang/String;
    //   132: invokestatic 343	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   135: putstatic 294	org/chromium/net/X509Util:a	Ljava/security/KeyStore;
    //   138: getstatic 294	org/chromium/net/X509Util:a	Ljava/security/KeyStore;
    //   141: aconst_null
    //   142: invokevirtual 347	java/security/KeyStore:load	(Ljava/security/KeyStore$LoadStoreParameter;)V
    //   145: getstatic 223	org/chromium/net/X509Util:f	Lmqw;
    //   148: ifnonnull +12 -> 160
    //   151: getstatic 294	org/chromium/net/X509Util:a	Ljava/security/KeyStore;
    //   154: invokestatic 296	org/chromium/net/X509Util:a	(Ljava/security/KeyStore;)Lmqw;
    //   157: putstatic 223	org/chromium/net/X509Util:f	Lmqw;
    //   160: getstatic 36	org/chromium/net/X509Util:k	Z
    //   163: ifne +39 -> 202
    //   166: getstatic 370	org/chromium/net/X509Util:e	Lmqu;
    //   169: ifnonnull +33 -> 202
    //   172: new 372	mqu
    //   175: dup
    //   176: invokespecial 373	mqu:<init>	()V
    //   179: putstatic 370	org/chromium/net/X509Util:e	Lmqu;
    //   182: getstatic 378	org/chromium/base/ContextUtils:a	Landroid/content/Context;
    //   185: getstatic 370	org/chromium/net/X509Util:e	Lmqu;
    //   188: new 380	android/content/IntentFilter
    //   191: dup
    //   192: ldc_w 382
    //   195: invokespecial 383	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   198: invokevirtual 389	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   201: pop
    //   202: return
    //   203: iconst_0
    //   204: istore_0
    //   205: goto -106 -> 99
    //   208: astore_1
    //   209: goto -64 -> 145
    //   212: astore_1
    //   213: goto -128 -> 85
    //   216: astore_1
    //   217: goto -167 -> 50
    // Local variable table:
    //   start	length	slot	name	signature
    //   98	107	0	bool	boolean
    //   208	1	1	localIOException1	java.io.IOException
    //   212	1	1	localKeyStoreException	java.security.KeyStoreException
    //   216	1	1	localIOException2	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   138	145	208	java/io/IOException
    //   34	43	212	java/security/KeyStoreException
    //   43	50	212	java/security/KeyStoreException
    //   50	85	212	java/security/KeyStoreException
    //   43	50	216	java/io/IOException
  }
  
  private static native void nativeNotifyKeyChainChanged();
  
  private static native void nativeRecordCertVerifyCapabilitiesHistogram(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     org.chromium.net.X509Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */