import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class ejs
  extends ikd
{
  private Uri a;
  
  public ejs(Context paramContext)
  {
    super(paramContext, (byte)0);
  }
  
  public static Uri a(int paramInt)
  {
    boolean bool;
    SharedPreferences localSharedPreferences;
    String str;
    if ((paramInt == aal.hM) || (paramInt == aal.hL))
    {
      bool = true;
      hbs.a("Expected condition to be true", bool);
      localSharedPreferences = aal.oJ.getSharedPreferences("babel_ringtones", 0);
      if (paramInt != aal.hM) {
        break label62;
      }
      str = "message_ringtone";
    }
    for (;;)
    {
      str = localSharedPreferences.getString(str, null);
      if (str != null) {
        break label104;
      }
      return null;
      bool = false;
      break;
      label62:
      if (paramInt == aal.hL)
      {
        str = "incoming_call_ringtone";
      }
      else
      {
        hbs.a(26 + "Unknown resId: " + paramInt);
        str = null;
      }
    }
    label104:
    return Uri.parse(str);
  }
  
  public static void a()
  {
    SharedPreferences.Editor localEditor = aal.oJ.getSharedPreferences("babel_ringtones", 0).edit();
    Uri localUri = eyt.a(aal.hM, StressMode.ak, ".ogg", 2);
    if (localUri != null) {
      localEditor.putString("message_ringtone", localUri.toString());
    }
    localUri = eyt.a(aal.hL, StressMode.dw, ".ogg", 1);
    if (localUri != null) {
      localEditor.putString("incoming_call_ringtone", localUri.toString());
    }
    localEditor.apply();
  }
  
  public void a(Uri paramUri)
  {
    a = paramUri;
    b(eyt.a(y(), paramUri));
  }
  
  public void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (paramString = null;; paramString = Uri.parse(paramString))
    {
      a(paramString);
      return;
    }
  }
  
  public Uri b()
  {
    return a;
  }
  
  protected Uri c()
  {
    if (eyt.a.equals(a)) {
      return a(aal.hM);
    }
    if (eyt.b.equals(a)) {
      return a(aal.hL);
    }
    return super.c();
  }
}

/* Location:
 * Qualified Name:     ejs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */