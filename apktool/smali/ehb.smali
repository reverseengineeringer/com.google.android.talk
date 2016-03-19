.class public final Lehb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile a:Lehb;

.field private static final n:Z

.field private static volatile o:Z


# instance fields
.field public b:I

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field public volatile f:J

.field public volatile g:I

.field public volatile h:I

.field public volatile i:I

.field public volatile j:J

.field public volatile k:I

.field public volatile l:I

.field public volatile m:J

.field private final p:Landroid/os/Handler;

.field private volatile q:J

.field private volatile r:Z

.field private volatile s:Z

.field private volatile t:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    sget-object v0, Lezi;->q:Limx;

    sput-boolean v1, Lehb;->n:Z

    .line 46
    sput-boolean v1, Lehb;->o:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x32

    const-wide/32 v2, 0x240c8400

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lehb;->b:I

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lehb;->p:Landroid/os/Handler;

    .line 55
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lehb;->c:J

    .line 60
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lehb;->d:J

    .line 65
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lehb;->e:J

    .line 69
    iput-wide v2, p0, Lehb;->q:J

    .line 75
    const-wide/32 v0, 0xa4cb800

    iput-wide v0, p0, Lehb;->f:J

    .line 80
    iput v4, p0, Lehb;->g:I

    .line 83
    const/16 v0, 0x64

    iput v0, p0, Lehb;->h:I

    .line 86
    const/16 v0, 0x1f4

    iput v0, p0, Lehb;->i:I

    .line 90
    iput-wide v2, p0, Lehb;->j:J

    .line 95
    iput v4, p0, Lehb;->k:I

    .line 98
    const/16 v0, 0x7d0

    iput v0, p0, Lehb;->l:I

    .line 102
    iput-wide v2, p0, Lehb;->m:J

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lehb;->s:Z

    .line 256
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Lehb;->b(Z)V

    .line 116
    return-void
.end method

.method private static a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 399
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lbfz;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 583
    invoke-direct {p0, p1}, Lehb;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 593
    :goto_0
    return v0

    .line 587
    :cond_0
    invoke-virtual {p2}, Lbfz;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 588
    invoke-direct {p0, p1, p2, v0}, Lehb;->a(Landroid/content/Context;Lbfz;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 589
    goto :goto_0

    .line 593
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lbfz;II)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v8, 0x0

    .line 505
    invoke-direct {p0, p1}, Lehb;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 573
    :goto_0
    return v0

    .line 509
    :cond_0
    invoke-virtual {p2}, Lbfz;->a()V

    .line 514
    :try_start_0
    iget v0, p0, Lehb;->i:I

    invoke-virtual {p2, v0, p3}, Lbfz;->a(II)Ljava/util/List;

    move-result-object v3

    .line 518
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p4, :cond_1

    .line 519
    invoke-virtual {p2}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    invoke-virtual {p2}, Lbfz;->c()V

    move v0, v2

    goto :goto_0

    .line 524
    :cond_1
    add-int/lit8 v0, p4, -0x1

    .line 525
    :try_start_1
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 18051
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 529
    invoke-virtual {p2}, Lbfz;->u()J

    move-result-wide v4

    .line 530
    cmp-long v0, v4, v8

    if-eqz v0, :cond_6

    cmp-long v0, v6, v4

    if-lez v0, :cond_6

    .line 535
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lehb;->j:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 537
    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    .line 541
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p0, Lehb;->i:I

    if-lt v0, v4, :cond_4

    .line 542
    iget v0, p0, Lehb;->i:I

    add-int/lit8 v0, v0, -0x1

    .line 543
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 19051
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 546
    cmp-long v0, v6, v4

    if-gez v0, :cond_4

    .line 552
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 20051
    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 553
    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    .line 557
    invoke-virtual {p2}, Lbfz;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    invoke-virtual {p2}, Lbfz;->c()V

    move v0, v2

    goto :goto_0

    .line 562
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lehb;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 563
    invoke-virtual {p2}, Lbfz;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    invoke-virtual {p2}, Lbfz;->c()V

    move v0, v1

    goto/16 :goto_0

    .line 567
    :cond_3
    :try_start_3
    invoke-virtual {p2, v4, v5, p3}, Lbfz;->c(JI)Z

    .line 568
    invoke-virtual {p2}, Lbfz;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 570
    invoke-virtual {p2}, Lbfz;->c()V

    move v0, v2

    .line 573
    goto/16 :goto_0

    .line 570
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lbfz;->c()V

    throw v0

    :cond_4
    move-wide v4, v6

    goto :goto_3

    :cond_5
    move-wide v6, v4

    goto :goto_2

    :cond_6
    move-wide v4, v6

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Lbfz;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v8, 0x0

    .line 604
    invoke-direct {p0, p1}, Lehb;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 676
    :goto_0
    return v0

    .line 608
    :cond_0
    invoke-virtual {p2}, Lbfz;->a()V

    .line 613
    :try_start_0
    iget v0, p0, Lehb;->l:I

    invoke-virtual {p2, p3, v0}, Lbfz;->d(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 617
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p0, Lehb;->k:I

    if-gt v0, v4, :cond_1

    .line 618
    invoke-virtual {p2}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    invoke-virtual {p2}, Lbfz;->c()V

    move v0, v2

    goto :goto_0

    .line 623
    :cond_1
    :try_start_1
    iget v0, p0, Lehb;->k:I

    add-int/lit8 v0, v0, -0x1

    .line 624
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 21051
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 628
    invoke-virtual {p2, p3}, Lbfz;->P(Ljava/lang/String;)J

    move-result-wide v4

    .line 629
    cmp-long v0, v4, v8

    if-eqz v0, :cond_7

    cmp-long v0, v6, v4

    if-lez v0, :cond_7

    .line 634
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lehb;->m:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 635
    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    .line 639
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p0, Lehb;->l:I

    if-lt v0, v4, :cond_5

    .line 640
    iget v0, p0, Lehb;->l:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 22051
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 644
    cmp-long v0, v6, v4

    if-gez v0, :cond_5

    .line 650
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 23051
    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 651
    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    .line 655
    invoke-virtual {p2}, Lbfz;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    invoke-virtual {p2}, Lbfz;->c()V

    move v0, v2

    goto :goto_0

    .line 660
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lehb;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 661
    invoke-virtual {p2}, Lbfz;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 673
    invoke-virtual {p2}, Lbfz;->c()V

    move v0, v1

    goto/16 :goto_0

    .line 665
    :cond_3
    :try_start_3
    invoke-virtual {p2, p3, v4, v5}, Lbfz;->k(Ljava/lang/String;J)I

    move-result v0

    .line 666
    sget-boolean v1, Lehb;->n:Z

    if-eqz v1, :cond_4

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x31

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Deleted "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " old messages. conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_4
    invoke-virtual {p2}, Lbfz;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 673
    invoke-virtual {p2}, Lbfz;->c()V

    move v0, v2

    .line 676
    goto/16 :goto_0

    .line 673
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lbfz;->c()V

    throw v0

    :cond_5
    move-wide v4, v6

    goto :goto_3

    :cond_6
    move-wide v6, v4

    goto/16 :goto_2

    :cond_7
    move-wide v4, v6

    goto/16 :goto_1
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Lehb;->o:Z

    .line 120
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g()V

    .line 121
    return-void
.end method

.method private static b(Z)V
    .locals 8

    .prologue
    const-wide/32 v6, 0xea60

    .line 129
    sget-boolean v0, Lehb;->o:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_2

    .line 130
    :cond_0
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Scheduling database cleanup. forceReschedule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    :cond_1
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 134
    const-string v1, "babel_gc_next_start"

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v6

    .line 2036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 138
    const-string v3, "babel_gc_interval"

    const/16 v4, 0x5a0

    invoke-static {v2, v3, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v6

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 142
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(JJ)V

    .line 146
    const/4 v0, 0x1

    sput-boolean v0, Lehb;->o:Z

    .line 148
    :cond_2
    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17384
    const/4 v0, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 17385
    if-nez v0, :cond_3

    move v0, v1

    .line 365
    :goto_0
    iget-boolean v3, p0, Lehb;->s:Z

    if-eqz v3, :cond_0

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lehb;->t:J

    iget-wide v8, p0, Lehb;->c:J

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    if-nez v0, :cond_2

    .line 368
    :cond_0
    const-string v3, "Babel"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    const-string v3, "Babel"

    iget-boolean v4, p0, Lehb;->s:Z

    iget-wide v6, p0, Lehb;->t:J

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x83

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Database clean up service okToRun check failed. mOkToRun="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLastBabelIdleTimestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " charger connected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    :cond_1
    invoke-static {v2}, Lehb;->b(Z)V

    move v2, v1

    .line 379
    :cond_2
    return v2

    .line 17390
    :cond_3
    const-string v3, "plugged"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 17391
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_6

    .line 17405
    invoke-static {v0}, Lehb;->a(I)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    .line 17392
    goto :goto_0

    .line 17394
    :cond_6
    invoke-static {v0}, Lehb;->a(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static c()Lehb;
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lehb;->a:Lehb;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lehb;

    invoke-direct {v0}, Lehb;-><init>()V

    .line 155
    sput-object v0, Lehb;->a:Lehb;

    invoke-virtual {v0}, Lehb;->d()V

    .line 3036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 158
    invoke-static {v0}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v0

    new-instance v1, Lehc;

    invoke-direct {v1}, Lehc;-><init>()V

    invoke-interface {v0, v1}, Lbdp;->a(Ljava/lang/Runnable;)V

    .line 166
    :cond_0
    sget-object v0, Lehb;->a:Lehb;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 12

    .prologue
    .line 267
    iget-boolean v0, p0, Lehb;->r:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lehb;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lehb;->r:Z

    .line 274
    iget v0, p0, Lehb;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 275
    invoke-static {}, Ldvd;->f()[I

    move-result-object v0

    .line 280
    :goto_1
    array-length v3, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_e

    aget v4, v0, v2

    .line 281
    sget-boolean v1, Lehb;->n:Z

    if-eqz v1, :cond_2

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x33

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Starting database clean up for account: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    :cond_2
    invoke-static {v4}, Ldvd;->e(I)Lbfd;

    move-result-object v5

    .line 286
    if-eqz v5, :cond_4

    .line 290
    new-instance v6, Lbfz;

    invoke-virtual {v5}, Lbfd;->g()I

    move-result v1

    invoke-direct {v6, p1, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 15414
    invoke-direct {p0, p1}, Lehb;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 15415
    const/4 v1, 0x0

    .line 292
    :goto_3
    if-eqz v1, :cond_e

    .line 15435
    invoke-direct {p0, p1}, Lehb;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 15436
    const/4 v1, 0x0

    .line 296
    :goto_4
    if-eqz v1, :cond_e

    .line 15458
    invoke-direct {p0, p1}, Lehb;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 15459
    const/4 v1, 0x0

    .line 300
    :goto_5
    if-eqz v1, :cond_e

    .line 15481
    invoke-direct {p0, p1}, Lehb;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 15482
    const/4 v1, 0x0

    .line 304
    :goto_6
    if-eqz v1, :cond_e

    .line 309
    const/4 v1, 0x2

    iget v7, p0, Lehb;->g:I

    invoke-direct {p0, p1, v6, v1, v7}, Lehb;->a(Landroid/content/Context;Lbfz;II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 317
    const/4 v1, 0x1

    iget v7, p0, Lehb;->h:I

    invoke-direct {p0, p1, v6, v1, v7}, Lehb;->a(Landroid/content/Context;Lbfz;II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 322
    invoke-direct {p0, p1, v6}, Lehb;->a(Landroid/content/Context;Lbfz;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 326
    sget-boolean v1, Lehb;->n:Z

    if-eqz v1, :cond_3

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x33

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Finished database clean up for account: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    :cond_3
    invoke-virtual {v5}, Lbfd;->g()I

    move-result v1

    invoke-static {p1, v1}, Lbgw;->a(Landroid/content/Context;I)Lbgw;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Lbgw;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 335
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 337
    const-string v5, "Babel"

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " database size is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v5, 0x10

    .line 16219
    new-instance v8, Lcsn;

    .line 17040
    invoke-direct {v8}, Lcsn;-><init>()V

    .line 341
    invoke-virtual {v8, v1}, Lcsn;->a(I)Lcsn;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Lcsn;->b()Lcsn;

    move-result-object v1

    .line 339
    invoke-static {v4, v6, v7, v5, v1}, Laen;->a(IJILcsn;)V

    .line 280
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_2

    .line 277
    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lehb;->b:I

    aput v2, v0, v1

    goto/16 :goto_1

    .line 15418
    :cond_6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v8

    .line 15418
    invoke-virtual {v6, v8, v9}, Lbfz;->i(J)I

    move-result v1

    .line 15421
    sget-boolean v7, Lehb;->n:Z

    if-eqz v7, :cond_7

    .line 15422
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x2e

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Deleted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " expired event suggestions."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15425
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 15439
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lehb;->d:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 15442
    invoke-virtual {v6, v8, v9}, Lbfz;->h(J)I

    move-result v1

    .line 15444
    sget-boolean v7, Lehb;->n:Z

    if-eqz v7, :cond_9

    .line 15445
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x25

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Deleted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " expired messages."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15448
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 15462
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lehb;->e:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 15465
    invoke-virtual {v6, v8, v9}, Lbfz;->j(J)I

    move-result v1

    .line 15467
    sget-boolean v7, Lehb;->n:Z

    if-eqz v7, :cond_b

    .line 15468
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x28

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Deleted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " empty conversations."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15471
    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 15485
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lehb;->q:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 15488
    invoke-virtual {v6, v8, v9}, Lbfz;->k(J)I

    move-result v1

    .line 15490
    sget-boolean v7, Lehb;->n:Z

    if-eqz v7, :cond_d

    .line 15491
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x28

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Deleted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " expired invitations."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15494
    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_6

    .line 344
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lehb;->r:Z

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 352
    iput-boolean p1, p0, Lehb;->s:Z

    .line 354
    if-eqz p1, :cond_0

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lehb;->t:J

    .line 357
    :cond_0
    return-void
.end method

.method d()V
    .locals 7

    .prologue
    const/16 v6, 0x32

    const/16 v3, 0x2760

    const-wide/32 v4, 0xea60

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 200
    const-string v1, "babel_gc_minimum_idle"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lehb;->c:J

    .line 5036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 205
    const-string v1, "babel_gc_message_expiration_slop"

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lehb;->d:J

    .line 6036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 210
    const-string v1, "babel_gc_empty_conversation_slop"

    const/16 v2, 0x5a0

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lehb;->e:J

    .line 7036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 215
    const-string v1, "babel_gc_expired_invitation_slop"

    invoke-static {v0, v1, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lehb;->q:J

    .line 8036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 220
    const-string v1, "babel_gc_recent_scroll_slot"

    const/16 v2, 0xb40

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lehb;->f:J

    .line 9036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 225
    const-string v1, "babel_gc_min_conversations_to_keep"

    invoke-static {v0, v1, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lehb;->g:I

    .line 10036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 228
    const-string v1, "babel_gc_max_conversations_to_keep"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lehb;->i:I

    .line 11036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 231
    const-string v1, "babel_gc_recent_conversation_slop"

    invoke-static {v0, v1, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lehb;->j:J

    .line 12036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 235
    const-string v1, "babel_gc_min_invites_to_keep"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lehb;->h:I

    .line 13036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 239
    const-string v1, "babel_gc_min_messages_to_keep"

    invoke-static {v0, v1, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lehb;->k:I

    .line 14036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 242
    const-string v1, "babel_gc_max_messages_to_keep"

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lehb;->l:I

    .line 15036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 245
    const-string v1, "babel_gc_recent_message_slop"

    invoke-static {v0, v1, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lehb;->m:J

    .line 251
    const/4 v0, 0x1

    invoke-static {v0}, Lehb;->b(Z)V

    .line 252
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lehb;->f:J

    return-wide v0
.end method
