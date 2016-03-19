import android.widget.ImageView;

final class bun
  implements bhv
{
  bun(bum parambum, bul parambul, int paramInt) {}
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    if (!paramBoolean1)
    {
      ezi.d("Babel_Stickers", "Load failed.", new Object[0]);
      return;
    }
    if (parambhs.n().q() != null) {
      a.c = parambhs.n().q();
    }
    parambhs = (ImageView)parambhs.l();
    if ((aal.a((Integer)parambhs.getTag(), -1) != b) || (a.d != null))
    {
      paramexs = String.valueOf(a.a);
      if (paramexs.length() != 0) {}
      for (paramexs = "Obsolete update: ".concat(paramexs);; paramexs = new String("Obsolete update: "))
      {
        ezi.c("Babel_Stickers", paramexs, new Object[0]);
        if (parameys == null) {
          break;
        }
        parameys.b();
        return;
      }
    }
    a.d = new buj(c.a);
    a.d.b = parameys;
    if (paramexs != null) {
      a.d.a = new fcd(paramexs);
    }
    bum.a(parambhs, a);
  }
}

/* Location:
 * Qualified Name:     bun
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */