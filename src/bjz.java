import android.content.Context;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class bjz
  extends htu
{
  final int a;
  private final int b;
  private final ihb c;
  private final bfw d;
  private final bkw g;
  private final int h;
  private final boolean i;
  private final String j;
  
  public bjz(String paramString1, int paramInt1, ihb paramihb, bfw parambfw, bkw parambkw, int paramInt2, boolean paramBoolean, String paramString2, int paramInt3)
  {
    super(paramString1, (byte)0);
    b = paramInt1;
    c = paramihb;
    d = parambfw;
    g = parambkw;
    h = paramInt2;
    i = paramBoolean;
    j = paramString2;
    a = paramInt3;
  }
  
  protected hus a(Context paramContext)
  {
    Object localObject1 = new ConditionVariable();
    paramContext = new bka(this, paramContext, (ConditionVariable)localObject1);
    int k = b;
    ihb localihb = c;
    bfw localbfw = d;
    Object localObject2 = g;
    int m = h;
    boolean bool2 = i;
    String str = j;
    if ((localObject2 == bkw.d) || (localObject2 == bkw.c)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      localObject2 = ebi.b();
      c = ((ebi)localObject2).a();
      paramContext.a(c);
      RealTimeChatService.a((ebi)localObject2, new dwb(a).a(k).a(localihb).a(localbfw).a(bool1).b(bool2).a(str).c(e.a).b(m).a());
      ((ConditionVariable)localObject1).block();
      if (b == null) {
        break;
      }
      paramContext = new hus(0, b, "");
      ezi.e("Babel_ConvCreator", "Exception returned by response to RTCS request to create a conversation", new Object[0]);
      return paramContext;
    }
    if (TextUtils.isEmpty(d))
    {
      paramContext = new hus(false);
      ezi.e("Babel_ConvCreator", "No conversationId returned from RTCS request to create a conversation", new Object[0]);
      return paramContext;
    }
    localObject1 = new hus(true);
    ((hus)localObject1).d().putSerializable("conversation_id", d);
    return (hus)localObject1;
  }
  
  public String b(Context paramContext)
  {
    return paramContext.getString(aal.jm);
  }
}

/* Location:
 * Qualified Name:     bjz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */