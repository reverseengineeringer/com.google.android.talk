.class final Lcuc;
.super Lhtu;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lbdy;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILbdy;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhtu;-><init>(Ljava/lang/String;C)V

    .line 67
    iput p2, p0, Lcuc;->a:I

    .line 68
    iput-object p3, p0, Lcuc;->b:Lbdy;

    .line 69
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldyl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 219
    const-class v0, Lbhg;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhg;

    iget v1, p0, Lcuc;->a:I

    .line 220
    invoke-interface {v0, v1}, Lbhg;->a(I)Lbgw;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lbgw;->b()Lbha;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lbha;->a()V

    .line 224
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 226
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ldyl;

    .line 233
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 234
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    .line 238
    :goto_1
    iget-boolean v2, v5, Ldyl;->a:Z

    iget-object v3, v5, Ldyl;->b:Ljava/lang/String;

    iget-object v4, v5, Ldyl;->c:Ljava/lang/String;

    iget-object v5, v5, Ldyl;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcuc;->a(Lbha;Landroid/content/ContentValues;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {v0}, Lbha;->b()V

    .line 244
    invoke-virtual {v0}, Lbha;->c()V

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lctr;->d:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 248
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Leyu",
            "<",
            "Ldtt;",
            "[",
            "Lcyx;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 187
    const-class v2, Lbhg;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbhg;

    move-object/from16 v0, p0

    iget v3, v0, Lcuc;->a:I

    .line 188
    invoke-interface {v2, v3}, Lbhg;->a(I)Lbgw;

    move-result-object v2

    .line 189
    invoke-virtual {v2}, Lbgw;->b()Lbha;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Lbha;->a()V

    .line 192
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 193
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Leyu;

    .line 194
    iget-object v4, v11, Leyu;->b:Ljava/io/Serializable;

    move-object v12, v4

    check-cast v12, [Lcyx;

    array-length v15, v12

    const/4 v4, 0x0

    move v13, v4

    :goto_0
    if-ge v13, v15, :cond_0

    aget-object v16, v12, v13

    .line 195
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    iget-object v4, v0, Lcyx;->a:Lczd;

    sget-object v5, Lczd;->b:Lczd;

    if-ne v4, v5, :cond_2

    .line 196
    iget-object v4, v11, Leyu;->a:Ljava/io/Serializable;

    check-cast v4, Ldtt;

    iget-object v4, v4, Ldtt;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 197
    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcyx;->z:Z

    invoke-virtual/range {v16 .. v16}, Lcyx;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcyx;->h:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcyx;->e:Ljava/lang/String;

    iget-object v10, v11, Leyu;->a:Ljava/io/Serializable;

    check-cast v10, Ldtt;

    iget-object v10, v10, Ldtt;->d:Ljava/lang/String;

    invoke-static/range {v2 .. v10}, Lcuc;->a(Lbha;Landroid/content/ContentValues;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 200
    :cond_1
    iget-object v4, v11, Leyu;->a:Ljava/io/Serializable;

    check-cast v4, Ldtt;

    iget-object v4, v4, Ldtt;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 201
    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcyx;->z:Z

    invoke-virtual/range {v16 .. v16}, Lcyx;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcyx;->h:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcyx;->e:Ljava/lang/String;

    iget-object v10, v11, Leyu;->a:Ljava/io/Serializable;

    check-cast v10, Ldtt;

    iget-object v10, v10, Ldtt;->c:Ljava/lang/String;

    invoke-static/range {v2 .. v10}, Lcuc;->a(Lbha;Landroid/content/ContentValues;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 194
    :cond_2
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {v2}, Lbha;->b()V

    .line 209
    invoke-virtual {v2}, Lbha;->c()V

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lctr;->d:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 213
    return-void
.end method

.method private static a(Lbha;Landroid/content/ContentValues;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 254
    const-string v0, "is_hangouts_user"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 255
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const-string v0, "gaia_id"

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "needs_gaia_ids_resolved"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 259
    :cond_0
    const-string v0, "avatar_url"

    invoke-virtual {p1, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v0, "display_name"

    invoke-virtual {p1, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "last_checked_ts"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 262
    const-string v0, "merged_contact_details"

    const-string v1, "lookup_data = ? OR lookup_data_standardized = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p8, v2, v3

    const/4 v3, 0x1

    aput-object p8, v2, v3

    invoke-virtual {p0, v0, p1, v1, v2}, Lbha;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method private e(Landroid/content/Context;)Lbdy;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 270
    sget-object v0, Lctr;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 271
    const-string v0, "account_id"

    iget v2, p0, Lcuc;->a:I

    .line 272
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 273
    const-string v0, "contact_lookup_key"

    iget-object v2, p0, Lcuc;->b:Lbdy;

    .line 274
    invoke-virtual {v2}, Lbdy;->k()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 278
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lctr;->g:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 281
    :try_start_1
    new-instance v0, Lcts;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcts;-><init>(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 282
    invoke-virtual {v0}, Lcts;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    invoke-virtual {v0}, Lcts;->a()Lbdy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 286
    if-eqz v1, :cond_0

    .line 287
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_0
    :goto_0
    return-object v0

    .line 286
    :cond_1
    if-eqz v1, :cond_2

    .line 287
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_2
    const-string v1, "Babel"

    const-string v2, "After gaiaId resolution, couldn\'t find merged contact with lookup key:"

    iget-object v0, p0, Lcuc;->b:Lbdy;

    .line 291
    invoke-virtual {v0}, Lbdy;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 290
    invoke-static {v1, v0, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v6

    .line 292
    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_3

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 291
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lhus;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 78
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 79
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1165
    :try_start_0
    sget-object v0, Lctr;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1166
    const-string v0, "account_id"

    iget v2, p0, Lcuc;->a:I

    .line 1167
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1166
    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1169
    const-string v3, "merged_contact_id = (select _id from merged_contacts where contact_id = ?) AND needs_gaia_ids_resolved AND (lookup_data_type = 0 OR lookup_data_type = 1)"

    .line 1177
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v2, p0, Lcuc;->b:Lbdy;

    invoke-virtual {v2}, Lbdy;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 1179
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lctr;->h:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 83
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 86
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 97
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 89
    :cond_2
    const/4 v0, 0x2

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 91
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 96
    :cond_3
    if-eqz v1, :cond_4

    .line 97
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_4
    iget v0, p0, Lcuc;->a:I

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 103
    iget v0, p0, Lcuc;->a:I

    .line 1386
    sget-object v2, Ldvp;->A:Ldml;

    invoke-virtual {v2, v0}, Ldml;->b(I)Z

    move-result v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 105
    iget v0, p0, Lcuc;->a:I

    .line 106
    invoke-static {v0, v12, v8, v10}, Ldng;->a(IILjava/lang/Integer;Ljava/util/Collection;)Ldng;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ldng;->m()Z

    move-result v2

    if-nez v2, :cond_5

    .line 111
    invoke-virtual {v0}, Ldng;->e()Ldqf;

    move-result-object v0

    check-cast v0, Ldyk;

    .line 112
    iget-object v0, v0, Ldyk;->g:Ljava/util/Map;

    invoke-direct {p0, p1, v10, v0}, Lcuc;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)V

    .line 115
    :cond_5
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 116
    iget v0, p0, Lcuc;->a:I

    .line 117
    invoke-static {v0, v11, v8, v9}, Ldng;->a(IILjava/lang/Integer;Ljava/util/Collection;)Ldng;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ldng;->m()Z

    move-result v2

    if-nez v2, :cond_6

    .line 122
    invoke-virtual {v0}, Ldng;->e()Ldqf;

    move-result-object v0

    check-cast v0, Ldyk;

    .line 123
    iget-object v0, v0, Ldyk;->g:Ljava/util/Map;

    invoke-direct {p0, p1, v9, v0}, Lcuc;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)V

    .line 157
    :cond_6
    :goto_2
    const/16 v0, 0x9d1

    invoke-static {v1, v0}, Laal;->a(Lbfd;I)V

    .line 158
    invoke-direct {p0, p1}, Lcuc;->e(Landroid/content/Context;)Lbdy;

    move-result-object v2

    .line 159
    new-instance v1, Lhus;

    if-eqz v2, :cond_b

    move v0, v6

    :goto_3
    invoke-direct {v1, v0}, Lhus;-><init>(Z)V

    .line 160
    invoke-virtual {v1}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "hangouts_contact"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    move-object v0, v1

    .line 161
    :goto_4
    return-object v0

    .line 127
    :cond_7
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 128
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 129
    new-instance v2, Lcud;

    .line 2295
    invoke-direct {v2, p0, p1, v0}, Lcud;-><init>(Lcuc;Landroid/content/Context;Landroid/os/ConditionVariable;)V

    .line 130
    iget v3, p0, Lcuc;->a:I

    .line 3295
    invoke-virtual {v2, v10, v3}, Lcud;->a(Ljava/util/Collection;I)V

    .line 131
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 4295
    iget-object v0, v2, Lcud;->a:Ldrb;

    .line 134
    if-nez v0, :cond_8

    .line 135
    const/16 v0, 0x9d0

    invoke-static {v1, v0}, Laal;->a(Lbfd;I)V

    .line 136
    new-instance v0, Lhus;

    .line 5295
    iget-object v1, v2, Lcud;->b:Ljava/lang/Exception;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->nM:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v1, v2}, Lhus;-><init>(ILjava/lang/Exception;Ljava/lang/String;)V

    goto :goto_4

    .line 139
    :cond_8
    invoke-virtual {v0}, Ldrb;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcuc;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 141
    :cond_9
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 142
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 143
    new-instance v2, Lcud;

    .line 6295
    invoke-direct {v2, p0, p1, v0}, Lcud;-><init>(Lcuc;Landroid/content/Context;Landroid/os/ConditionVariable;)V

    .line 144
    iget v3, p0, Lcuc;->a:I

    .line 7295
    invoke-virtual {v2, v9, v3}, Lcud;->b(Ljava/util/Collection;I)V

    .line 145
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 8295
    iget-object v0, v2, Lcud;->a:Ldrb;

    .line 148
    if-nez v0, :cond_a

    .line 149
    const/16 v0, 0x9d0

    invoke-static {v1, v0}, Laal;->a(Lbfd;I)V

    .line 150
    new-instance v0, Lhus;

    .line 9295
    iget-object v1, v2, Lcud;->b:Ljava/lang/Exception;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->nM:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v1, v2}, Lhus;-><init>(ILjava/lang/Exception;Ljava/lang/String;)V

    goto :goto_4

    .line 153
    :cond_a
    invoke-virtual {v0}, Ldrb;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcuc;->a(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_2

    :cond_b
    move v0, v7

    .line 159
    goto/16 :goto_3

    .line 96
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto/16 :goto_1
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget v0, Laal;->nN:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
