import android.content.Context;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class bva
{
  AtomicBoolean a = new AtomicBoolean(true);
  private final Context b;
  private List<String> c;
  
  bva(Context paramContext)
  {
    b = paramContext;
    aal.a(paramContext).a(new bvb(this));
  }
  
  public boolean a()
  {
    if (Build.VERSION.SDK_INT < 19) {
      return false;
    }
    String str = Settings.Secure.getString(b.getContentResolver(), "default_input_method");
    if (str != null)
    {
      if (a.compareAndSet(true, false))
      {
        localObject = aal.a(b, "babel_allowed_emoji_imes", "com.google.android.inputmethod.latin/");
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          break label115;
        }
        localObject = null;
        c = ((List)localObject);
      }
      if (c == null) {
        break label128;
      }
      localObject = c.iterator();
      do
      {
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
      } while (!str.startsWith((String)((Iterator)localObject).next()));
    }
    label115:
    label128:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        break label133;
      }
      return false;
      localObject = Arrays.asList(((String)localObject).split(","));
      break;
    }
    label133:
    Object localObject = ((InputMethodManager)b.getSystemService("input_method")).getCurrentInputMethodSubtype();
    if (localObject == null) {
      return false;
    }
    return ((InputMethodSubtype)localObject).containsExtraValueKey("EmojiCapable");
  }
}

/* Location:
 * Qualified Name:     bva
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */