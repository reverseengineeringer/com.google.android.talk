import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.libraries.hangouts.video.internal.MediaSources;
import com.google.android.libraries.hangouts.video.internal.Stats;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public final class hej
  extends Handler
{
  private hei a;
  
  static
  {
    hbs.a(Integer.valueOf(10), Integer.valueOf(10));
  }
  
  public hej() {}
  
  public hej(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  static String a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      hbs.a("Unknown type");
      return "Unknown type";
    case 0: 
      return "CHATROOM_ENTERED";
    case 1: 
      return "ENDPOINT_ENTERED";
    case 2: 
      return "ENDPOINT_EXITED";
    case 3: 
      return "ENDPOINT_CHANGED";
    case 4: 
      return "ENDPOINT_AUDIO_MUTE_STATE_CHANGED";
    }
    return "ENDPOINT_VIDEO_MUTE_STATE_CHANGED";
  }
  
  public void a(hei paramhei)
  {
    a = paramhei;
  }
  
  public void handleMessage(Message paramMessage)
  {
    int i = 1;
    if (a == null) {
      return;
    }
    Object localObject2 = paramMessage.getData();
    label350:
    Object localObject1;
    switch (what)
    {
    default: 
      i = what;
      hlk.a("vclib", 32 + "Unknown message type " + i);
      return;
    case 0: 
      if (arg1 == 1) {}
      for (boolean bool = true;; bool = false)
      {
        a.c(bool);
        return;
      }
    case 9: 
      paramMessage = ((Bundle)localObject2).getString("str1");
      a.e(paramMessage);
      return;
    case 1: 
      a.b(arg1, ((Bundle)localObject2).getString("str1"));
      return;
    case 10: 
      a.b(arg1);
      return;
    case 2: 
      i = arg1;
      ((Bundle)localObject2).getString("str1");
      str1 = ((Bundle)localObject2).getString("str2");
      if (hlk.a(3))
      {
        paramMessage = String.valueOf(hcs.d(i));
        paramMessage = String.valueOf(String.valueOf(str1).length() + 62 + String.valueOf(paramMessage).length() + "handleMessage(MEDIA_STATE_CHANGED): for sessionId: " + str1 + " new state=" + paramMessage);
        if (paramMessage.length() == 0) {
          break label350;
        }
      }
      for (paramMessage = "[LibjingleEventHandler] ".concat(paramMessage);; paramMessage = new String("[LibjingleEventHandler] "))
      {
        hlk.a(3, "vclib", paramMessage);
        a.b(str1, i);
        return;
      }
    case 3: 
      a.b((Stats)obj);
      if (arg1 != 0) {}
      while (i != 0)
      {
        a.a((Stats)obj);
        return;
        i = 0;
      }
    case 4: 
      ((Bundle)localObject2).getString("str1");
      i = arg1;
      int j = arg2;
      str1 = ((Bundle)localObject2).getString("str2");
      localObject1 = ((Bundle)localObject2).getString("str3");
      String str2 = ((Bundle)localObject2).getString("str4");
      localObject2 = ((Bundle)localObject2).getString("str5");
      a.a(str1, i, j, (String)localObject1, str2, (String)localObject2, (byte[])obj);
      return;
    case 5: 
      str1 = ((Bundle)localObject2).getString("str1");
      a.a(str1, (MediaSources)obj);
      return;
    case 6: 
      str1 = ((Bundle)localObject2).getString("str1");
      a.a(str1, arg1);
      return;
    case 7: 
      a.a(Long.parseLong(((Bundle)localObject2).getString("str1")), ((Bundle)localObject2).getString("str2"), (byte[])obj, arg1);
      return;
    case 8: 
      ((Bundle)localObject2).getString("str1");
      a.a(arg1, arg2, (byte[])obj);
      return;
    case 11: 
      a.b((byte[])obj);
      return;
    case 12: 
      a.c((byte[])obj);
      return;
    case 13: 
      a.c(arg1);
      return;
    case 14: 
      a.d(arg1);
      return;
    case 15: 
      a.d((byte[])obj);
      return;
    case 16: 
      a.e((byte[])obj);
      return;
    case 17: 
      a.a(arg1, ((Bundle)localObject2).getString("str1"));
      return;
    }
    String str1 = ((Bundle)localObject2).getString("str1");
    try
    {
      localObject1 = ByteBuffer.wrap(MessageDigest.getInstance("MD5").digest(str1.getBytes()));
      a.a(((ByteBuffer)localObject1).getLong(), arg1, arg2);
      return;
    }
    catch (Exception paramMessage)
    {
      paramMessage = String.valueOf(str1);
      if (paramMessage.length() == 0) {}
    }
    for (paramMessage = "MD5 not available for logging UMA event: ".concat(paramMessage);; paramMessage = new String("MD5 not available for logging UMA event: "))
    {
      hlk.a("vclib", paramMessage);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     hej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */