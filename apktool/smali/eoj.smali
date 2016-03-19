.class final Leoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Z

.field private final b:Lbfd;

.field private c:Z

.field private d:Leny;


# direct methods
.method public constructor <init>(Lbfd;Z)V
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object p1, p0, Leoj;->b:Lbfd;

    .line 486
    iput-boolean p2, p0, Leoj;->a:Z

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Leoj;->c:Z

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Leoj;->d:Leny;

    .line 489
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 492
    monitor-enter p0

    .line 493
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Leoj;->c:Z

    .line 494
    iget-object v0, p0, Leoj;->d:Leny;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Leoj;->d:Leny;

    .line 2034
    const/4 v1, 0x1

    iput-boolean v1, v0, Leny;->h:Z

    .line 497
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    .line 503
    :try_start_0
    new-instance v4, Lbfz;

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 504
    iget-object v1, p0, Leoj;->b:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-direct {v4, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 507
    iget-boolean v0, p0, Leoj;->a:Z

    if-eqz v0, :cond_1

    .line 3036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 508
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iget-object v1, p0, Leoj;->b:Lbfd;

    .line 509
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "sms_no_full_sync_till_millis"

    const-wide/16 v6, -0x1

    .line 510
    invoke-interface {v0, v1, v6, v7}, Lhqb;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-lez v0, :cond_7

    .line 3069
    sget-boolean v0, Leny;->a:Z

    .line 513
    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Leoj;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SmsSyncManager A#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": task can not be scheduled yet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 576
    :cond_0
    iget-object v0, p0, Leoj;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    .line 4069
    invoke-static {v0, p0}, Leny;->a(Ljava/lang/String;Leoj;)V

    .line 577
    :goto_0
    return-void

    .line 5036
    :cond_1
    :try_start_1
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 524
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iget-object v1, p0, Leoj;->b:Lbfd;

    .line 525
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "sms_last_sync_time_millis"

    const-wide/16 v2, -0x1

    .line 526
    invoke-interface {v0, v1, v2, v3}, Lhqb;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 528
    :goto_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 529
    :try_start_2
    iget-boolean v2, p0, Leoj;->c:Z

    if-eqz v2, :cond_2

    .line 530
    const-string v0, "Babel_SMS"

    iget-object v1, p0, Leoj;->b:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "SmsSyncManager A#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": task aborted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    iget-object v0, p0, Leoj;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    .line 5069
    invoke-static {v0, p0}, Leny;->a(Ljava/lang/String;Leoj;)V

    goto :goto_0

    .line 534
    :cond_2
    :try_start_3
    new-instance v2, Leny;

    iget-boolean v3, p0, Leoj;->a:Z

    .line 6069
    invoke-direct {v2, v4, v0, v1, v3}, Leny;-><init>(Lbfz;JZ)V

    .line 534
    iput-object v2, p0, Leoj;->d:Leny;

    .line 536
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 537
    :try_start_4
    iget-object v0, p0, Leoj;->d:Leny;

    .line 7069
    invoke-virtual {v0}, Leny;->b()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v1

    .line 538
    if-gez v1, :cond_3

    .line 576
    iget-object v0, p0, Leoj;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    .line 8069
    invoke-static {v0, p0}, Leny;->a(Ljava/lang/String;Leoj;)V

    goto :goto_0

    .line 536
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 576
    :catchall_1
    move-exception v0

    iget-object v1, p0, Leoj;->b:Lbfd;

    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    .line 12069
    invoke-static {v1, p0}, Leny;->a(Ljava/lang/String;Leoj;)V

    .line 576
    throw v0

    .line 542
    :cond_3
    :try_start_7
    iget-boolean v0, p0, Leoj;->a:Z

    if-eqz v0, :cond_4

    .line 9036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 545
    const-class v2, Lhpz;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iget-object v2, p0, Leoj;->b:Lbfd;

    .line 546
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-interface {v0, v2}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v2, "sms_last_full_sync_time_millis"

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 547
    invoke-virtual {v0, v2, v6, v7}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Lhqc;->d()I

    .line 9069
    :cond_4
    invoke-static {v4}, Leny;->a(Lbfz;)Z

    move-result v0

    .line 551
    if-nez v0, :cond_5

    .line 553
    iget-boolean v0, p0, Leoj;->a:Z

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 561
    const-string v0, "Babel_SMS"

    iget-object v1, p0, Leoj;->b:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "SmsSyncManager A#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": even after full sync we are still not in sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 563
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iget-object v1, p0, Leoj;->b:Lbfd;

    .line 564
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v1, "sms_no_full_sync_till_millis"

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 10069
    sget-wide v4, Leny;->e:J

    .line 566
    add-long/2addr v2, v4

    .line 565
    invoke-virtual {v0, v1, v2, v3}, Lhqc;->b(Ljava/lang/String;J)Lhqc;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Lhqc;->d()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 576
    :cond_5
    :goto_2
    iget-object v0, p0, Leoj;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    .line 11069
    invoke-static {v0, p0}, Leny;->a(Ljava/lang/String;Leoj;)V

    goto/16 :goto_0

    .line 572
    :cond_6
    :try_start_8
    iget-object v0, p0, Leoj;->b:Lbfd;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Leny;->a(Lbfd;ZJ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :cond_7
    move-wide v0, v2

    goto/16 :goto_1
.end method
