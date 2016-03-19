package org.chromium.net;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.security.KeyChain;
import android.telephony.TelephonyManager;
import java.io.IOException;
import java.net.URLConnection;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.annotations.CalledByNativeUnchecked;

class AndroidNetworkLibrary
{
  @CalledByNativeUnchecked
  public static void addTestRootCertificate(byte[] arg0)
  {
    X509Util.a();
    X509Certificate localX509Certificate = X509Util.a(???);
    synchronized (X509Util.b)
    {
      X509Util.a.setCertificateEntry("root_cert_" + Integer.toString(X509Util.a.size()), localX509Certificate);
      X509Util.b();
      return;
    }
  }
  
  @CalledByNativeUnchecked
  public static void clearTestRootCertificates()
  {
    
    try
    {
      synchronized (X509Util.b)
      {
        X509Util.a.load(null);
        X509Util.b();
        return;
      }
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  @CalledByNative
  private static boolean getIsRoaming(Context paramContext)
  {
    return ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo().isRoaming();
  }
  
  @CalledByNative
  public static String getMimeTypeFromExtension(String paramString)
  {
    return URLConnection.guessContentTypeFromName("foo." + paramString);
  }
  
  @CalledByNative
  private static String getNetworkCountryIso(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (paramContext == null) {
      return "";
    }
    return paramContext.getNetworkCountryIso();
  }
  
  @CalledByNative
  private static String getNetworkOperator(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (paramContext == null) {
      return "";
    }
    return paramContext.getNetworkOperator();
  }
  
  @CalledByNative
  private static String getSimOperator(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (paramContext == null) {
      return "";
    }
    return paramContext.getSimOperator();
  }
  
  /* Error */
  @CalledByNative
  public static boolean haveOnlyLoopbackAddresses()
  {
    // Byte code:
    //   0: invokestatic 126	java/net/NetworkInterface:getNetworkInterfaces	()Ljava/util/Enumeration;
    //   3: astore_1
    //   4: aload_1
    //   5: ifnonnull +23 -> 28
    //   8: iconst_0
    //   9: ireturn
    //   10: astore_1
    //   11: new 29	java/lang/StringBuilder
    //   14: dup
    //   15: ldc -128
    //   17: invokespecial 34	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   24: pop
    //   25: iconst_0
    //   26: ireturn
    //   27: astore_2
    //   28: aload_1
    //   29: invokeinterface 136 1 0
    //   34: ifeq +31 -> 65
    //   37: aload_1
    //   38: invokeinterface 140 1 0
    //   43: checkcast 122	java/net/NetworkInterface
    //   46: astore_2
    //   47: aload_2
    //   48: invokevirtual 143	java/net/NetworkInterface:isUp	()Z
    //   51: ifeq -23 -> 28
    //   54: aload_2
    //   55: invokevirtual 146	java/net/NetworkInterface:isLoopback	()Z
    //   58: istore_0
    //   59: iload_0
    //   60: ifne -32 -> 28
    //   63: iconst_0
    //   64: ireturn
    //   65: iconst_1
    //   66: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   58	2	0	bool	boolean
    //   3	2	1	localEnumeration	java.util.Enumeration
    //   10	28	1	localException	Exception
    //   27	1	2	localSocketException	java.net.SocketException
    //   46	9	2	localNetworkInterface	java.net.NetworkInterface
    // Exception table:
    //   from	to	target	type
    //   0	4	10	java/lang/Exception
    //   47	59	27	java/net/SocketException
  }
  
  @CalledByNative
  public static boolean storeCertificate(Context paramContext, int paramInt, byte[] paramArrayOfByte)
  {
    for (;;)
    {
      try
      {
        localIntent = KeyChain.createInstallIntent();
        localIntent.addFlags(268435456);
        switch (paramInt)
        {
        case 1: 
        case 2: 
          localIntent.putExtra("CERT", paramArrayOfByte);
          paramContext.startActivity(localIntent);
          return true;
        }
      }
      catch (ActivityNotFoundException paramContext)
      {
        Intent localIntent;
        new StringBuilder("could not store crypto file: ").append(paramContext);
        return false;
      }
      localIntent.putExtra("PKCS12", paramArrayOfByte);
    }
    return false;
  }
  
  @CalledByNative
  public static boolean storeKeyPair(Context paramContext, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      Intent localIntent = KeyChain.createInstallIntent();
      localIntent.putExtra("PKEY", paramArrayOfByte2);
      localIntent.putExtra("KEY", paramArrayOfByte1);
      localIntent.addFlags(268435456);
      paramContext.startActivity(localIntent);
      return true;
    }
    catch (ActivityNotFoundException paramContext)
    {
      new StringBuilder("could not store key pair: ").append(paramContext);
    }
    return false;
  }
  
  @CalledByNative
  public static AndroidCertVerifyResult verifyServerCertificates(byte[][] paramArrayOfByte, String paramString1, String paramString2)
  {
    try
    {
      paramArrayOfByte = X509Util.a(paramArrayOfByte, paramString1, paramString2);
      return paramArrayOfByte;
    }
    catch (KeyStoreException paramArrayOfByte)
    {
      return new AndroidCertVerifyResult(-1);
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      return new AndroidCertVerifyResult(-1);
    }
    catch (IllegalArgumentException paramArrayOfByte) {}
    return new AndroidCertVerifyResult(-1);
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.AndroidNetworkLibrary
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */