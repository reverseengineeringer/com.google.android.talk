import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class eoo
{
  private static final boolean a = false;
  private int b = 0;
  
  static
  {
    imx localimx = ezi.r;
  }
  
  private static String a(int paramInt)
  {
    if (paramInt == 0) {
      return "<none>";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    if ((paramInt & 0x1) > 0) {
      localStringBuilder.append("RECIPIENTS_REQUIRE_MMS | ");
    }
    if ((paramInt & 0x2) > 0) {
      localStringBuilder.append("HAS_SUBJECT | ");
    }
    if ((paramInt & 0x4) > 0) {
      localStringBuilder.append("HAS_ATTACHMENT | ");
    }
    if ((paramInt & 0x8) > 0) {
      localStringBuilder.append("LENGTH_REQUIRES_MMS | ");
    }
    if ((paramInt & 0x10) > 0) {
      localStringBuilder.append("MULTIPLE_RECIPIENTS | ");
    }
    localStringBuilder.delete(localStringBuilder.length() - 3, localStringBuilder.length());
    return localStringBuilder.toString();
  }
  
  private void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!emy.a().d()) {
      return;
    }
    int i = b;
    if (paramBoolean1) {}
    for (b |= paramInt;; b &= (paramInt ^ 0xFFFFFFFF))
    {
      if ((paramBoolean2) && (i == 0) && (b != 0)) {
        Toast.makeText(aal.oJ, StressMode.aG, 0).show();
      }
      if ((i == b) || (!a)) {
        break;
      }
      String str1 = String.valueOf(a(paramInt));
      String str2 = String.valueOf(a(b));
      ezi.a("Babel_SMS", String.valueOf(str1).length() + 35 + String.valueOf(str2).length() + "updateState: oldState: " + str1 + " new state: " + str2, new Object[0]);
      return;
    }
  }
  
  public void a()
  {
    b &= 0x11;
  }
  
  public void a(boolean paramBoolean)
  {
    if ((paramBoolean) && (enn.b())) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      a(16, paramBoolean, false);
      return;
    }
  }
  
  public void b()
  {
    if (emy.a().k() != null)
    {
      a(1, false, false);
      return;
    }
    a(1, true, false);
  }
  
  public void b(boolean paramBoolean)
  {
    a(8, paramBoolean, true);
  }
  
  public boolean c()
  {
    return b > 0;
  }
}

/* Location:
 * Qualified Name:     eoo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */