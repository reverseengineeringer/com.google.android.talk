import android.content.Context;
import android.content.Intent;
import com.google.android.libraries.social.settings.PreferenceCategory;
import com.google.android.libraries.social.settings.PreferenceScreen;

public final class iji
{
  private final Context a;
  private kog b;
  private PreferenceScreen c;
  
  public iji(Context paramContext)
  {
    a = paramContext;
    c = ((ika)ilh.a(paramContext, ika.class)).b();
  }
  
  public PreferenceCategory a(int paramInt)
  {
    return b(a.getString(paramInt));
  }
  
  public PreferenceCategory a(CharSequence paramCharSequence)
  {
    PreferenceCategory localPreferenceCategory = new PreferenceCategory(a);
    localPreferenceCategory.c(paramCharSequence);
    return localPreferenceCategory;
  }
  
  public ijc a(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    ijc localijc = new ijc(a);
    localijc.c(paramCharSequence1);
    localijc.b(paramCharSequence2);
    return localijc;
  }
  
  public ijc a(CharSequence paramCharSequence1, CharSequence paramCharSequence2, Intent paramIntent)
  {
    paramCharSequence1 = a(paramCharSequence1, paramCharSequence2);
    paramCharSequence1.a(paramIntent);
    return paramCharSequence1;
  }
  
  public void a(PreferenceCategory paramPreferenceCategory, int paramInt, Intent paramIntent)
  {
    paramPreferenceCategory.c(a(a.getString(paramInt), null, paramIntent));
  }
  
  public PreferenceCategory b(CharSequence paramCharSequence)
  {
    paramCharSequence = a(paramCharSequence);
    if (c == null) {
      c = ((PreferenceScreen)b.a());
    }
    c.c(paramCharSequence);
    return paramCharSequence;
  }
}

/* Location:
 * Qualified Name:     iji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */