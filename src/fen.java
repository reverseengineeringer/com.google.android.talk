import android.content.Context;
import android.text.TextUtils;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class fen
  extends fcu
  implements fdj
{
  String a;
  String b;
  String c;
  bfd d;
  private View.OnClickListener j;
  
  public fen(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private fen(Context paramContext, byte paramByte)
  {
    super(paramContext, null);
  }
  
  public void a(bfd parambfd, boolean paramBoolean, String paramString1, av paramav, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2, int paramInt3)
  {
    d = parambfd;
    a = paramString3;
    b = paramString2;
    a(paramString4, 0L);
    if ((!paramBoolean) || (!TextUtils.isEmpty(paramString4))) {
      g();
    }
    j = new feo(this, paramav);
    setOnClickListener(j);
    a(StressMode.sD);
    super.a(parambfd, paramBoolean, paramString1, paramInt1, paramInt2, paramInt3);
  }
  
  public void a(String paramString) {}
  
  public void a(String paramString, long paramLong)
  {
    c = paramString;
  }
  
  public void d_()
  {
    super.d_();
    g();
  }
  
  void g()
  {
    if ((a != null) && (b != null) && (TextUtils.isEmpty(c)))
    {
      setEnabled(false);
      new fep(this).execute(new Void[0]);
    }
  }
}

/* Location:
 * Qualified Name:     fen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */