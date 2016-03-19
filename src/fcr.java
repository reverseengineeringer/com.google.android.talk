import android.content.Context;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.views.MessageListItemView;

public final class fcr
  extends fcu
{
  String a;
  String b;
  fcv c;
  MessageListItemView d;
  
  public fcr(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private fcr(Context paramContext, byte paramByte)
  {
    super(paramContext, null);
  }
  
  public void a(bfd parambfd, boolean paramBoolean, String paramString1, int paramInt1, int paramInt2, int paramInt3, fcv paramfcv, MessageListItemView paramMessageListItemView, String paramString2, String paramString3)
  {
    a(paramString1);
    b = paramString3;
    c = paramfcv;
    d = paramMessageListItemView;
    if ((!"image/gif".equals(paramString2)) || (eye.a(getContext()))) {
      setOnClickListener(new fcs(this));
    }
    a(StressMode.eM);
    super.a(parambfd, paramBoolean, paramString1, paramInt1, paramInt2, paramInt3);
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  protected boolean a()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     fcr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */