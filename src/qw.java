import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;

public final class qw
{
  public int A;
  public boolean B = false;
  public boolean[] C;
  public boolean D;
  public boolean E;
  public int F = -1;
  public DialogInterface.OnMultiChoiceClickListener G;
  public Cursor H;
  public String I;
  public String J;
  public AdapterView.OnItemSelectedListener K;
  public boolean L = true;
  public final Context a;
  public final LayoutInflater b;
  public int c = 0;
  public Drawable d;
  public int e = 0;
  public CharSequence f;
  public View g;
  public CharSequence h;
  public CharSequence i;
  public DialogInterface.OnClickListener j;
  public CharSequence k;
  public DialogInterface.OnClickListener l;
  public CharSequence m;
  public DialogInterface.OnClickListener n;
  public boolean o;
  public DialogInterface.OnCancelListener p;
  public DialogInterface.OnDismissListener q;
  public DialogInterface.OnKeyListener r;
  public CharSequence[] s;
  public ListAdapter t;
  public DialogInterface.OnClickListener u;
  public int v;
  public View w;
  public int x;
  public int y;
  public int z;
  
  public qw(Context paramContext)
  {
    a = paramContext;
    o = true;
    b = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  public void a(qr paramqr)
  {
    ListView localListView;
    Object localObject;
    if (g != null)
    {
      paramqr.a(g);
      if (h != null) {
        paramqr.b(h);
      }
      if (i != null) {
        paramqr.a(-1, i, j, null);
      }
      if (k != null) {
        paramqr.a(-2, k, l, null);
      }
      if (m != null) {
        paramqr.a(-3, m, n, null);
      }
      if ((s != null) || (H != null) || (t != null))
      {
        localListView = (ListView)b.inflate(l, null);
        if (!D) {
          break label368;
        }
        if (H != null) {
          break label345;
        }
        localObject = new qx(this, a, m, s, localListView);
        label170:
        j = ((ListAdapter)localObject);
        k = F;
        if (u == null) {
          break label469;
        }
        localListView.setOnItemClickListener(new qz(this, paramqr));
        label204:
        if (K != null) {
          localListView.setOnItemSelectedListener(K);
        }
        if (!E) {
          break label495;
        }
        localListView.setChoiceMode(1);
        label233:
        b = localListView;
      }
      if (w == null) {
        break label520;
      }
      if (!B) {
        break label511;
      }
      paramqr.a(w, x, y, z, A);
    }
    label345:
    label368:
    label434:
    label469:
    label495:
    label511:
    label520:
    while (v == 0)
    {
      return;
      if (f != null) {
        paramqr.a(f);
      }
      if (d != null) {
        paramqr.a(d);
      }
      if (c != 0) {
        paramqr.b(c);
      }
      if (e == 0) {
        break;
      }
      paramqr.b(paramqr.c(e));
      break;
      localObject = new qy(this, a, H, localListView, paramqr);
      break label170;
      if (E) {}
      for (int i1 = n;; i1 = o)
      {
        if (H == null) {
          break label434;
        }
        localObject = new SimpleCursorAdapter(a, i1, H, new String[] { I }, new int[] { 16908308 });
        break;
      }
      if (t != null)
      {
        localObject = t;
        break label170;
      }
      localObject = new rc(a, i1, s);
      break label170;
      if (G == null) {
        break label204;
      }
      localListView.setOnItemClickListener(new ra(this, localListView, paramqr));
      break label204;
      if (!D) {
        break label233;
      }
      localListView.setChoiceMode(2);
      break label233;
      paramqr.b(w);
      return;
    }
    paramqr.a(v);
  }
}

/* Location:
 * Qualified Name:     qw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */