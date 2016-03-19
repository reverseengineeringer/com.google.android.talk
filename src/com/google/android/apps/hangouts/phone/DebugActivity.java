package com.google.android.apps.hangouts.phone;

import aal;
import aen;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.database.Cursor;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.format.Time;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import bfd;
import bfz;
import bha;
import den;
import deo;
import dep;
import dex;
import dfd;
import dfh;
import dfi;
import dfj;
import dfk;
import doo;
import dqf;
import dvd;
import ezi;
import hpu;
import hpz;
import hqc;
import hqo;
import ilh;
import ils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class DebugActivity
  extends ils
{
  public static final String[] i = { "url:hangouts_conserver", "url:hangouts_conserver_upload", "url:hangouts_rs" };
  public TextView a;
  public ListView b;
  public bfz c;
  public ListView d;
  public DebugActivity.RecordingService e;
  public ArrayAdapter<Intent> f;
  public bfd g;
  public boolean h;
  private final hpu l = new hqo(this, k).a(j);
  private hpz m;
  private ServiceConnection n;
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, DebugActivity.RecordingService.class);
  }
  
  public static String a(bfd parambfd, String paramString)
  {
    bha localbha = new bfz(aal.oJ, parambfd.g()).e();
    parambfd = new StringBuilder();
    Cursor localCursor = localbha.a("conversations", null, "conversation_id=?", new String[] { paramString }, "sort_timestamp DESC");
    a(parambfd, localCursor, "CONVERSATIONS", "conversation_id");
    localCursor.close();
    localCursor = localbha.a("conversation_participants_view", null, "conversation_id=?", new String[] { paramString }, null);
    parambfd.append("PARTICIPANTS\n");
    a(parambfd, localCursor, "PARTICIPANTS", "_id");
    localCursor.close();
    paramString = localbha.a("messages", null, "conversation_id=?", new String[] { paramString }, "timestamp ASC");
    a(parambfd, paramString, "MESSAGES", "message_id");
    paramString.close();
    return parambfd.toString();
  }
  
  public static String a(String paramString, Object paramObject)
  {
    if (paramObject == null) {
      return "NULL";
    }
    if (((paramObject instanceof doo)) || ((paramObject instanceof dqf))) {
      return paramObject.getClass().getSimpleName();
    }
    paramObject = paramObject.toString();
    paramString = paramString.toLowerCase(Locale.US);
    if ((paramString.contains("timestamp")) || (paramString.contains("watermark"))) {
      try
      {
        long l1 = Long.parseLong((String)paramObject) / 1000L;
        Object localObject = new Time();
        ((Time)localObject).set(l1);
        localObject = ((Time)localObject).format("%c");
        return (String)localObject;
      }
      catch (Exception localException)
      {
        ezi.a("Babel", String.valueOf(paramString).concat(" is not a Long"), new Object[0]);
        return (String)paramObject;
      }
    }
    if ("sms_type".equals(paramString))
    {
      paramString = null;
      switch (Integer.parseInt((String)paramObject))
      {
      }
      for (;;)
      {
        return String.valueOf(paramObject).length() + 3 + String.valueOf(paramString).length() + (String)paramObject + " (" + paramString + ")";
        paramString = "UNKNOWN";
        continue;
        paramString = "SMS";
        continue;
        paramString = "MMS";
        continue;
        paramString = "MMS Notif Ind";
      }
    }
    return (String)paramObject;
  }
  
  private static void a(StringBuilder paramStringBuilder, Cursor paramCursor, String paramString1, String paramString2)
  {
    paramStringBuilder.append(paramString1);
    paramStringBuilder.append("; count == ");
    paramStringBuilder.append(paramCursor.getCount());
    paramStringBuilder.append("\n\n");
    if (paramCursor.moveToFirst())
    {
      paramString1 = (String[])paramCursor.getColumnNames().clone();
      Arrays.sort(paramString1);
      int i1 = paramString1.length;
      int k = 0;
      int j = 0;
      while (k < i1)
      {
        j = Math.max(j, paramString1[k].length());
        k += 1;
      }
      do
      {
        paramStringBuilder.append(">>>>>>>>>> ");
        paramStringBuilder.append(paramString2);
        paramStringBuilder.append("    ");
        paramStringBuilder.append(paramCursor.getString(paramCursor.getColumnIndex(paramString2)));
        paramStringBuilder.append("\n\n");
        int i2 = paramString1.length;
        k = 0;
        for (;;)
        {
          if (k < i2)
          {
            String str = paramString1[k];
            i1 = 0;
            while (i1 <= 0)
            {
              paramStringBuilder.append("    ");
              i1 += 1;
            }
            paramStringBuilder.append(str);
            i1 = j - str.length() + 1;
            while (i1 >= 0)
            {
              paramStringBuilder.append(' ');
              i1 -= 1;
            }
            try
            {
              paramStringBuilder.append(paramCursor.getString(paramCursor.getColumnIndex(str)));
              paramStringBuilder.append('\n');
              k += 1;
            }
            catch (Exception localException)
            {
              for (;;)
              {
                paramStringBuilder.append("???");
              }
            }
          }
        }
        paramStringBuilder.append("\n\n");
      } while (paramCursor.moveToNext());
    }
  }
  
  public static void b(Context paramContext)
  {
    new Thread(new dfi(paramContext)).start();
  }
  
  public BaseAdapter a(Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    List localList;
    if (paramCursor.moveToPosition(0))
    {
      localList = Arrays.asList((Object[])paramCursor.getColumnNames().clone());
      Collections.sort(localList);
      Iterator localIterator = localList.iterator();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          break label142;
        }
        String str1 = (String)localIterator.next();
        try
        {
          localArrayList.add(paramCursor.getString(paramCursor.getColumnIndex(str1)));
        }
        catch (Exception localException)
        {
          str2 = String.valueOf(localException.getMessage());
          if (str2.length() == 0) {}
        }
      }
      for (String str2 = "???: ".concat(str2);; str2 = new String("???: "))
      {
        localArrayList.add(str2);
        break;
      }
    }
    label142:
    for (paramCursor = localList;; paramCursor = new ArrayList()) {
      return a(paramCursor, localArrayList);
    }
  }
  
  public BaseAdapter a(Cursor paramCursor, int[] paramArrayOfInt)
  {
    return new dep(this, paramCursor, paramArrayOfInt);
  }
  
  public BaseAdapter a(List<String> paramList, List<Object> paramList1)
  {
    return new deo(this, paramList, paramList1);
  }
  
  public void a()
  {
    Cursor localCursor = c.e().a("conversations", null, null, null, "sort_timestamp DESC");
    BaseAdapter localBaseAdapter = a(localCursor, new int[] { localCursor.getColumnIndex("generated_name"), localCursor.getColumnIndex("conversation_id") });
    b.setAdapter(localBaseAdapter);
    b.setOnItemClickListener(new dex(this, localCursor));
  }
  
  public void a(View paramView, Cursor paramCursor, Runnable paramRunnable)
  {
    Display localDisplay = getWindowManager().getDefaultDisplay();
    Point localPoint = new Point();
    localDisplay.getSize(localPoint);
    paramView = new PopupWindow(paramView, x, y - 25);
    paramView.setFocusable(true);
    paramView.setBackgroundDrawable(new ColorDrawable(-1));
    paramView.setOnDismissListener(new dfd(this, paramCursor, paramRunnable));
    paramView.showAtLocation(getWindow().getDecorView(), 0, 0, 0);
  }
  
  public ArrayAdapter<Intent> b()
  {
    return new dfj(this, this, aal.gl, aen.he);
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    Object localObject = (AdapterView.AdapterContextMenuInfo)paramMenuItem.getMenuInfo();
    localObject = (Cursor)b.getAdapter().getItem(position);
    localObject = ((Cursor)localObject).getString(((Cursor)localObject).getColumnIndex("conversation_id"));
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      b.invalidateViews();
      return true;
      f = b();
      e.a(f, (String)localObject);
      d.setAdapter(f);
      continue;
      f = b();
      e.a(f, null);
      d.setAdapter(f);
      continue;
      c.j((String)localObject);
      a();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.fs);
    g = dvd.e(l.a());
    a = ((TextView)findViewById(aen.bv));
    b = ((ListView)findViewById(16908298));
    d = ((ListView)findViewById(aen.fP));
    m = ((hpz)j.a(hpz.class));
    m.b(g.g()).b("preserve_response_data", true).d();
    new den(this).a(new Void[0]);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if (paramView.equals(b))
    {
      paramContextMenu.add(0, 1, 0, "FOCUS");
      paramContextMenu.add(0, 2, 0, "CLEAR FOCUS");
      paramContextMenu.add(0, 3, 0, "REMOVE CONVERSATION");
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    paramMenu.add(0, 1, 0, "Clear History");
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    m.b(g.g()).b("preserve_response_data", h).d();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    f.clear();
    e.c.clear();
    f.notifyDataSetChanged();
    return true;
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return true;
  }
  
  public void onResume()
  {
    super.onResume();
    String str = getIntent().getStringExtra("conversation_id");
    if (str != null)
    {
      getIntent().removeExtra("conversation_id");
      new Handler().postDelayed(new dfh(this, str), 100L);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    Intent localIntent = new Intent(this, DebugActivity.RecordingService.class);
    if (n == null) {
      n = new dfk(this);
    }
    bindService(localIntent, n, 1);
  }
  
  public void onStop()
  {
    super.onStop();
    if (n != null)
    {
      unbindService(n);
      n = null;
    }
    if (!((CheckBox)findViewById(aen.bh)).isChecked()) {
      stopService(a(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.DebugActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */