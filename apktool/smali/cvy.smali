.class public final Lcvy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcwd;


# static fields
.field static final a:Z


# instance fields
.field final b:Ljava/lang/String;

.field final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcwf;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcwf;

.field final e:Lcwe;

.field f:Ljava/util/concurrent/Future;

.field private g:Z

.field private h:Z

.field private i:J

.field private j:J

.field private final k:Lcwm;

.field private final l:Ljava/lang/Object;

.field private final m:Llbe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lezi;->j:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcvy;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcwe;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcvy;-><init>(Ljava/lang/String;Lcwe;B)V

    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcwe;B)V
    .locals 3

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    .line 45
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcvy;->i:J

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcvy;->l:Ljava/lang/Object;

    .line 87
    iput-object p1, p0, Lcvy;->b:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcvy;->e:Lcwe;

    .line 89
    invoke-interface {p2}, Lcwe;->c()Lcwm;

    move-result-object v0

    iput-object v0, p0, Lcvy;->k:Lcwm;

    .line 94
    new-instance v0, Llbm;

    invoke-direct {v0}, Llbm;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "fq-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Llbm;->a(Ljava/lang/String;)Llbm;

    move-result-object v0

    invoke-virtual {v0}, Llbm;->b()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 102
    invoke-static {v0}, Laal;->a(Ljava/util/concurrent/ScheduledExecutorService;)Llbe;

    move-result-object v0

    iput-object v0, p0, Lcvy;->m:Llbe;

    .line 103
    return-void
.end method

.method private b(Lcwf;)V
    .locals 5

    .prologue
    .line 436
    iget-object v1, p0, Lcvy;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 437
    :try_start_0
    sget-boolean v0, Lcvy;->a:Z

    if-eqz v0, :cond_0

    .line 438
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Removing request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " queue_size:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    :cond_0
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 441
    iget-object v0, p0, Lcvy;->k:Lcwm;

    iget-object v2, p1, Lcwf;->a:Lcwk;

    iget-wide v2, v2, Lcwk;->a:J

    invoke-interface {v0, v2, v3}, Lcwm;->a(J)V

    .line 443
    iget-object v0, p0, Lcvy;->d:Lcwf;

    if-ne p1, v0, :cond_1

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcvy;->d:Lcwf;

    .line 446
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(Lcwf;)Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 476
    iget-object v4, p0, Lcvy;->l:Ljava/lang/Object;

    monitor-enter v4

    .line 477
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    move v2, v3

    .line 479
    :goto_0
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 480
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 481
    if-eq p1, v0, :cond_4

    .line 485
    iget-object v6, p1, Lcwf;->a:Lcwk;

    iget v6, v6, Lcwk;->c:I

    iget-object v7, v0, Lcwf;->a:Lcwk;

    iget v7, v7, Lcwk;->c:I

    if-ne v6, v7, :cond_4

    .line 489
    iget-object v6, v0, Lcwf;->a:Lcwk;

    iget-wide v6, v6, Lcwk;->a:J

    iget-object v8, p1, Lcwf;->a:Lcwk;

    iget-wide v8, v8, Lcwk;->a:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 492
    const-string v0, "Babel_FutureNQ"

    iget-object v1, p1, Lcwf;->a:Lcwk;

    iget-wide v6, v1, Lcwk;->a:J

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x4b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Insertion of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignored since it is already in the queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    monitor-exit v4

    move v0, v3

    .line 519
    :goto_1
    return v0

    .line 496
    :cond_0
    invoke-virtual {p1}, Lcwf;->a()Lcwi;

    move-result-object v6

    .line 497
    invoke-virtual {v0}, Lcwf;->a()Lcwi;

    move-result-object v7

    .line 498
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_4

    .line 502
    iget-object v8, p0, Lcvy;->d:Lcwf;

    if-eq v8, v0, :cond_4

    invoke-interface {v6, v7}, Lcwi;->a(Lcwi;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 505
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 479
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 510
    :cond_1
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 512
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 513
    sget-boolean v2, Lcvy;->a:Z

    if-eqz v2, :cond_2

    .line 514
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1d

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "not sending replaced request "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_2
    invoke-direct {p0, v0}, Lcvy;->b(Lcwf;)V

    goto :goto_3

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method private f()V
    .locals 5

    .prologue
    .line 210
    iget-object v1, p0, Lcvy;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcvy;->d:Lcwf;

    if-eqz v0, :cond_0

    .line 213
    monitor-exit v1

    .line 238
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcvy;->h()Lcwf;

    move-result-object v0

    .line 217
    if-nez v0, :cond_1

    .line 218
    monitor-exit v1

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 222
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcvy;->e:Lcwe;

    invoke-interface {v2}, Lcwe;->H_()Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    monitor-exit v1

    goto :goto_0

    .line 225
    :cond_2
    new-instance v2, Lcwl;

    invoke-direct {v2}, Lcwl;-><init>()V

    .line 226
    iget-object v3, p0, Lcvy;->e:Lcwe;

    iget-object v4, p0, Lcvy;->m:Llbe;

    .line 227
    invoke-virtual {v0, v3, v2, v4}, Lcwf;->a(Lcwe;Lcwl;Llbd;)Llbb;

    move-result-object v0

    .line 228
    new-instance v2, Lcvz;

    invoke-direct {v2, p0}, Lcvz;-><init>(Lcvy;)V

    iget-object v3, p0, Lcvy;->m:Llbe;

    invoke-static {v0, v2, v3}, Llau;->a(Llbb;Llat;Ljava/util/concurrent/Executor;)V

    .line 238
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private g()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const-wide v4, 0x7fffffffffffffffL

    .line 326
    iget-object v7, p0, Lcvy;->l:Ljava/lang/Object;

    monitor-enter v7

    .line 3451
    :try_start_0
    iget-boolean v0, p0, Lcvy;->g:Z

    .line 327
    if-eqz v0, :cond_0

    .line 329
    monitor-exit v7

    .line 366
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-wide v2, p0, Lcvy;->i:J

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 336
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_1
    if-ltz v6, :cond_3

    .line 337
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 339
    invoke-virtual {v0}, Lcwf;->f()J

    move-result-wide v10

    .line 340
    cmp-long v1, v10, v12

    if-gtz v1, :cond_2

    .line 343
    iget-object v1, p0, Lcvy;->d:Lcwf;

    if-eq v1, v0, :cond_a

    .line 344
    sget-object v1, Ldvn;->a:Ldvn;

    .line 3616
    invoke-virtual {v0, v1}, Lcwf;->a(Ldvn;)V

    .line 345
    sget-boolean v1, Lcvy;->a:Z

    if-eqz v1, :cond_1

    .line 346
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x26

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "pausing queue: remove expired request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_1
    invoke-direct {p0, v0}, Lcvy;->b(Lcwf;)V

    move-wide v0, v2

    .line 336
    :goto_2
    add-int/lit8 v2, v6, -0x1

    move v6, v2

    move-wide v2, v0

    goto :goto_1

    .line 351
    :cond_2
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_2

    .line 357
    :cond_3
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 358
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 359
    invoke-virtual {v0}, Lcwf;->g()J

    move-result-wide v0

    .line 360
    cmp-long v6, v0, v12

    if-lez v6, :cond_4

    .line 361
    sub-long/2addr v0, v8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 364
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcvy;->h:Z

    .line 4374
    iget-object v6, p0, Lcvy;->l:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4375
    :try_start_1
    sget-boolean v0, Lcvy;->a:Z

    if-eqz v0, :cond_5

    .line 4376
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    .line 4377
    const-string v0, "FOREVER"

    .line 4379
    :goto_3
    iget-object v1, p0, Lcvy;->b:Ljava/lang/String;

    iget-object v8, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x26

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "pausing queue "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "["

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "]; duration "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4451
    :cond_5
    iget-boolean v0, p0, Lcvy;->g:Z

    .line 4383
    if-eqz v0, :cond_7

    .line 4384
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 366
    :goto_4
    :try_start_2
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4378
    :cond_6
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 4386
    :cond_7
    cmp-long v0, v2, v4

    if-nez v0, :cond_9

    move-wide v0, v4

    .line 4387
    :goto_5
    iput-wide v0, p0, Lcvy;->j:J

    .line 4390
    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    .line 4391
    iget-object v0, p0, Lcvy;->m:Llbe;

    new-instance v1, Lcwa;

    invoke-direct {v1, p0}, Lcwa;-><init>(Lcvy;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Llbe;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Llbc;

    move-result-object v0

    iput-object v0, p0, Lcvy;->f:Ljava/util/concurrent/Future;

    .line 4398
    :cond_8
    monitor-exit v6

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4387
    :cond_9
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_5

    :cond_a
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private h()Lcwf;
    .locals 2

    .prologue
    .line 458
    iget-object v1, p0, Lcvy;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 5451
    :try_start_0
    iget-boolean v0, p0, Lcvy;->g:Z

    .line 459
    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    iput-object v0, p0, Lcvy;->d:Lcwf;

    .line 462
    iget-object v0, p0, Lcvy;->d:Lcwf;

    monitor-exit v1

    .line 465
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcvy;->a(Z)V

    .line 108
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 634
    iput-wide p1, p0, Lcvy;->i:J

    .line 635
    return-void
.end method

.method a(Lcwf;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 244
    iget-object v3, p0, Lcvy;->l:Ljava/lang/Object;

    monitor-enter v3

    .line 245
    :try_start_0
    invoke-virtual {p1}, Lcwf;->b()I

    move-result v2

    .line 246
    invoke-virtual {p1}, Lcwf;->c()Lcwl;

    move-result-object v4

    .line 249
    sget v5, Lcwj;->b:I

    if-ne v2, v5, :cond_1

    .line 252
    iget-object v1, p0, Lcvy;->e:Lcwe;

    const-wide/16 v4, 0x1f4

    invoke-interface {v1, v4, v5}, Lcwe;->a(J)V

    .line 254
    const-wide/16 v4, 0x1f4

    iput-wide v4, p0, Lcvy;->i:J

    .line 256
    sget-boolean v1, Lcvy;->a:Z

    if-eqz v1, :cond_0

    .line 257
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x29

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "request successful. removing from queue: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    invoke-direct {p0, p1}, Lcvy;->b(Lcwf;)V

    .line 260
    iget-object v1, p0, Lcvy;->e:Lcwe;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcwe;->a(Z)V

    .line 300
    :goto_0
    iget-object v1, p0, Lcvy;->e:Lcwe;

    invoke-interface {v1}, Lcwe;->I_()V

    .line 301
    if-eqz v0, :cond_8

    .line 302
    invoke-direct {p0}, Lcvy;->g()V

    .line 306
    :goto_1
    monitor-exit v3

    return-void

    .line 262
    :cond_1
    iget-object v2, p0, Lcvy;->e:Lcwe;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcwe;->a(Z)V

    .line 263
    invoke-virtual {p1}, Lcwf;->d()Ljava/lang/String;

    move-result-object v2

    .line 264
    if-eqz v2, :cond_2

    .line 265
    invoke-static {v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Ljava/lang/String;)V

    .line 268
    :cond_2
    if-nez v2, :cond_4

    .line 269
    invoke-virtual {p1, v4}, Lcwf;->a(Lcwl;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    .line 270
    :goto_2
    if-nez v2, :cond_5

    .line 271
    invoke-virtual {v4}, Lcwl;->c()Ldvn;

    move-result-object v1

    .line 272
    sget-boolean v2, Lcvy;->a:Z

    if-eqz v2, :cond_3

    .line 273
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {v4}, Lcwl;->a()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x28

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "not retrying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "; error code == "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2616
    :cond_3
    invoke-virtual {p1, v1}, Lcwf;->a(Ldvn;)V

    .line 277
    invoke-direct {p0, p1}, Lcvy;->b(Lcwf;)V

    .line 297
    :goto_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcvy;->d:Lcwf;

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v2, v0

    .line 269
    goto :goto_2

    .line 279
    :cond_5
    :try_start_1
    invoke-virtual {v4}, Lcwl;->b()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    .line 280
    iget-object v0, p1, Lcwf;->a:Lcwk;

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Lcwl;->b()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcwk;->f:J

    .line 283
    :cond_6
    iget-object v0, p0, Lcvy;->k:Lcwm;

    invoke-interface {v0, p1}, Lcwm;->a(Lcwf;)V

    .line 285
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    .line 286
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iget-wide v8, p0, Lcvy;->i:J

    shl-long/2addr v8, v1

    .line 285
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcvy;->i:J

    .line 289
    sget-boolean v0, Lcvy;->a:Z

    if-eqz v0, :cond_7

    .line 290
    iget-object v0, p0, Lcvy;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {v4}, Lcwl;->a()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "pausing queue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " after failed request:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; error code:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    move v0, v1

    .line 293
    goto :goto_3

    .line 304
    :cond_8
    invoke-direct {p0}, Lcvy;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public a(Lcwf;Z)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 115
    sget-boolean v0, Lcvy;->a:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "queueRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; length is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1451
    :cond_0
    iget-boolean v0, p0, Lcvy;->g:Z

    .line 118
    if-eqz v0, :cond_2

    .line 119
    const-string v0, "Babel_FutureNQ"

    const-string v1, "can\'t call queueRequest after queue is finished"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    invoke-virtual {p1}, Lcwf;->a()Lcwi;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p1}, Lcwf;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    sget-object v0, Ldvn;->a:Ldvn;

    .line 1616
    invoke-virtual {p1, v0}, Lcwf;->a(Ldvn;)V

    .line 131
    sget-boolean v0, Lcvy;->a:Z

    if-eqz v0, :cond_3

    .line 132
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Removing expired requestItem while queueing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_3
    invoke-direct {p0, p1}, Lcvy;->b(Lcwf;)V

    goto :goto_0

    .line 140
    :cond_4
    invoke-direct {p0, p1}, Lcvy;->c(Lcwf;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v1, p0, Lcvy;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-boolean v0, p0, Lcvy;->h:Z

    if-nez v0, :cond_7

    .line 144
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcvy;->d:Lcwf;

    if-nez v0, :cond_6

    .line 156
    :cond_5
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcvy;->a(Z)V

    .line 160
    :cond_6
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 147
    :cond_7
    if-nez p2, :cond_5

    .line 150
    :try_start_1
    invoke-virtual {p1}, Lcwf;->f()J

    move-result-wide v2

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 155
    iget-wide v6, p0, Lcvy;->j:J

    sub-long/2addr v6, v4

    cmp-long v0, v2, v6

    if-lez v0, :cond_5

    iget-wide v2, p0, Lcvy;->j:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_6

    goto :goto_1
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 586
    iget-object v1, p0, Lcvy;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 6451
    :try_start_0
    iget-boolean v0, p0, Lcvy;->g:Z

    .line 587
    if-eqz v0, :cond_0

    .line 588
    const-string v0, "Babel_FutureNQ"

    const-string v2, "Should not cancel a request why request writer is finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 592
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 593
    invoke-virtual {v0, p1, p2}, Lcwf;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    iget-object v4, p0, Lcvy;->d:Lcwf;

    if-ne v4, v0, :cond_2

    .line 596
    invoke-virtual {v0, p2}, Lcwf;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 598
    :cond_2
    :try_start_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 603
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 604
    sget-boolean v3, Lcvy;->a:Z

    if-eqz v3, :cond_4

    .line 605
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Cancel request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_4
    sget-object v3, Ldvn;->b:Ldvn;

    .line 6616
    invoke-virtual {v0, v3}, Lcwf;->a(Ldvn;)V

    .line 608
    invoke-direct {p0, v0}, Lcvy;->b(Lcwf;)V

    .line 609
    invoke-static {p2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 611
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Z)V
    .locals 5

    .prologue
    .line 170
    iget-object v1, p0, Lcvy;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcvy;->h:Z

    if-nez v0, :cond_0

    .line 172
    monitor-exit v1

    .line 183
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-boolean v0, Lcvy;->a:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcvy;->b:Ljava/lang/String;

    iget-object v2, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "resuming queue "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcvy;->h:Z

    .line 179
    iget-object v0, p0, Lcvy;->f:Ljava/util/concurrent/Future;

    .line 2200
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2201
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    .line 179
    :goto_1
    if-eqz v0, :cond_2

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcvy;->f:Ljava/util/concurrent/Future;

    .line 181
    invoke-direct {p0}, Lcvy;->f()V

    .line 183
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2203
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public a(Ljava/lang/Thread;)Z
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    return v0
.end method

.method public b()J
    .locals 8

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 406
    iget-object v5, p0, Lcvy;->l:Ljava/lang/Object;

    monitor-enter v5

    .line 407
    :try_start_0
    iget-object v2, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 408
    monitor-exit v5

    .line 425
    :goto_0
    return-wide v0

    .line 414
    :cond_0
    iget-object v2, p0, Lcvy;->e:Lcwe;

    invoke-interface {v2}, Lcwe;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v0, p0, Lcvy;->i:J

    .line 418
    :cond_1
    const/4 v2, 0x0

    move v4, v2

    move-wide v2, v0

    :goto_1
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 419
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 420
    invoke-virtual {v0}, Lcwf;->f()J

    move-result-wide v0

    .line 421
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_3

    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    .line 418
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_1

    .line 425
    :cond_2
    monitor-exit v5

    move-wide v0, v2

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-wide v0, v2

    goto :goto_2
.end method

.method public c()I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 529
    iget-object v1, p0, Lcvy;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    :try_start_0
    sget-boolean v0, Lcvy;->a:Z

    if-eqz v0, :cond_0

    .line 531
    const-string v0, "### finish "

    invoke-virtual {p0}, Lcvy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcvy;->g:Z

    .line 534
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    iget-object v0, p0, Lcvy;->m:Llbe;

    .line 5543
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 5546
    const-wide/16 v2, 0xa

    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5547
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 5549
    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5550
    const-string v1, "Babel_FutureNQ"

    const-string v2, "Pool did not terminate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5558
    :cond_1
    :goto_1
    return-void

    .line 531
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5555
    :catch_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 5557
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method public e()J
    .locals 2

    .prologue
    .line 625
    iget-wide v0, p0, Lcvy;->i:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    iget-object v2, p0, Lcvy;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 565
    :try_start_0
    const-string v0, "FutureNetworkQueue("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcvy;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") pending count == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcvy;->c:Ljava/util/LinkedList;

    .line 566
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-object v0, p0, Lcvy;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 568
    invoke-virtual {v0}, Lcwf;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
