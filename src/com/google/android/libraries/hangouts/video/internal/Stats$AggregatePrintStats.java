package com.google.android.libraries.hangouts.video.internal;

import com.google.android.apps.common.proguard.UsedByNative;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

@UsedByNative
public class Stats$AggregatePrintStats
{
  final ArrayList<Float> a = new ArrayList();
  final ArrayList<Float> b = new ArrayList();
  boolean c = false;
  
  public void a(PrintWriter paramPrintWriter)
  {
    paramPrintWriter.println("Aggregate statistics");
    ArrayList localArrayList = a;
    int j = localArrayList.size();
    float f;
    if (j == 0) {
      f = 0.0F;
    }
    for (;;)
    {
      int i = Math.round(f);
      paramPrintWriter.println(36 + "               send FPS: " + i);
      i = Math.round(Stats.a(b));
      paramPrintWriter.println(39 + "  Median video receive FPS: " + i);
      boolean bool = c;
      paramPrintWriter.println(20 + "  using relay: " + bool);
      return;
      float[] arrayOfFloat = new float[j];
      i = 0;
      while (i < j)
      {
        arrayOfFloat[i] = ((Float)localArrayList.get(i)).floatValue();
        i += 1;
      }
      Arrays.sort(arrayOfFloat);
      i = j / 2;
      if (j % 2 == 1)
      {
        f = arrayOfFloat[i];
      }
      else
      {
        f = arrayOfFloat[(i - 1)];
        f = (arrayOfFloat[i] + f) / 2.0F;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.Stats.AggregatePrintStats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */