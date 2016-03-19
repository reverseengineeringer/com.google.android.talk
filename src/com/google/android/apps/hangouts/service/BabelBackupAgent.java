package com.google.android.apps.hangouts.service;

import android.app.backup.BackupAgentHelper;
import android.app.backup.FullBackupDataOutput;
import android.app.backup.SharedPreferencesBackupHelper;
import android.content.pm.ApplicationInfo;
import android.os.ParcelFileDescriptor;
import ezi;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;

public class BabelBackupAgent
  extends BackupAgentHelper
{
  private static final String[] a = { "recentEmoji" };
  
  private static boolean a(String paramString)
  {
    boolean bool2 = false;
    String[] arrayOfString = a;
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (paramString.startsWith(arrayOfString[i])) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public void onCreate()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(String.valueOf(getPackageName()).concat("_preferences"));
    Collections.addAll(localArrayList, a);
    addHelper("shared_prefs", new SharedPreferencesBackupHelper(this, (String[])localArrayList.toArray(new String[localArrayList.size()])));
  }
  
  public void onFullBackup(FullBackupDataOutput paramFullBackupDataOutput)
  {
    File[] arrayOfFile = new File(new File(getApplicationInfodataDir).getAbsolutePath(), "shared_prefs").listFiles();
    int j = arrayOfFile.length;
    int i = 0;
    if (i < j)
    {
      File localFile = arrayOfFile[i];
      String str = localFile.getName();
      if (!a(str))
      {
        if (ezi.a("Babel", 3))
        {
          str = String.valueOf(str);
          if (str.length() == 0) {
            break label114;
          }
        }
        label114:
        for (str = "Skip backing up file: ".concat(str);; str = new String("Skip backing up file: "))
        {
          ezi.a("Babel", str, new Object[0]);
          i += 1;
          break;
        }
      }
      if (ezi.a("Babel", 3))
      {
        str = String.valueOf(str);
        if (str.length() == 0) {
          break label182;
        }
      }
      label182:
      for (str = "Backing up file: ".concat(str);; str = new String("Backing up file: "))
      {
        ezi.a("Babel", str, new Object[0]);
        fullBackupFile(localFile, paramFullBackupDataOutput);
        break;
      }
    }
  }
  
  public void onRestoreFile(ParcelFileDescriptor paramParcelFileDescriptor, long paramLong1, File paramFile, int paramInt, long paramLong2, long paramLong3)
  {
    if (paramInt == 1)
    {
      str = paramFile.getName();
      if (a(str)) {
        break label74;
      }
      if (ezi.a("Babel", 3))
      {
        paramParcelFileDescriptor = String.valueOf(str);
        if (paramParcelFileDescriptor.length() == 0) {
          break label61;
        }
      }
    }
    label61:
    for (paramParcelFileDescriptor = "Skip restoring file: ".concat(paramParcelFileDescriptor);; paramParcelFileDescriptor = new String("Skip restoring file: "))
    {
      ezi.a("Babel", paramParcelFileDescriptor, new Object[0]);
      return;
    }
    label74:
    if (ezi.a("Babel", 3))
    {
      str = String.valueOf(str);
      if (str.length() == 0) {
        break label133;
      }
    }
    label133:
    for (String str = "Restoring file: ".concat(str);; str = new String("Restoring file: "))
    {
      ezi.a("Babel", str, new Object[0]);
      super.onRestoreFile(paramParcelFileDescriptor, paramLong1, paramFile, paramInt, paramLong2, paramLong3);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.service.BabelBackupAgent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */