package com.google.android.apps.hangouts.widget;

import aal;
import aen;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;

public class BabelWidgetProvider
  extends AppWidgetProvider
{
  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    super.onUpdate(paramContext, paramAppWidgetManager, paramArrayOfInt);
    int j = paramArrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      int k = paramArrayOfInt[i];
      Object localObject = aal.d(null);
      ((Intent)localObject).putExtra("opened_from_impression", 2150);
      localObject = PendingIntent.getActivity(paramContext, 0, (Intent)localObject, 0);
      RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), aal.gW);
      localRemoteViews.setOnClickPendingIntent(aen.hl, (PendingIntent)localObject);
      paramAppWidgetManager.updateAppWidget(k, localRemoteViews);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.widget.BabelWidgetProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */