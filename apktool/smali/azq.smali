.class final Lazq;
.super Lhwd;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lazq;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lazs;

.field static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lazr;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    sput-object v0, Lazq;->a:Ljava/util/Map;

    .line 68
    new-instance v0, Lazs;

    invoke-direct {v0}, Lazs;-><init>()V

    sput-object v0, Lazq;->b:Lazs;

    .line 86
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    sput-object v0, Lazq;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 92
    const-string v0, "callerid_data"

    invoke-direct {p0, p1, v0, p2}, Lhwd;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method static a(Landroid/content/Context;I)Lazo;
    .locals 1

    .prologue
    .line 274
    invoke-static {p0, p1}, Laal;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lazq;->c(Landroid/content/Context;I)Lazo;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)Ljxg;
    .locals 3

    .prologue
    .line 353
    :try_start_0
    new-instance v0, Ljxg;

    invoke-direct {v0}, Ljxg;-><init>()V

    const/4 v1, 0x1

    .line 354
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 3131
    array-length v2, v1

    invoke-static {v0, v1, v2}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 353
    check-cast v0, Ljxg;
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Issue parsing ClientCallerIdSetting data from database partition"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(ILazr;)V
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lazq;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lazq;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    return-void
.end method

.method static a(Landroid/content/Context;IJ[Ljxg;)V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    invoke-static {p0, p1}, Lazq;->b(Landroid/content/Context;I)Lazq;

    move-result-object v2

    invoke-virtual {v2}, Lazq;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 180
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 183
    move-object/from16 v0, p4

    array-length v2, v0

    if-lez v2, :cond_1

    .line 184
    move-object/from16 v0, p4

    array-length v7, v0

    move v5, v3

    move v2, v3

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v8, p4, v5

    .line 185
    iget-object v9, v8, Ljxg;->d:Ljava/lang/Boolean;

    .line 1015
    invoke-static {v9, v3}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v9

    .line 185
    if-eqz v9, :cond_0

    .line 186
    sget-object v9, Lazq;->b:Lazs;

    new-instance v10, Lazo;

    move-wide/from16 v0, p2

    invoke-direct {v10, v0, v1, v8}, Lazo;-><init>(JLjxg;)V

    invoke-virtual {v9, p1, v10}, Lazs;->a(ILazo;)V

    .line 188
    add-int/lit8 v2, v2, 0x1

    .line 1222
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1223
    const-string v10, "phone_number_e164"

    iget-object v11, v8, Ljxg;->a:Llcf;

    iget-object v11, v11, Llcf;->a:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const-string v10, "is_default"

    iget-object v11, v8, Ljxg;->d:Ljava/lang/Boolean;

    .line 2015
    invoke-static {v11, v3}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v11

    .line 1226
    invoke-static {v11}, Lezc;->a(Z)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1225
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1227
    const-string v10, "refreshed_at"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1228
    const-string v10, "client_callerid_setting"

    .line 1229
    invoke-static {v8}, Llyi;->a(Llyi;)[B

    move-result-object v8

    .line 1228
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1233
    const-string v8, "client_callerid_settings"

    invoke-virtual {v6, v8, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 2243
    :cond_2
    const-string v5, "client_callerid_settings"

    const-string v7, "refreshed_at< ?"

    new-array v8, v4, [Ljava/lang/String;

    .line 2245
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 2243
    invoke-virtual {v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 196
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 197
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 201
    if-nez v2, :cond_3

    .line 202
    sget-object v5, Lazq;->b:Lazs;

    invoke-virtual {v5, p1, v12}, Lazs;->a(ILazo;)V

    .line 205
    :cond_3
    if-gt v2, v4, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v3}, Laen;->a(Z)V

    .line 206
    return-void
.end method

.method private static b(Landroid/content/Context;I)Lazq;
    .locals 4

    .prologue
    .line 107
    if-gez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid account ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    sget-object v1, Lazq;->a:Ljava/util/Map;

    monitor-enter v1

    .line 112
    :try_start_0
    sget-object v0, Lazq;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 113
    sget-object v0, Lazq;->a:Ljava/util/Map;

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lazq;

    invoke-direct {v3, p0, p1}, Lazq;-><init>(Landroid/content/Context;I)V

    .line 113
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_1
    sget-object v0, Lazq;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazq;

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static c(Landroid/content/Context;I)Lazo;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 296
    invoke-static {}, Laal;->x()V

    .line 299
    sget-object v0, Lazq;->b:Lazs;

    invoke-virtual {v0, p1}, Lazs;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-static {p0, p1}, Lazq;->b(Landroid/content/Context;I)Lazq;

    move-result-object v0

    invoke-virtual {v0}, Lazq;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2329
    const-string v1, "client_callerid_settings"

    sget-object v2, Lbav;->a:[Ljava/lang/String;

    const-string v3, "is_default="

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    .line 2332
    invoke-static {v5}, Lezc;->a(Z)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0xb

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    .line 2329
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 303
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/RuntimeException;

    .line 316
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x45

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected max of 1 default ClientCallerIdSetting but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 306
    :pswitch_0
    :try_start_1
    sget-object v0, Lazq;->b:Lazs;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lazs;->a(ILazo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_0
    sget-object v0, Lazq;->b:Lazs;

    invoke-virtual {v0, p1}, Lazs;->b(I)Lazo;

    move-result-object v0

    return-object v0

    .line 310
    :pswitch_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 311
    sget-object v0, Lazq;->b:Lazs;

    .line 2344
    new-instance v2, Lazo;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2345
    invoke-static {v1}, Lazq;->a(Landroid/database/Cursor;)Ljxg;

    move-result-object v3

    invoke-direct {v2, v4, v5, v3}, Lazo;-><init>(JLjxg;)V

    .line 311
    invoke-virtual {v0, p1, v2}, Lazs;->a(ILazo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
