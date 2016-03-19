import android.content.Context;
import android.content.res.Resources;
import com.google.android.apps.hangouts.views.FixedAspectRatioImageView;
import com.google.android.apps.hangouts.views.MessageListItemView;

public final class btz
  extends fcu
{
  String a;
  String b;
  fcv c;
  MessageListItemView d;
  
  public btz(Context paramContext, int paramInt1, boolean paramBoolean, String paramString1, String paramString2, int paramInt2, int paramInt3, String paramString3, String paramString4, MessageListItemView paramMessageListItemView, fcv paramfcv)
  {
    super(paramContext, null);
    label36:
    int i;
    if (paramString1.startsWith("file://"))
    {
      paramContext = paramString1.replace("file://", "");
      if (!paramString1.startsWith("file://")) {
        break label239;
      }
      a(paramString1);
      b = paramString3;
      this.i = paramBoolean;
      c = paramfcv;
      d = paramMessageListItemView;
      i = (int)getContext().getResources().getDimension(aal.kU);
      h.setMaxWidth(i);
      h.setMaxHeight(i);
      if ((paramInt2 <= 0) || (paramInt3 <= 0)) {
        break label246;
      }
      h.a(paramInt2, paramInt3);
    }
    for (;;)
    {
      setOnClickListener(new bua(this));
      setContentDescription(bus.a(getContext().getResources(), paramString4));
      paramString1 = new eyd(a, null).a(getContext().getResources().getInteger(aal.kX));
      paramString1.b(paramString4);
      g = new bit(paramInt1, paramString1, paramContext, this, null);
      if (!((eit)ilh.a(getContext(), eit.class)).a(g, this.i)) {
        break label260;
      }
      g = null;
      return;
      paramContext = null;
      break;
      label239:
      paramString1 = paramString2;
      break label36;
      label246:
      h.a(i, i);
    }
    label260:
    e();
  }
  
  public void a(String paramString)
  {
    if ((a == null) || (!a.startsWith("file://"))) {
      a = paramString;
    }
  }
  
  protected boolean a()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     btz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */