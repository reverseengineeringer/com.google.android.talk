package com.google.android.libraries.hangouts.video.internal;

import aen;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.apps.common.proguard.UsedByNative;
import hbs;
import heh;
import hgu;
import hkt;
import hlk;
import hlp;
import java.lang.ref.WeakReference;
import java.util.Locale;

@UsedByNative
public class Libjingle
{
  private final Context a;
  private final Handler b;
  private boolean c;
  private heh d;
  @UsedByNative
  private long mNativeContext;
  
  static
  {
    int i = 5;
    try
    {
      System.loadLibrary("videochat_jni");
      nativeInit();
      j = hlk.b;
      if (j == 4)
      {
        nativeSetLoggingLevel(i);
        return;
      }
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      for (;;)
      {
        int j;
        hlk.a(5, "vclib", "Unable to load videochat_jni.so with error", localUnsatisfiedLinkError);
        System.loadLibrary("videochat_jni_symbolized");
        continue;
        i = j;
      }
    }
  }
  
  public Libjingle(Context paramContext, Handler paramHandler, heh paramheh)
  {
    a = paramContext;
    b = paramHandler;
    d = paramheh;
  }
  
  private static int a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return paramInt;
    }
    return paramInt - 1;
  }
  
  public static void a() {}
  
  private static int d(String paramString)
  {
    int i = 2;
    if (Log.isLoggable(paramString, 2)) {
      i = 1;
    }
    while (Log.isLoggable(paramString, 3)) {
      return i;
    }
    if (Log.isLoggable(paramString, 4)) {
      return 3;
    }
    return 4;
  }
  
  @UsedByNative
  private static void dispatchNativeEvent(Object paramObject1, int paramInt1, int paramInt2, int paramInt3, Object paramObject2, Object paramObject3, Object paramObject4, Object paramObject5, Object paramObject6, Object paramObject7)
  {
    paramObject1 = (Libjingle)((WeakReference)paramObject1).get();
    if ((paramObject1 != null) && (mNativeContext != 0L))
    {
      paramObject7 = b.obtainMessage(paramInt1, paramInt2, paramInt3, paramObject7);
      Bundle localBundle = new Bundle(2);
      localBundle.putString("str1", (String)paramObject2);
      localBundle.putString("str2", (String)paramObject3);
      localBundle.putString("str3", (String)paramObject4);
      localBundle.putString("str4", (String)paramObject5);
      localBundle.putString("str5", (String)paramObject6);
      ((Message)paramObject7).setData(localBundle);
      b.sendMessage((Message)paramObject7);
      return;
    }
    hlk.b("vclib", "Dropping libjingle native message (id=%d) because the native client is being released.", new Object[] { Integer.valueOf(paramInt1) });
  }
  
  private static final native void nativeAddLogComment(String paramString);
  
  private final native void nativeBlockMedia(String paramString);
  
  private final native void nativeCallHangout(String paramString, int paramInt, byte[] paramArrayOfByte);
  
  private final native void nativeEndCall();
  
  private final native void nativeEndCallAndSignOut();
  
  private final native void nativeFinalize();
  
  private static native void nativeInit();
  
  private final native void nativeInvitePstn(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, byte[] paramArrayOfByte);
  
  private final native void nativeInviteUsers(boolean paramBoolean1, String[] paramArrayOfString, int paramInt, boolean paramBoolean2, boolean paramBoolean3, String paramString);
  
  private final native void nativePublishAudioMuteState(boolean paramBoolean);
  
  private final native void nativePublishVideoMuteState(boolean paramBoolean);
  
  private final native void nativeRelease();
  
  private final native void nativeRemoteMute(String paramString);
  
  private final native void nativeRequestVideoViews(VideoViewRequest[] paramArrayOfVideoViewRequest);
  
  private final native void nativeSendDtmf(char paramChar, int paramInt, String paramString);
  
  private final native void nativeSetGServicesOverride(String paramString1, String paramString2);
  
  private static final native void nativeSetLoggingLevel(int paramInt);
  
  private final native void nativeSetVideoCallOptions(byte[] paramArrayOfByte);
  
  private final native void nativeSetup(Object paramObject1, Object paramObject2, String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, boolean paramBoolean);
  
  private final native void nativeSignIn(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, long paramLong1, long paramLong2);
  
  public void a(char paramChar, int paramInt, String paramString)
  {
    if (c)
    {
      nativeSendDtmf(paramChar, paramInt, paramString);
      return;
    }
    hlk.a(5, "vclib", "sendDtmf: not initialized");
  }
  
  public void a(hkt paramhkt, long paramLong1, long paramLong2)
  {
    if (c)
    {
      nativeSignIn(paramhkt.a(), paramhkt.q(), paramhkt.f(), paramhkt.p(), paramhkt.o(), paramhkt.b(), paramLong1, paramLong2);
      return;
    }
    hlk.a(5, "vclib", "signIn: not initialized");
  }
  
  public void a(hkt paramhkt, String paramString)
  {
    int k = 0;
    int i;
    if (paramhkt.t())
    {
      i = 1;
      if (!paramhkt.v()) {
        break label65;
      }
    }
    label65:
    for (int j = 2;; j = 0)
    {
      if (paramhkt.w()) {
        k = 4;
      }
      hbs.a("Expected condition to be true", c);
      nativeCallHangout(paramString, j | i | 0x0 | k, paramhkt.x());
      return;
      i = 0;
      break;
    }
  }
  
  public void a(String paramString)
  {
    if (c)
    {
      nativeRemoteMute(paramString);
      return;
    }
    hlk.a(5, "vclib", "remoteMute: not initialized");
  }
  
  public void a(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, byte[] paramArrayOfByte)
  {
    if (c)
    {
      nativeInvitePstn(paramString1, paramString2, paramBoolean1, paramBoolean2, paramBoolean3, paramArrayOfByte);
      return;
    }
    hlk.a(5, "vclib", "invitePstn: not initialized");
  }
  
  public void a(String paramString1, String[][] paramArrayOfString, String paramString2)
  {
    if (c)
    {
      hlk.a(3, "vclib", "init: already initialized");
      return;
    }
    c = true;
    int k = paramArrayOfString.length;
    int i = 0;
    if (i < k)
    {
      Object localObject = paramArrayOfString[i];
      str = localObject[0];
      localObject = localObject[1];
      if ("USE_DEFAULT_NETWORKS_ONLY".equals(localObject))
      {
        int m = d.a(str, 1);
        if (m == 1)
        {
          if (Build.VERSION.SDK_INT < 21) {
            break label120;
          }
          j = 1;
          label92:
          if (j == 0) {}
        }
        else
        {
          if (m != 2) {
            break label111;
          }
        }
        nativeSetGServicesOverride("USE_DEFAULT_NETWORKS_ONLY", "true");
      }
      for (;;)
      {
        label111:
        i += 1;
        break;
        label120:
        j = 0;
        break label92;
        str = d.a(str);
        if (str != null) {
          nativeSetGServicesOverride((String)localObject, str);
        }
      }
    }
    paramArrayOfString = hgu.a(0);
    nativeSetGServicesOverride("VIDEO_DECODE_MAX_WIDTH", Integer.toString(ba));
    nativeSetGServicesOverride("VIDEO_DECODE_MAX_HEIGHT", Integer.toString(bb));
    nativeSetGServicesOverride("VIDEO_DECODE_MAX_FRAMERATE", Integer.toString(paramArrayOfString.d()));
    hlk.a(3, "vclib", "init: call nativeSetup");
    i = a(d("vclib:videoLogging"));
    int j = a(d("vclib:audioLogging"));
    String str = Locale.getDefault().getLanguage();
    paramArrayOfString = str;
    if (str == null) {
      paramArrayOfString = "en";
    }
    str = String.valueOf(Build.PRODUCT);
    if (str.length() != 0) {}
    for (str = "Product: ".concat(str);; str = new String("Product: "))
    {
      hlk.a(3, "vclib", str);
      nativeSetup(a, new WeakReference(this), paramString1, paramArrayOfString, paramString2, i, j, aen.f());
      hlk.a(3, "vclib", "init: nativeSetup returned");
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "true";; str = "false")
    {
      nativeSetGServicesOverride("ENABLE_NOISE_SUPPRESSION", str);
      return;
    }
  }
  
  public void a(boolean paramBoolean1, String[] paramArrayOfString, int paramInt, boolean paramBoolean2, boolean paramBoolean3, String paramString)
  {
    boolean bool2 = true;
    boolean bool1 = bool2;
    if (paramInt != 0) {
      if (paramInt != 1) {
        break label48;
      }
    }
    label48:
    for (bool1 = bool2;; bool1 = false)
    {
      hbs.a("Expected condition to be true", bool1);
      if (!c) {
        break;
      }
      nativeInviteUsers(paramBoolean1, paramArrayOfString, paramInt, paramBoolean2, paramBoolean3, paramString);
      return;
    }
    hlk.a(5, "vclib", "inviteUsers: not initialized");
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    nativeSetVideoCallOptions(paramArrayOfByte);
  }
  
  public void a(VideoViewRequest[] paramArrayOfVideoViewRequest)
  {
    if (c)
    {
      nativeRequestVideoViews(paramArrayOfVideoViewRequest);
      return;
    }
    hlk.a(5, "vclib", "requestVideoViews: not initialized");
  }
  
  public void b()
  {
    if (!c)
    {
      hlk.a(5, "vclib", "release: not initialized");
      return;
    }
    c = false;
    hlk.a(3, "vclib", "Release: call nativeRelease");
    nativeRelease();
  }
  
  public void b(String paramString)
  {
    if (c)
    {
      nativeBlockMedia(paramString);
      return;
    }
    hlk.a(5, "vclib", "blockMedia: not initialized");
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "true";; str = "false")
    {
      nativeSetGServicesOverride("ENABLE_ECHO_CANCELLATION", str);
      return;
    }
  }
  
  public void c(String paramString)
  {
    nativeAddLogComment(paramString);
  }
  
  public void c(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "true";; str = "false")
    {
      nativeSetGServicesOverride("ENABLE_AUTO_GAIN_CONTROL", str);
      return;
    }
  }
  
  public boolean c()
  {
    return c;
  }
  
  public void d()
  {
    nativeSetGServicesOverride("AUDIO_RECORDING_DEVICE", Integer.toString(7));
  }
  
  public void d(boolean paramBoolean)
  {
    if (c)
    {
      nativePublishAudioMuteState(paramBoolean);
      return;
    }
    hlk.a(5, "vclib", "publishAudioMuteState: not initialized");
  }
  
  public void e()
  {
    if (c)
    {
      nativeEndCallAndSignOut();
      return;
    }
    hlk.a(5, "vclib", "endCallAndSignOut: not initialized");
  }
  
  public void e(boolean paramBoolean)
  {
    if (c)
    {
      nativePublishVideoMuteState(paramBoolean);
      return;
    }
    hlk.a(5, "vclib", "publishVideoMuteState: not initialized");
  }
  
  public void f()
  {
    if (c)
    {
      nativeEndCall();
      return;
    }
    hlk.a(5, "vclib", "terminateCall: not initialized");
  }
  
  protected void finalize()
  {
    nativeFinalize();
  }
  
  public final native void handleApiaryResponse(long paramLong, byte[] paramArrayOfByte);
  
  public final native void handlePushNotification(byte[] paramArrayOfByte);
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.Libjingle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */