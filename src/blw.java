import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.widget.ArrayAdapter;

public final class blw
{
  final Context a;
  bfd b;
  bjb c;
  cyx d;
  String e;
  
  public blw(Context paramContext)
  {
    a = ((Context)fii.a(paramContext));
  }
  
  public AlertDialog a()
  {
    fii.a(b);
    fii.a(c);
    fii.a(e);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(a);
    ArrayAdapter localArrayAdapter = new ArrayAdapter(a, 17367043);
    int i = b.g();
    localArrayAdapter.add(new bmh(a, c.a, i, true));
    localArrayAdapter.add(new bmh(a, c.a, i, false));
    localArrayAdapter.add(new bly(this, "Remove conversation", i));
    localArrayAdapter.add(new bma(this, "Inspect conversation"));
    localArrayAdapter.add(new bmb(this, "Email conversation"));
    localArrayAdapter.add(new bmd(this, "Show SMS target", i));
    localArrayAdapter.add(new bmf(this, "Start Stress Test"));
    localArrayAdapter.add(new bmj(this, "Debug contact info"));
    localBuilder.setAdapter(localArrayAdapter, new blx(this, localArrayAdapter));
    return localBuilder.create();
  }
  
  public blw a(bfd parambfd)
  {
    b = ((bfd)fii.a(parambfd));
    return this;
  }
  
  public blw a(bjb parambjb)
  {
    c = ((bjb)fii.a(parambjb));
    return this;
  }
  
  public blw a(cyx paramcyx)
  {
    d = paramcyx;
    return this;
  }
  
  public blw a(String paramString)
  {
    e = ((String)fii.a(paramString));
    return this;
  }
}

/* Location:
 * Qualified Name:     blw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */