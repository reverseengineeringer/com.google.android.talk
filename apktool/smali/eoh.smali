.class final Leoh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leod;


# instance fields
.field private a:Landroid/database/Cursor;

.field private b:Landroid/database/Cursor;

.field private c:Lems;

.field private d:Lems;


# direct methods
.method public constructor <init>(JJ)V
    .locals 13

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Leoh;->a:Landroid/database/Cursor;

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Leoh;->b:Landroid/database/Cursor;

    .line 2036
    :try_start_0
    sget-object v7, Laal;->oJ:Landroid/content/Context;

    .line 323
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2069
    sget-object v9, Leny;->g:Landroid/net/Uri;

    .line 325
    invoke-static {}, Lenn;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lemw;->a:[Ljava/lang/String;

    move-object v6, v0

    .line 2326
    :goto_0
    sget-object v0, Leny;->b:Ljava/lang/String;

    .line 328
    const-string v1, "date"

    move-wide v2, p1

    move-wide/from16 v4, p3

    .line 327
    invoke-static/range {v0 .. v5}, Leny;->a(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC"

    move-object v0, v8

    move-object v1, v9

    move-object v2, v6

    .line 321
    invoke-static/range {v0 .. v5}, Laal;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Leoh;->a:Landroid/database/Cursor;

    .line 349
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 3069
    sget-object v7, Leny;->f:Landroid/net/Uri;

    .line 350
    sget-object v8, Lemu;->a:[Ljava/lang/String;

    .line 3341
    sget-object v0, Leny;->c:Ljava/lang/String;

    .line 353
    const-string v1, "date"

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    const-wide/16 v4, 0x3e7

    add-long v4, v4, p3

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    .line 352
    invoke-static/range {v0 .. v5}, Leny;->a(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC"

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    .line 347
    invoke-static/range {v0 .. v5}, Laal;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Leoh;->b:Landroid/database/Cursor;

    .line 363
    invoke-direct {p0}, Leoh;->c()Lems;

    move-result-object v0

    iput-object v0, p0, Leoh;->c:Lems;

    .line 364
    invoke-direct {p0}, Leoh;->d()Lems;

    move-result-object v0

    iput-object v0, p0, Leoh;->d:Lems;

    .line 371
    return-void

    .line 326
    :cond_0
    sget-object v0, Lemw;->b:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    const-string v1, "Babel_SMS"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "SmsSyncManager.queryMms: failed to query mms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    throw v0
.end method

.method private c()Lems;
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Leoh;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leoh;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Leoh;->a:Landroid/database/Cursor;

    .line 4143
    new-instance v0, Lemw;

    invoke-direct {v0}, Lemw;-><init>()V

    .line 4144
    invoke-virtual {v0, v1}, Lemw;->a(Landroid/database/Cursor;)V

    .line 401
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lems;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Leoh;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leoh;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Leoh;->b:Landroid/database/Cursor;

    invoke-static {v0}, Lemu;->a(Landroid/database/Cursor;)Lemu;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lems;
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Leoh;->c:Lems;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leoh;->d:Lems;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Leoh;->c:Lems;

    invoke-virtual {v0}, Lems;->c()J

    move-result-wide v0

    iget-object v2, p0, Leoh;->d:Lems;

    invoke-virtual {v2}, Lems;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 379
    iget-object v0, p0, Leoh;->c:Lems;

    .line 380
    invoke-direct {p0}, Leoh;->c()Lems;

    move-result-object v1

    iput-object v1, p0, Leoh;->c:Lems;

    .line 394
    :goto_0
    return-object v0

    .line 382
    :cond_0
    iget-object v0, p0, Leoh;->d:Lems;

    .line 383
    invoke-direct {p0}, Leoh;->d()Lems;

    move-result-object v1

    iput-object v1, p0, Leoh;->d:Lems;

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Leoh;->c:Lems;

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Leoh;->c:Lems;

    .line 388
    invoke-direct {p0}, Leoh;->c()Lems;

    move-result-object v1

    iput-object v1, p0, Leoh;->c:Lems;

    goto :goto_0

    .line 390
    :cond_2
    iget-object v0, p0, Leoh;->d:Lems;

    .line 391
    invoke-direct {p0}, Leoh;->d()Lems;

    move-result-object v1

    iput-object v1, p0, Leoh;->d:Lems;

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 413
    iget-object v0, p0, Leoh;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Leoh;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 415
    iput-object v1, p0, Leoh;->a:Landroid/database/Cursor;

    .line 417
    :cond_0
    iget-object v0, p0, Leoh;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Leoh;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 419
    iput-object v1, p0, Leoh;->b:Landroid/database/Cursor;

    .line 421
    :cond_1
    return-void
.end method
