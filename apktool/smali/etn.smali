.class final Letn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhjb;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Letk;

.field private b:Z

.field private c:J


# direct methods
.method constructor <init>(Letk;)V
    .locals 0

    .prologue
    .line 1390
    iput-object p1, p0, Letn;->a:Letk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 10489
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1457
    iget-boolean v0, p0, Letn;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Letn;->a:Letk;

    .line 11083
    iget-boolean v0, v0, Letk;->g:Z

    .line 1457
    if-eqz v0, :cond_1

    .line 1468
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    if-eqz p1, :cond_2

    .line 1462
    iget-object v0, p0, Letn;->a:Letk;

    invoke-virtual {v0, p1}, Letk;->b(Ljava/lang/String;)V

    .line 1464
    :cond_2
    if-nez p2, :cond_3

    .line 1465
    iget-object v0, p0, Letn;->a:Letk;

    .line 12083
    invoke-virtual {v0, p2}, Letk;->a(Z)V

    .line 12493
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Letn;->b:Z

    .line 12494
    iget-object v0, p0, Letn;->a:Letk;

    invoke-virtual {v0}, Letk;->m()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Letn;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 1442
    invoke-direct {p0}, Letn;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1443
    iget-object v1, p0, Letn;->a:Letk;

    .line 9083
    const/16 v2, 0xb49

    invoke-virtual {v1, v2, v0}, Letk;->a(II)V

    .line 1445
    const-string v0, "Babel_telephony"

    const-string v1, "HangoutIdCreatorListener.handleSlowHangoutIdCreation, latency too high. Using cell"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1447
    const/4 v0, 0x0

    invoke-direct {p0, v0, v4}, Letn;->a(Ljava/lang/String;Z)V

    .line 1453
    :goto_0
    return-void

    .line 1449
    :cond_0
    iget-object v1, p0, Letn;->a:Letk;

    .line 10083
    const/16 v2, 0xb4b

    invoke-virtual {v1, v2, v0}, Letk;->a(II)V

    .line 1451
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Letn;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 1395
    iget-object v0, p0, Letn;->a:Letk;

    .line 2083
    iget-object v0, v0, Letk;->a:Landroid/content/Context;

    .line 1396
    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    invoke-virtual {v0}, Leut;->b()I

    move-result v0

    .line 2507
    sget-object v1, Ldvp;->L:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ldvp;->M:Ldml;

    .line 2508
    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 1395
    goto :goto_0
.end method

.method private d()J
    .locals 4

    .prologue
    .line 1483
    iget-object v0, p0, Letn;->a:Letk;

    .line 15083
    iget-object v0, v0, Letk;->a:Landroid/content/Context;

    .line 1483
    const-string v1, "babel_wifi_calls_create_hangout_id_timeout_millis"

    sget-wide v2, Lers;->c:J

    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1423
    const-string v0, "Babel_telephony"

    const-string v1, "HangoutIdCreatorListener.onFailure, Failed to create hangoutId\n responseReceived : "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Letn;->b:Z

    iget-object v3, p0, Letn;->a:Letk;

    .line 6083
    iget-boolean v3, v3, Letk;->g:Z

    .line 1424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setupFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    .line 1423
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1425
    iget-object v0, p0, Letn;->a:Letk;

    .line 7877
    const/16 v1, 0xb49

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Letk;->a(II)V

    .line 1426
    const/4 v0, 0x0

    invoke-direct {p0, v0, v6}, Letn;->a(Ljava/lang/String;Z)V

    .line 1427
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Letn;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 1402
    const-string v1, "Babel_telephony"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x57

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HangoutIdCreatorListener.onSuccess, time taken to create hangoutId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " millis"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1404
    const-string v1, "Babel_telephony"

    iget-boolean v2, p0, Letn;->b:Z

    iget-object v3, p0, Letn;->a:Letk;

    .line 3083
    iget-boolean v3, v3, Letk;->g:Z

    .line 1405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x69

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "HangoutIdCreatorListener.onSuccess, Received hangoutId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " responseReceived : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", setupFinished : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 1404
    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1407
    int-to-long v2, v0

    invoke-direct {p0}, Letn;->d()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 1408
    invoke-direct {p0}, Letn;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    iget-object v1, p0, Letn;->a:Letk;

    .line 4083
    const/16 v2, 0xb4a

    invoke-virtual {v1, v2, v0}, Letk;->a(II)V

    .line 1415
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Letn;->a(Ljava/lang/String;Z)V

    .line 1419
    :goto_1
    return-void

    .line 1412
    :cond_0
    iget-object v1, p0, Letn;->a:Letk;

    .line 5083
    const/16 v2, 0xb4c

    invoke-virtual {v1, v2, v0}, Letk;->a(II)V

    goto :goto_0

    .line 1417
    :cond_1
    invoke-direct {p0, p1}, Letn;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method b()V
    .locals 6

    .prologue
    .line 1471
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v2

    .line 13476
    invoke-direct {p0}, Letn;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Letn;->d()J

    move-result-wide v0

    .line 1471
    :goto_0
    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Letn;->c:J

    .line 1473
    return-void

    .line 13477
    :cond_0
    iget-object v0, p0, Letn;->a:Letk;

    .line 14083
    iget-object v0, v0, Letk;->a:Landroid/content/Context;

    .line 13477
    const-string v1, "babel_wifi_calls_create_hangout_id_max_timeout_millis"

    sget-wide v4, Lers;->d:J

    invoke-static {v0, v1, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1434
    const-string v0, "Babel_telephony"

    const-string v1, "HangoutIdCreatorListener.run, timed out when creating hangoutId\n responseReceived : "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Letn;->b:Z

    iget-object v3, p0, Letn;->a:Letk;

    .line 8083
    iget-boolean v3, v3, Letk;->g:Z

    .line 1435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setupFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1434
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1436
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Letn;->b(Ljava/lang/String;)V

    .line 1437
    return-void
.end method
