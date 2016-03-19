.class public final Ldvg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field private final b:Lbfd;

.field private final c:Ldvg;

.field private final d:Ldvm;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lbfd;Ldvg;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1355
    const/16 v0, 0x64

    iput v0, p0, Ldvg;->a:I

    .line 1356
    iput-boolean v1, p0, Ldvg;->e:Z

    .line 1357
    iput-boolean v1, p0, Ldvg;->f:Z

    .line 1358
    iput-boolean v1, p0, Ldvg;->g:Z

    .line 1359
    iput-boolean v1, p0, Ldvg;->h:Z

    .line 1362
    iput-object p1, p0, Ldvg;->b:Lbfd;

    .line 1363
    new-instance v0, Ldvm;

    iget-object v1, p0, Ldvg;->b:Lbfd;

    invoke-direct {v0, v1}, Ldvm;-><init>(Lbfd;)V

    iput-object v0, p0, Ldvg;->d:Ldvm;

    .line 1364
    iput-object p2, p0, Ldvg;->c:Ldvg;

    .line 1365
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1373
    iget-object v0, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    iget-object v1, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1488
    monitor-enter p0

    .line 1489
    :try_start_0
    const-string v1, "Babel"

    const-string v2, "Account registration complete:"

    invoke-virtual {p0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1491
    iget-object v1, p0, Ldvg;->b:Lbfd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lbff;->a(Landroid/content/Context;Lbfd;J)V

    .line 1493
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldvg;->f:Z

    .line 1494
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldvg;->g:Z

    .line 1495
    monitor-exit p0

    return-void

    .line 1489
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1495
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 1505
    monitor-enter p0

    .line 1506
    :try_start_0
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    const-string v1, "Babel"

    const-string v2, "register:"

    invoke-virtual {p0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6036
    :cond_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1509
    const-class v1, Leot;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 1510
    iget-object v1, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Leot;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1511
    const-string v0, "Babel"

    const-string v1, "Skipping registration for SMS only account"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1512
    monitor-exit p0

    .line 1550
    :goto_1
    return-void

    .line 1507
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1550
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1514
    :cond_2
    :try_start_1
    iget-object v0, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1515
    const-string v1, "Babel"

    const-string v2, "Account not valid for babel. Skip device registration: "

    invoke-virtual {p0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1516
    monitor-exit p0

    goto :goto_1

    .line 1515
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1519
    :cond_4
    invoke-virtual {p0}, Ldvg;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    .line 1520
    const-string v1, "Babel"

    const-string v2, "Account already registered. Skip device registration: "

    invoke-virtual {p0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1521
    monitor-exit p0

    goto :goto_1

    .line 1520
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 6057
    :cond_6
    sget-object v0, Ldvd;->e:Ldvf;

    .line 6396
    invoke-static {}, Ldwt;->a()Ldwt;

    move-result-object v0

    invoke-virtual {v0}, Ldwt;->d()Z

    move-result v0

    .line 1524
    if-eqz v0, :cond_8

    .line 1533
    const-string v1, "Babel"

    const-string v2, "register - retrying gcm registration:"

    invoke-virtual {p0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1534
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldvg;->e:Z

    .line 7057
    sget-object v0, Ldvd;->e:Ldvf;

    .line 7400
    invoke-static {}, Ldwt;->a()Ldwt;

    move-result-object v0

    invoke-virtual {v0}, Ldwt;->g()V

    .line 1536
    monitor-exit p0

    goto/16 :goto_1

    .line 1533
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 8057
    :cond_8
    sget-object v0, Ldvd;->e:Ldvf;

    .line 8404
    invoke-static {}, Ldwt;->a()Ldwt;

    move-result-object v0

    invoke-virtual {v0}, Ldwt;->c()Z

    move-result v0

    .line 1539
    if-nez v0, :cond_a

    .line 1540
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldvg;->e:Z

    .line 1541
    const-string v1, "Babel"

    const-string v2, "Account registration pending Gcm:"

    invoke-virtual {p0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1550
    :goto_6
    monitor-exit p0

    goto/16 :goto_1

    .line 1541
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 1543
    :cond_a
    const-string v1, "Babel"

    const-string v2, "Starting account registration:"

    invoke-virtual {p0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1545
    iget-object v0, p0, Ldvg;->b:Lbfd;

    iget-boolean v1, p0, Ldvg;->h:Z

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Z)V

    .line 1547
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldvg;->f:Z

    .line 1548
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldvg;->e:Z

    goto :goto_6

    .line 1543
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Ldvg;->c:Ldvg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ldvm;
    .locals 1

    .prologue
    .line 1381
    monitor-enter p0

    .line 1382
    :try_start_0
    iget-object v0, p0, Ldvg;->d:Ldvm;

    monitor-exit p0

    return-object v0

    .line 1383
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1387
    invoke-virtual {p0}, Ldvg;->h()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->M()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->U()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    return v0
.end method

.method public h()Lbfd;
    .locals 1

    .prologue
    .line 1403
    monitor-enter p0

    .line 1404
    :try_start_0
    iget-object v0, p0, Ldvg;->b:Lbfd;

    monitor-exit p0

    return-object v0

    .line 1405
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()I
    .locals 5

    .prologue
    const/16 v1, 0x66

    const/16 v3, 0x65

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1409
    const-class v2, Leot;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 1410
    invoke-virtual {p0}, Ldvg;->g()I

    move-result v2

    .line 1411
    invoke-interface {v0, v2}, Leot;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1430
    :goto_0
    return v0

    .line 1414
    :cond_0
    monitor-enter p0

    .line 1415
    :try_start_0
    iget v0, p0, Ldvg;->a:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    iget v0, p0, Ldvg;->a:I

    if-ne v0, v3, :cond_2

    .line 1417
    :cond_1
    iget-object v0, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1418
    const/16 v0, 0x6c

    iput v0, p0, Ldvg;->a:I

    .line 2057
    :cond_2
    :goto_1
    sget-boolean v0, Ldvd;->a:Z

    .line 1426
    if-eqz v0, :cond_3

    .line 1428
    invoke-virtual {p0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ldvg;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    :cond_3
    iget v0, p0, Ldvg;->a:I

    monitor-exit p0

    goto :goto_0

    .line 1431
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1419
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ldvg;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1420
    const/16 v0, 0x66

    iput v0, p0, Ldvg;->a:I

    goto :goto_1

    .line 1421
    :cond_5
    iget-boolean v0, p0, Ldvg;->e:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Ldvg;->f:Z

    if-eqz v0, :cond_2

    .line 1422
    :cond_6
    const/16 v0, 0x65

    iput v0, p0, Ldvg;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public j()V
    .locals 3

    .prologue
    .line 3057
    sget-boolean v0, Ldvd;->a:Z

    .line 1440
    if-eqz v0, :cond_0

    .line 1441
    const-string v0, "Clearing account state for"

    invoke-virtual {p0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1444
    :cond_0
    :goto_0
    monitor-enter p0

    .line 1445
    const/16 v0, 0x64

    :try_start_0
    iput v0, p0, Ldvg;->a:I

    .line 1446
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldvg;->e:Z

    .line 1447
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldvg;->f:Z

    .line 1448
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldvg;->g:Z

    .line 1449
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldvg;->h:Z

    .line 1450
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1441
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1450
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1459
    const-class v1, Lawm;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawm;

    iget-object v1, p0, Ldvg;->b:Lbfd;

    .line 1460
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawm;->a(I)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 1469
    invoke-virtual {p0}, Ldvg;->i()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->k()Z

    move-result v0

    return v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 1557
    monitor-enter p0

    .line 1561
    :try_start_0
    invoke-static {}, Ldwt;->a()Ldwt;

    move-result-object v0

    invoke-virtual {v0}, Ldwt;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Ldvg;->b:Lbfd;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Lbfd;)V

    .line 1565
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldvg;->a(Ljava/lang/String;)V

    .line 1566
    invoke-virtual {p0}, Ldvg;->j()V

    .line 1567
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public o()V
    .locals 4

    .prologue
    .line 9036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1574
    iget-object v1, p0, Ldvg;->b:Lbfd;

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lbff;->a(Landroid/content/Context;Lbfd;J)V

    .line 1575
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 10036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1578
    iget-object v1, p0, Ldvg;->b:Lbfd;

    invoke-static {v0, v1}, Lbff;->h(Landroid/content/Context;Lbfd;)V

    .line 1579
    return-void
.end method

.method q()V
    .locals 8

    .prologue
    .line 1585
    monitor-enter p0

    .line 1586
    :try_start_0
    iget-object v0, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1587
    const-string v0, "Babel"

    invoke-virtual {p0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not valid for babel. Skip device registration renew."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1589
    monitor-exit p0

    .line 1613
    :goto_0
    return-void

    .line 1592
    :cond_0
    invoke-virtual {p0}, Ldvg;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldvg;->g:Z

    if-eqz v0, :cond_2

    .line 1593
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1613
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 11036
    :cond_2
    :try_start_1
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1596
    iget-object v1, p0, Ldvg;->b:Lbfd;

    invoke-static {v0, v1}, Lbff;->f(Landroid/content/Context;Lbfd;)J

    move-result-wide v0

    .line 1597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1602
    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    sub-long v0, v2, v0

    .line 1603
    invoke-static {}, Ldvd;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 1604
    :cond_3
    invoke-static {}, Ldwt;->a()Ldwt;

    move-result-object v0

    invoke-virtual {v0}, Ldwt;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1605
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1606
    const-string v1, "Babel"

    const-string v2, "Renewing account registration:"

    invoke-virtual {p0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1609
    :cond_4
    iget-object v0, p0, Ldvg;->b:Lbfd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Z)V

    .line 1610
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldvg;->g:Z

    .line 1613
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 1606
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method r()V
    .locals 8

    .prologue
    .line 1621
    monitor-enter p0

    .line 1625
    :try_start_0
    invoke-virtual {p0}, Ldvg;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1626
    monitor-exit p0

    .line 1648
    :goto_0
    return-void

    .line 12036
    :cond_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1628
    const-class v1, Leot;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 1629
    iget-object v1, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Leot;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1631
    monitor-exit p0

    goto :goto_0

    .line 1648
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 13036
    :cond_1
    :try_start_1
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1634
    iget-object v1, p0, Ldvg;->b:Lbfd;

    invoke-static {v0, v1}, Lbff;->g(Landroid/content/Context;Lbfd;)J

    move-result-wide v0

    .line 1635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1640
    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    sub-long v0, v2, v0

    .line 1641
    invoke-static {}, Ldvd;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 1642
    :cond_2
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1643
    const-string v1, "Babel"

    const-string v2, "Renewing account setting:"

    invoke-virtual {p0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1646
    :cond_3
    iget-object v0, p0, Ldvg;->b:Lbfd;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;)V

    .line 1648
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1643
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 1652
    monitor-enter p0

    .line 14036
    :try_start_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1653
    iget-object v1, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-static {v0, v1}, Lbff;->f(Landroid/content/Context;I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1654
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 1661
    monitor-enter p0

    .line 15036
    :try_start_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1662
    iget-object v1, p0, Ldvg;->b:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-static {v0, v1}, Lbff;->g(Landroid/content/Context;I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1663
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
