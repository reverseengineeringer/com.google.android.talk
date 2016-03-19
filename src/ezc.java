import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.util.Linkify;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class ezc
{
  public static String a;
  private static final int[] b = { 16843534 };
  private static final imw c = new imw("debug.chat.debug_enabled");
  
  public static int a(Integer paramInteger)
  {
    switch (aal.a(paramInteger, -1))
    {
    case 1: 
    default: 
      return -1;
    case 0: 
    case 4: 
      return 1;
    case 2: 
      return 3;
    case 3: 
      return 4;
    case 5: 
      return 7;
    }
    return 8;
  }
  
  public static int a(String paramString1, String paramString2)
  {
    int j = 0;
    int i = 0;
    if (paramString1 != null)
    {
      int m = paramString2.length();
      int k;
      for (j = -m;; j = k)
      {
        k = paramString1.indexOf(paramString2, j + m);
        j = i;
        if (k < 0) {
          break;
        }
        i += 1;
      }
    }
    return j;
  }
  
  public static int a(boolean paramBoolean)
  {
    if (paramBoolean) {
      return 1;
    }
    return 0;
  }
  
  public static Spannable a(CharSequence paramCharSequence)
  {
    if ((paramCharSequence instanceof Spannable)) {
      return (Spannable)paramCharSequence;
    }
    return new SpannableString(paramCharSequence);
  }
  
  public static SpannableStringBuilder a(SpannableStringBuilder paramSpannableStringBuilder, CharSequence paramCharSequence)
  {
    if (paramSpannableStringBuilder.length() != 0) {
      paramSpannableStringBuilder.append(d());
    }
    paramSpannableStringBuilder.append(paramCharSequence);
    return paramSpannableStringBuilder;
  }
  
  public static SpannableStringBuilder a(SpannableStringBuilder paramSpannableStringBuilder, List<CharSequence> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      a(paramSpannableStringBuilder, (CharSequence)paramList.next());
    }
    return paramSpannableStringBuilder;
  }
  
  public static Integer a(Boolean paramBoolean)
  {
    int i = 0;
    if (paramBoolean != null)
    {
      if (aal.a(paramBoolean, false)) {
        i = 1;
      }
      return Integer.valueOf(i);
    }
    return null;
  }
  
  public static Object a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    return new ObjectInputStream(new ByteArrayInputStream(paramArrayOfByte)).readObject();
  }
  
  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    Uri localUri;
    String str;
    do
    {
      do
      {
        return paramString;
        localUri = Uri.parse(paramString);
      } while ((!TextUtils.equals(localUri.getHost(), "maps.googleapis.com")) || (!TextUtils.isEmpty(localUri.getQueryParameter("key"))) || (!TextUtils.isEmpty(localUri.getQueryParameter("client"))));
      str = aal.a(aal.oJ, "babel_map_api_key", "AIzaSyBK6MmN29Pi3wq8XFUBhmukENGaH5_tGXw");
    } while (TextUtils.isEmpty(str));
    return localUri.buildUpon().appendQueryParameter("key", str).build().toString();
  }
  
  public static StringBuilder a(StringBuilder paramStringBuilder, CharSequence paramCharSequence)
  {
    if (paramStringBuilder.length() != 0) {
      paramStringBuilder.append(d());
    }
    paramStringBuilder.append(paramCharSequence);
    return paramStringBuilder;
  }
  
  public static StringBuilder a(StringBuilder paramStringBuilder, List<CharSequence> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      a(paramStringBuilder, (CharSequence)paramList.next());
    }
    return paramStringBuilder;
  }
  
  public static void a(int paramInt)
  {
    try
    {
      MediaPlayer localMediaPlayer = MediaPlayer.create(aal.oJ, paramInt);
      if (localMediaPlayer == null)
      {
        ezi.e("Babel", 44 + "Could not create MediaPlayer for " + paramInt, new Object[0]);
        return;
      }
      localMediaPlayer.setOnCompletionListener(new ezd());
      localMediaPlayer.start();
      return;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      hbs.a("Exception in MediaPlayer.create");
      ezi.d("Babel", "MediaPlayer.create: ", localNotFoundException);
    }
  }
  
  public static void a(Context paramContext, String paramString, Spanned paramSpanned)
  {
    paramSpanned = SpannableString.valueOf(paramSpanned);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setTitle(paramString);
    localBuilder.setMessage(paramSpanned);
    paramString = localBuilder.create();
    paramString.show();
    paramString = (TextView)paramString.findViewById(16908299);
    if (paramString != null)
    {
      fbt.a(paramContext).a(paramSpanned, paramString);
      Linkify.addLinks(paramString, 7);
    }
  }
  
  public static void a(View paramView, AccessibilityManager paramAccessibilityManager, CharSequence paramCharSequence)
  {
    Context localContext = paramView.getContext().getApplicationContext();
    if (paramAccessibilityManager == null) {
      paramAccessibilityManager = (AccessibilityManager)localContext.getSystemService("accessibility");
    }
    for (;;)
    {
      if (!paramAccessibilityManager.isEnabled()) {
        return;
      }
      AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(16384);
      localAccessibilityEvent.getText().add(paramCharSequence);
      localAccessibilityEvent.setEnabled(paramView.isEnabled());
      localAccessibilityEvent.setClassName(paramView.getClass().getName());
      localAccessibilityEvent.setPackageName(localContext.getPackageName());
      new nq(localAccessibilityEvent).a(paramView);
      paramAccessibilityManager.sendAccessibilityEvent(localAccessibilityEvent);
      return;
    }
  }
  
  public static void a(View paramView, boolean paramBoolean)
  {
    Drawable localDrawable;
    if (paramBoolean)
    {
      TypedArray localTypedArray = paramView.getContext().obtainStyledAttributes(b);
      localDrawable = localTypedArray.getDrawable(0);
      localTypedArray.recycle();
    }
    for (;;)
    {
      paramView.setBackground(localDrawable);
      return;
      localDrawable = null;
    }
  }
  
  public static void a(TextView paramTextView, View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    Resources localResources = paramTextView.getResources();
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    StringBuilder localStringBuilder = new StringBuilder();
    int i = localSpannableStringBuilder.length();
    CharSequence localCharSequence = localResources.getText(paramInt1);
    localSpannableStringBuilder.append(localCharSequence);
    if (Build.VERSION.SDK_INT >= 21)
    {
      localSpannableStringBuilder.setSpan(new TypefaceSpan("sans-serif-medium"), i, localSpannableStringBuilder.length(), 33);
      localStringBuilder.append(localCharSequence);
      if (paramInt2 != 0)
      {
        localSpannableStringBuilder.append('\n');
        paramInt1 = localSpannableStringBuilder.length();
        localCharSequence = localResources.getText(paramInt2);
        localSpannableStringBuilder.append(localCharSequence);
        localSpannableStringBuilder.setSpan(new TypefaceSpan("sans-serif"), paramInt1, localSpannableStringBuilder.length(), 33);
        if (paramInt3 != 0) {
          break label226;
        }
        label149:
        a(localStringBuilder, localCharSequence);
      }
      paramTextView.setText(localSpannableStringBuilder);
      if (paramView != null) {
        break label238;
      }
    }
    for (;;)
    {
      paramTextView.setContentDescription(localStringBuilder.toString());
      return;
      localSpannableStringBuilder.setSpan(new TypefaceSpan("sans-serif"), i, localSpannableStringBuilder.length(), 33);
      localSpannableStringBuilder.setSpan(new StyleSpan(1), i, localSpannableStringBuilder.length(), 33);
      break;
      label226:
      localCharSequence = localResources.getText(paramInt3);
      break label149;
      label238:
      paramTextView = paramView;
    }
  }
  
  public static boolean a()
  {
    return (aal.a(aal.oJ, "babel_debugging", false)) || (((fak)ilh.a(aal.oJ, fak.class)).a());
  }
  
  public static boolean a(Context paramContext)
  {
    paramContext = (AccessibilityManager)paramContext.getSystemService("accessibility");
    return (paramContext != null) && (paramContext.isEnabled()) && (paramContext.isTouchExplorationEnabled());
  }
  
  public static byte[] a(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localByteArrayOutputStream);
    localObjectOutputStream.writeObject(paramObject);
    localObjectOutputStream.close();
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static String b()
  {
    int i = 0;
    Object localObject = aal.oJ.getSharedPreferences("batch_tag_pref", 0);
    int j = ((SharedPreferences)localObject).getInt("batch_tag", 0);
    if (j == Integer.MAX_VALUE) {}
    for (;;)
    {
      localObject = ((SharedPreferences)localObject).edit();
      ((SharedPreferences.Editor)localObject).putInt("batch_tag", i);
      ((SharedPreferences.Editor)localObject).apply();
      return String.valueOf(i);
      i = j + 1;
    }
  }
  
  public static String b(int paramInt)
  {
    Context localContext = aal.oJ;
    Resources localResources = localContext.getResources();
    return String.format(Locale.US, "android.resource://%s/%s/%d", new Object[] { localContext.getPackageName(), localResources.getResourceTypeName(paramInt), Integer.valueOf(paramInt) });
  }
  
  public static String b(String paramString)
  {
    return fgd.a(aal.oJ.getContentResolver()).a(paramString).a(paramString);
  }
  
  public static Uri c(int paramInt)
  {
    return Uri.parse(b(paramInt));
  }
  
  public static Uri c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return Uri.parse(paramString);
  }
  
  public static boolean c()
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      if (TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1) {}
      for (int i = 1; i != 0; i = 0) {
        return true;
      }
    }
    return false;
  }
  
  private static String d()
  {
    if (a == null) {
      a = aal.oJ.getResources().getString(StressMode.bV);
    }
    return a;
  }
  
  public static String d(String paramString)
  {
    return gw.a().a(paramString, hh.a);
  }
  
  public static boolean d(int paramInt)
  {
    return paramInt != 0;
  }
  
  public static int e(int paramInt)
  {
    if (paramInt == 9) {
      return 5;
    }
    return paramInt / 2;
  }
}

/* Location:
 * Qualified Name:     ezc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */