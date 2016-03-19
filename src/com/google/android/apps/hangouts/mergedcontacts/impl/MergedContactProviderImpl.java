package com.google.android.apps.hangouts.mergedcontacts.impl;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import bgw;
import bha;
import bkw;
import ctr;
import ctt;
import ezi;
import hpz;
import hqc;
import ilh;
import java.util.Locale;

public class MergedContactProviderImpl
  extends ctr
{
  private static final UriMatcher i;
  private final Object j = new Object();
  
  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    i = localUriMatcher;
    localUriMatcher.addURI(a, "merged_contacts", 0);
    i.addURI(a, "merged_contacts_with_details", 1);
    i.addURI(a, "merged_contact_details", 2);
  }
  
  private static String[] a(String[] paramArrayOfString1, String... paramVarArgs)
  {
    if (paramVarArgs.length == 0) {
      return paramArrayOfString1;
    }
    if (paramArrayOfString1 == null) {}
    for (int k = 0;; k = paramArrayOfString1.length)
    {
      int m = paramVarArgs.length;
      String[] arrayOfString = new String[k + m];
      if (k > 0) {
        System.arraycopy(paramArrayOfString1, 0, arrayOfString, 0, k);
      }
      System.arraycopy(paramVarArgs, 0, arrayOfString, k, m);
      return arrayOfString;
    }
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    throw new UnsupportedOperationException();
  }
  
  public String getType(Uri paramUri)
  {
    switch (i.match(paramUri))
    {
    default: 
      paramUri = String.valueOf(paramUri);
      throw new IllegalArgumentException(String.valueOf(paramUri).length() + 13 + "Unknown URI: " + paramUri);
    case 0: 
      paramUri = String.valueOf("vnd.android.cursor.dir/vnd.google.android.apps.hangouts.");
      str = String.valueOf("merged_contacts");
      if (str.length() != 0) {
        return paramUri.concat(str);
      }
      return new String(paramUri);
    case 1: 
      paramUri = String.valueOf("vnd.android.cursor.dir/vnd.google.android.apps.hangouts.");
      str = String.valueOf("merged_contacts_with_details");
      if (str.length() != 0) {
        return paramUri.concat(str);
      }
      return new String(paramUri);
    }
    paramUri = String.valueOf("vnd.android.cursor.dir/vnd.google.android.apps.hangouts.");
    String str = String.valueOf("merged_contact_details");
    if (str.length() != 0) {
      return paramUri.concat(str);
    }
    return new String(paramUri);
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean onCreate()
  {
    return true;
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    ??? = paramUri.getQueryParameter("account_id");
    if (??? == null)
    {
      paramArrayOfString1 = String.valueOf("Every URI must have the 'account_id' parameter specified.\nURI: ");
      paramUri = String.valueOf(paramUri);
      throw new IllegalArgumentException(String.valueOf(paramArrayOfString1).length() + 0 + String.valueOf(paramUri).length() + paramArrayOfString1 + paramUri);
    }
    int i1 = Integer.parseInt((String)???);
    SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
    String str5;
    String str4;
    String str3;
    String str2;
    String str1;
    switch (i.match(paramUri))
    {
    default: 
      long l1 = SystemClock.elapsedRealtime();
      paramArrayOfString1 = bgw.a(getContext(), i1).a().a(localSQLiteQueryBuilder, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, null);
      long l2 = SystemClock.elapsedRealtime();
      paramString1 = String.valueOf(localSQLiteQueryBuilder.getTables());
      ezi.c("Babel_db", String.valueOf(paramString1).length() + 38 + "querying " + paramString1 + " took " + (l2 - l1) + " ms", new Object[0]);
      paramArrayOfString1.setNotificationUri(getContext().getContentResolver(), paramUri);
      return paramArrayOfString1;
    case 1: 
      str5 = paramUri.getQueryParameter("gaia_id");
      str4 = paramUri.getQueryParameter("phone_number");
      str3 = paramUri.getQueryParameter("contact_lookup_key");
      str2 = paramUri.getQueryParameter("conversation_type");
      str1 = paramUri.getQueryParameter("query");
      if (paramUri.getQueryParameter("is_frequent") == null) {
        break;
      }
    }
    for (int n = 1;; n = 0)
    {
      localSQLiteQueryBuilder.setTables("merged_contacts_with_details");
      int m = 0;
      ??? = paramArrayOfString2;
      if (!TextUtils.isEmpty(str5))
      {
        localSQLiteQueryBuilder.appendWhere("_id in (select merged_contact_id from merged_contact_details where gaia_id = ?)");
        ??? = a(paramArrayOfString2, new String[] { str5 });
        m = 1;
      }
      int k = m;
      paramArrayOfString2 = (String[])???;
      if (!TextUtils.isEmpty(str4))
      {
        if (m != 0) {
          localSQLiteQueryBuilder.appendWhere(" AND ");
        }
        localSQLiteQueryBuilder.appendWhere("_id in (select merged_contact_id from merged_contact_details where lookup_data = ? or lookup_data_standardized = ?)");
        paramArrayOfString2 = a((String[])???, new String[] { str4, str4 });
        k = 1;
      }
      m = k;
      ??? = paramArrayOfString2;
      if (!TextUtils.isEmpty(str3))
      {
        if (k != 0) {
          localSQLiteQueryBuilder.appendWhere(" AND ");
        }
        localSQLiteQueryBuilder.appendWhere("contact_lookup_key = ?");
        ??? = a(paramArrayOfString2, new String[] { str3 });
        m = 1;
      }
      k = m;
      if (!TextUtils.isEmpty(str2))
      {
        k = m;
        if (Integer.parseInt(str2) == bkw.b.ordinal())
        {
          if (m != 0) {
            localSQLiteQueryBuilder.appendWhere(" AND ");
          }
          localSQLiteQueryBuilder.appendWhere("has_phone_number");
          k = 1;
        }
      }
      m = k;
      paramArrayOfString2 = (String[])???;
      if (!TextUtils.isEmpty(str1))
      {
        if (k != 0) {
          localSQLiteQueryBuilder.appendWhere(" AND ");
        }
        str2 = String.format(Locale.getDefault(), "(%s like '%%' || ? || '%%' OR %s in (select %s from %s where %s like '%%' || ? || '%%' OR %s like '%%' || ? || '%%'))", new Object[] { "display_name", "_id", "merged_contact_id", "merged_contact_details", "lookup_data", "lookup_data_search" });
        paramArrayOfString2 = a((String[])???, new String[] { str1, str1, str1 });
        localSQLiteQueryBuilder.appendWhere(str2);
        m = 1;
      }
      if (n != 0)
      {
        if (m != 0) {
          localSQLiteQueryBuilder.appendWhere(" AND ");
        }
        localSQLiteQueryBuilder.appendWhere("is_frequent");
      }
      ??? = new Intent(getContext(), MergeContactsService.class);
      ((Intent)???).putExtra("account_id", i1);
      if (((hpz)ilh.a(getContext(), hpz.class)).b(i1).a("last_merged_ts", -1L) == -1L) {
        synchronized (j)
        {
          if (((hpz)ilh.a(getContext(), hpz.class)).b(i1).a("last_merged_ts", -1L) == -1L)
          {
            ezi.c("Babel_db", "MergedContactProviderImpl calling merge contacts synchronously", new Object[0]);
            new ctt(getContext(), getContext().getContentResolver(), i1, true).a();
          }
        }
      }
      getContext().startService((Intent)???);
      break;
      localSQLiteQueryBuilder.setTables("merged_contacts");
      break;
      localSQLiteQueryBuilder.setTables("merged_contact_details");
      break;
    }
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.mergedcontacts.impl.MergedContactProviderImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */