import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.widget.ArrayAdapter;
import java.util.Iterator;
import java.util.List;

public final class dfq
{
  final Context a;
  bfd b;
  int c;
  diu d;
  bg e;
  
  public dfq(Context paramContext)
  {
    a = paramContext;
    c = ((hpu)ilh.a(paramContext, hpu.class)).a();
    b = dvd.e(c);
  }
  
  public AlertDialog a()
  {
    fii.a(e);
    fii.a(d);
    fii.a(b);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(a);
    Object localObject = a.getSharedPreferences("rpc", 0);
    ArrayAdapter localArrayAdapter = new ArrayAdapter(a, 17367043);
    localArrayAdapter.add(new dfr(this, "Debug Activity"));
    localArrayAdapter.add(new dhd(this, (SharedPreferences)localObject));
    localArrayAdapter.add(new dgu(this, (SharedPreferences)localObject));
    localArrayAdapter.add(new dge(this, "Debug Bitmaps Activity"));
    localArrayAdapter.add(new dgl(this, "Debug OzGetMergedPerson Activity"));
    localArrayAdapter.add(new dgm(this, "Request Warm Sync"));
    localArrayAdapter.add(new dgn(this, "Tickle GCM"));
    localArrayAdapter.add(new dgp(this, "Rewind 10 days"));
    localArrayAdapter.add(new dgr(this, "Refresh from contacts"));
    localArrayAdapter.add(new dgs(this, "Dump Database"));
    localArrayAdapter.add(new dgt(this, "Clear impressions throttles"));
    localObject = (AudioManager)a.getSystemService("audio");
    if (((AudioManager)localObject).isMicrophoneMute()) {
      localArrayAdapter.add(new dfs(this, "Turn hardware mic on", (AudioManager)localObject));
    }
    for (;;)
    {
      localArrayAdapter.add(new dfu(this, "Re-run RegisterAccountOperation"));
      localArrayAdapter.add(new dfv(this, "Run DB Cleaner"));
      if (b.n())
      {
        localArrayAdapter.add(new dfx(this, "Re-import SMS"));
        localArrayAdapter.add(new dfy(this, "Sync SMS"));
        localArrayAdapter.add(new dfz(this, "Load SMS/MMS from dump file"));
        localArrayAdapter.add(new dga(this, "Email SMS/MMS dump file"));
        localArrayAdapter.add(new dgb(this, "Load test APN OTA"));
      }
      localArrayAdapter.add(new dgd(this, "Activate all Butter Bars"));
      long l1 = aal.a(a, "babel_rtcs_watchdog_warning", 0L);
      long l2 = aal.a(a, "babel_rtcs_watchdog_error", 0L);
      localArrayAdapter.add(new dgf(this, 49 + "Test RTCS watchdog (warning " + l1 + ")", l1));
      localArrayAdapter.add(new dgg(this, 47 + "Test RTCS watchdog (error " + l2 + ")", l2));
      localArrayAdapter.add(new dgh(this, "Crash!"));
      localArrayAdapter.add(new dgi(this, "Simulate GMS upgrade"));
      localArrayAdapter.add(new dgj(this, "Simulate Hangouts upgrade"));
      localObject = ilh.c(a, dha.class).iterator();
      while (((Iterator)localObject).hasNext()) {
        localArrayAdapter.add(((dha)((Iterator)localObject).next()).a(a));
      }
      localArrayAdapter.add(new dft(this, "Turn hardware mic off", (AudioManager)localObject));
    }
    localBuilder.setAdapter(localArrayAdapter, new dgk(this, localArrayAdapter));
    return localBuilder.create();
  }
  
  public dfq a(bg parambg)
  {
    e = parambg;
    return this;
  }
  
  public dfq a(diu paramdiu)
  {
    d = paramdiu;
    return this;
  }
}

/* Location:
 * Qualified Name:     dfq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */