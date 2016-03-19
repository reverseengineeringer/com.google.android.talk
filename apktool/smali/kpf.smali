.class public final Lkpf;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public volatile b:I

.field c:J

.field public d:I

.field e:I

.field public volatile f:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final g:J

.field final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field final l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2142
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2156
    :cond_0
    :goto_0
    return-object v0

    .line 2147
    :cond_1
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v1

    .line 2148
    invoke-interface {v1}, Lkps;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2149
    if-nez v2, :cond_2

    invoke-interface {v1}, Lkps;->d()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2154
    :cond_2
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Lkoo;

    invoke-virtual {v0, p0, p1, p2}, Lkoo;->a(Lkpf;Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2155
    iget-object v3, p0, Lkpf;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Lkps;->a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lkps;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lkps;)V

    goto :goto_0
.end method

.method private a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lkps;Lkqd;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3273
    invoke-interface {p5}, Lkps;->a()I

    move-result v0

    invoke-direct {p0, p3, p4, v0, p6}, Lkpf;->a(Ljava/lang/Object;Ljava/lang/Object;ILkqd;)V

    .line 3274
    iget-object v0, p0, Lkpf;->l:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3275
    iget-object v0, p0, Lkpf;->m:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3277
    invoke-interface {p5}, Lkps;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3278
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lkps;->a(Ljava/lang/Object;)V

    .line 3281
    :goto_0
    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lkpf;->b(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;IJ)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2731
    invoke-direct {p0, p1, p2}, Lkpf;->d(Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 2732
    if-nez v1, :cond_0

    .line 2738
    :goto_0
    return-object v0

    .line 2734
    :cond_0
    iget-object v2, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v1, p3, p4}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2735
    invoke-direct {p0, p3, p4}, Lkpf;->a(J)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2738
    goto :goto_0
.end method

.method private a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2133
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Lkoo;

    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lkoo;->a(Lkpf;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;ILaak;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2388
    const/4 v0, 0x1

    .line 2389
    invoke-direct {p0, p1, p2, v0}, Lkpf;->a(Ljava/lang/Object;IZ)Lkpc;

    move-result-object v4

    .line 2390
    if-nez v4, :cond_0

    move-object v0, v6

    .line 2402
    :goto_0
    return-object v0

    .line 4330
    :cond_0
    invoke-virtual {v4, p1, p3}, Lkpc;->a(Ljava/lang/Object;Laak;)Llbb;

    move-result-object v5

    .line 4331
    new-instance v0, Lkpg;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lkpg;-><init>(Lkpf;Ljava/lang/Object;ILkpc;Llbb;)V

    .line 4448
    sget-object v1, Llbh;->a:Llbh;

    .line 4331
    invoke-interface {v5, v0, v1}, Llbb;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2395
    invoke-interface {v5}, Llbb;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2397
    :try_start_0
    invoke-static {v5}, Laal;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v6

    .line 2402
    goto :goto_0
.end method

.method private a(Ljava/lang/Object;IZ)Lkpc;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IZ)",
            "Lkpc",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2413
    invoke-virtual {p0}, Lkpf;->lock()V

    .line 2415
    :try_start_0
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->o:Lkoi;

    invoke-virtual {v0}, Lkoi;->a()J

    move-result-wide v2

    .line 4453
    invoke-direct {p0, v2, v3}, Lkpf;->c(J)V

    .line 2418
    iget-object v4, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2419
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2420
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v1, v0

    .line 2423
    :goto_0
    if-eqz v1, :cond_3

    .line 2424
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2425
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->e:Lkng;

    .line 2426
    invoke-virtual {v7, p1, v6}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2429
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v4

    .line 2430
    invoke-interface {v4}, Lkps;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2431
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-wide v6, v0, Lcom/google/common/cache/LocalCache;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    .line 2454
    :cond_0
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 4460
    invoke-direct {p0}, Lkpf;->h()V

    .line 2455
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 2439
    :cond_1
    :try_start_1
    iget v0, p0, Lkpf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkpf;->d:I

    .line 2440
    new-instance v0, Lkpc;

    invoke-direct {v0, v4}, Lkpc;-><init>(Lkps;)V

    .line 2442
    invoke-interface {v1, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lkps;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2454
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 5460
    invoke-direct {p0}, Lkpf;->h()V

    goto :goto_1

    .line 2423
    :cond_2
    :try_start_2
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    goto :goto_0

    .line 2447
    :cond_3
    iget v1, p0, Lkpf;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkpf;->d:I

    .line 2448
    new-instance v1, Lkpc;

    invoke-direct {v1}, Lkpc;-><init>()V

    .line 2449
    invoke-direct {p0, p1, p2, v0}, Lkpf;->a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2450
    invoke-interface {v0, v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lkps;)V

    .line 2451
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2454
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 6460
    invoke-direct {p0}, Lkpf;->h()V

    move-object v0, v1

    .line 2455
    goto :goto_1

    .line 2454
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 7460
    invoke-direct {p0}, Lkpf;->h()V

    .line 2455
    throw v0
.end method

.method private a(J)V
    .locals 1

    .prologue
    .line 2613
    invoke-virtual {p0}, Lkpf;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2615
    :try_start_0
    invoke-direct {p0, p1, p2}, Lkpf;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2617
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 2621
    :cond_0
    return-void

    .line 2617
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    throw v0
.end method

.method private a(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2663
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2683
    :cond_0
    return-void

    .line 2667
    :cond_1
    invoke-direct {p0}, Lkpf;->e()V

    .line 2671
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v0

    invoke-interface {v0}, Lkps;->a()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lkpf;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 2672
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    sget-object v1, Lkqd;->e:Lkqd;

    invoke-direct {p0, p1, v0, v1}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILkqd;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2673
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2677
    :cond_2
    iget-wide v0, p0, Lkpf;->c:J

    iget-wide v2, p0, Lkpf;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2678
    invoke-direct {p0}, Lkpf;->f()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2679
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lkqd;->e:Lkqd;

    invoke-direct {p0, v0, v1, v2}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILkqd;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2680
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 2164
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v1

    .line 2165
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->j:La;

    invoke-interface {v0}, La;->x()I

    move-result v2

    .line 2166
    if-ltz v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v3, "Weights must be non-negative"

    invoke-static {v0, v3}, Lfii;->b(ZLjava/lang/Object;)V

    .line 2168
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->h:Lkpi;

    .line 2169
    invoke-virtual {v0, p0, p1, p2, v2}, Lkpi;->a(Lkpf;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lkps;

    move-result-object v0

    .line 2170
    invoke-interface {p1, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lkps;)V

    .line 3574
    invoke-direct {p0}, Lkpf;->e()V

    .line 3575
    iget-wide v4, p0, Lkpf;->c:J

    int-to-long v2, v2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lkpf;->c:J

    .line 3577
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3578
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 3580
    :cond_0
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3581
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setWriteTime(J)V

    .line 3583
    :cond_1
    iget-object v0, p0, Lkpf;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3584
    iget-object v0, p0, Lkpf;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2172
    invoke-interface {v1, p2}, Lkps;->a(Ljava/lang/Object;)V

    .line 2173
    return-void

    .line 2166
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;ILkqd;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 2645
    iget-wide v0, p0, Lkpf;->c:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lkpf;->c:J

    .line 2646
    invoke-virtual {p4}, Lkqd;->a()Z

    .line 2649
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->n:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/cache/LocalCache;->s:Ljava/util/Queue;

    if-eq v0, v1, :cond_0

    .line 8051
    new-instance v0, Lkqj;

    invoke-direct {v0, p1, p2, p4}, Lkqj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkqd;)V

    .line 2651
    iget-object v1, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->n:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2653
    :cond_0
    return-void
.end method

.method private a(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILkqd;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;I",
            "Lkqd;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3415
    iget v0, p0, Lkpf;->b:I

    .line 3416
    iget-object v7, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3417
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3418
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 3420
    :goto_0
    if-eqz v2, :cond_1

    .line 3421
    if-ne v2, p1, :cond_0

    .line 3422
    iget v0, p0, Lkpf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkpf;->d:I

    .line 3423
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3424
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v0

    invoke-interface {v0}, Lkps;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v5

    move-object v0, p0

    move-object v6, p3

    .line 3423
    invoke-direct/range {v0 .. v6}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lkps;Lkqd;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3425
    iget v1, p0, Lkpf;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3426
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3427
    iput v1, p0, Lkpf;->b:I

    .line 3428
    const/4 v0, 0x1

    .line 3432
    :goto_1
    return v0

    .line 3420
    :cond_0
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    goto :goto_0

    .line 3432
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/Object;ILkpc;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lkpc",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3381
    invoke-virtual {p0}, Lkpf;->lock()V

    .line 3383
    :try_start_0
    iget-object v3, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3384
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 3385
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v0

    .line 3387
    :goto_0
    if-eqz v2, :cond_3

    .line 3388
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3389
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v6, v6, Lcom/google/common/cache/LocalCache;->e:Lkng;

    .line 3390
    invoke-virtual {v6, p1, v5}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3391
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v5

    .line 3392
    if-ne v5, p3, :cond_1

    .line 3393
    invoke-virtual {p3}, Lkpc;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3394
    invoke-virtual {p3}, Lkpc;->f()Lkps;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lkps;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3407
    :goto_1
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 46460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3408
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 3396
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, v2}, Lkpf;->b(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3397
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3407
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 49460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3408
    throw v0

    .line 3407
    :cond_1
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 47460
    invoke-direct {p0}, Lkpf;->h()V

    move v0, v1

    .line 3408
    goto :goto_2

    .line 3387
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3407
    :cond_3
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 48460
    invoke-direct {p0}, Lkpf;->h()V

    move v0, v1

    .line 3408
    goto :goto_2
.end method

.method private a(Ljava/lang/Object;ILkpc;Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lkpc",
            "<TK;TV;>;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3127
    invoke-virtual {p0}, Lkpf;->lock()V

    .line 3129
    :try_start_0
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->o:Lkoi;

    invoke-virtual {v0}, Lkoi;->a()J

    move-result-wide v6

    .line 28453
    invoke-direct {p0, v6, v7}, Lkpf;->c(J)V

    .line 3132
    iget v0, p0, Lkpf;->b:I

    add-int/lit8 v3, v0, 0x1

    .line 3133
    iget v0, p0, Lkpf;->e:I

    if-le v3, v0, :cond_0

    .line 3134
    invoke-direct {p0}, Lkpf;->g()V

    .line 3135
    iget v0, p0, Lkpf;->b:I

    add-int/lit8 v3, v0, 0x1

    .line 3138
    :cond_0
    iget-object v5, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3139
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3140
    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v4, v0

    .line 3142
    :goto_0
    if-eqz v4, :cond_5

    .line 3143
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 3144
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v10

    if-ne v10, p2, :cond_4

    if-eqz v9, :cond_4

    iget-object v10, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v10, v10, Lcom/google/common/cache/LocalCache;->e:Lkng;

    .line 3145
    invoke-virtual {v10, p1, v9}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3146
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v0

    .line 3147
    invoke-interface {v0}, Lkps;->get()Ljava/lang/Object;

    move-result-object v5

    .line 3150
    if-eq p3, v0, :cond_1

    if-nez v5, :cond_3

    sget-object v8, Lcom/google/common/cache/LocalCache;->r:Lkps;

    if-eq v0, v8, :cond_3

    .line 3152
    :cond_1
    iget v0, p0, Lkpf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkpf;->d:I

    .line 3153
    invoke-virtual {p3}, Lkpc;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3154
    if-nez v5, :cond_2

    .line 3155
    sget-object v0, Lkqd;->c:Lkqd;

    .line 3156
    :goto_1
    invoke-virtual {p3}, Lkpc;->a()I

    move-result v1

    invoke-direct {p0, p1, v5, v1, v0}, Lkpf;->a(Ljava/lang/Object;Ljava/lang/Object;ILkqd;)V

    .line 3157
    add-int/lit8 v0, v3, -0x1

    .line 3159
    :goto_2
    invoke-direct {p0, v4, p4, v6, v7}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;J)V

    .line 3160
    iput v0, p0, Lkpf;->b:I

    .line 3161
    invoke-direct {p0, v4}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3179
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 28460
    invoke-direct {p0}, Lkpf;->h()V

    move v0, v2

    .line 3180
    :goto_3
    return v0

    .line 3155
    :cond_2
    :try_start_1
    sget-object v0, Lkqd;->b:Lkqd;

    goto :goto_1

    .line 3166
    :cond_3
    const/4 v0, 0x0

    sget-object v2, Lkqd;->b:Lkqd;

    invoke-direct {p0, p1, p4, v0, v2}, Lkpf;->a(Ljava/lang/Object;Ljava/lang/Object;ILkqd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3179
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 29460
    invoke-direct {p0}, Lkpf;->h()V

    move v0, v1

    .line 3180
    goto :goto_3

    .line 3142
    :cond_4
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v4

    goto :goto_0

    .line 3171
    :cond_5
    iget v1, p0, Lkpf;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkpf;->d:I

    .line 3172
    invoke-direct {p0, p1, p2, v0}, Lkpf;->a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3173
    invoke-direct {p0, v0, p4, v6, v7}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;J)V

    .line 3174
    invoke-virtual {v5, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3175
    iput v3, p0, Lkpf;->b:I

    .line 3176
    invoke-direct {p0, v0}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3179
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 30460
    invoke-direct {p0}, Lkpf;->h()V

    move v0, v2

    .line 3180
    goto :goto_3

    .line 3179
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 31460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3180
    throw v0

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method private b(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3289
    iget v2, p0, Lkpf;->b:I

    .line 3290
    invoke-interface {p2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3291
    :goto_0
    if-eq p1, p2, :cond_1

    .line 3292
    invoke-direct {p0, p1, v1}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3293
    if-eqz v0, :cond_0

    move v1, v2

    .line 3291
    :goto_1
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 3296
    :cond_0
    invoke-direct {p0, p1}, Lkpf;->b(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3297
    add-int/lit8 v0, v2, -0x1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 3300
    :cond_1
    iput v2, p0, Lkpf;->b:I

    .line 3301
    return-object v1
.end method

.method private b(J)V
    .locals 3

    .prologue
    .line 2625
    invoke-direct {p0}, Lkpf;->e()V

    .line 2628
    :cond_0
    iget-object v0, p0, Lkpf;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2629
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lkqd;->d:Lkqd;

    invoke-direct {p0, v0, v1, v2}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILkqd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2630
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2633
    :cond_1
    iget-object v0, p0, Lkpf;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2634
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lkqd;->d:Lkqd;

    invoke-direct {p0, v0, v1, v2}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILkqd;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2635
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2638
    :cond_2
    return-void
.end method

.method private b(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3306
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v1

    invoke-interface {v1}, Lkps;->get()Ljava/lang/Object;

    move-result-object v1

    .line 3307
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v2

    invoke-interface {v2}, Lkps;->a()I

    move-result v2

    sget-object v3, Lkqd;->c:Lkqd;

    .line 3306
    invoke-direct {p0, v0, v1, v2, v3}, Lkpf;->a(Ljava/lang/Object;Ljava/lang/Object;ILkqd;)V

    .line 3308
    iget-object v0, p0, Lkpf;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3309
    iget-object v0, p0, Lkpf;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3310
    return-void
.end method

.method private b(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2561
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2562
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 2564
    :cond_0
    iget-object v0, p0, Lkpf;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2565
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 2465
    invoke-virtual {p0}, Lkpf;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2467
    :try_start_0
    invoke-direct {p0}, Lkpf;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2469
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 2472
    :cond_0
    return-void

    .line 2469
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    throw v0
.end method

.method private c(J)V
    .locals 3

    .prologue
    .line 3470
    invoke-virtual {p0}, Lkpf;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3472
    :try_start_0
    invoke-direct {p0}, Lkpf;->d()V

    .line 3473
    invoke-direct {p0, p1, p2}, Lkpf;->b(J)V

    .line 3474
    iget-object v0, p0, Lkpf;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3476
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 3479
    :cond_0
    return-void

    .line 3476
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    throw v0
.end method

.method private d(Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 8702
    iget-object v0, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8703
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2710
    :goto_0
    if-eqz v0, :cond_2

    .line 2711
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 2715
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2716
    if-nez v1, :cond_1

    .line 2717
    invoke-direct {p0}, Lkpf;->c()V

    .line 2710
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2721
    :cond_1
    iget-object v2, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->e:Lkng;

    invoke-virtual {v2, p1, v1}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2726
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 2480
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 7492
    :goto_0
    iget-object v0, p0, Lkpf;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7494
    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 7495
    iget-object v3, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v3, v0}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 7496
    add-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_3

    .line 2483
    :cond_0
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7506
    :cond_1
    iget-object v0, p0, Lkpf;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7508
    check-cast v0, Lkps;

    .line 7509
    iget-object v1, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0}, Lcom/google/common/cache/LocalCache;->a(Lkps;)V

    .line 7510
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 2486
    :cond_2
    return-void

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 2596
    :cond_0
    :goto_0
    iget-object v0, p0, Lkpf;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 2601
    iget-object v1, p0, Lkpf;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2602
    iget-object v1, p0, Lkpf;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2605
    :cond_1
    return-void
.end method

.method private f()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2688
    iget-object v0, p0, Lkpf;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2689
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v2

    invoke-interface {v2}, Lkps;->a()I

    move-result v2

    .line 2690
    if-lez v2, :cond_0

    .line 2691
    return-object v0

    .line 2694
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private g()V
    .locals 11

    .prologue
    .line 2912
    iget-object v7, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2913
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2914
    const/high16 v0, 0x40000000    # 2.0f

    if-lt v8, v0, :cond_0

    .line 2977
    :goto_0
    return-void

    .line 2928
    :cond_0
    iget v5, p0, Lkpf;->b:I

    .line 2929
    shl-int/lit8 v0, v8, 0x1

    .line 15119
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 2930
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkpf;->e:I

    .line 2931
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2932
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_5

    .line 2935
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2937
    if-eqz v0, :cond_7

    .line 2938
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v3

    .line 2939
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    and-int v2, v1, v10

    .line 2942
    if-nez v3, :cond_2

    .line 2943
    invoke-virtual {v9, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v1, v5

    .line 2932
    :cond_1
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v1

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 2950
    :goto_3
    if-eqz v3, :cond_3

    .line 2951
    invoke-interface {v3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    and-int/2addr v1, v10

    .line 2952
    if-eq v1, v2, :cond_6

    move-object v2, v3

    .line 2950
    :goto_4
    invoke-interface {v3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v3

    move-object v4, v2

    move v2, v1

    goto :goto_3

    .line 2958
    :cond_3
    invoke-virtual {v9, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    move v1, v5

    .line 2961
    :goto_5
    if-eq v2, v4, :cond_1

    .line 2962
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    and-int v3, v0, v10

    .line 2963
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2964
    invoke-direct {p0, v2, v0}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2965
    if-eqz v0, :cond_4

    .line 2966
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v1

    .line 2961
    :goto_6
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    goto :goto_5

    .line 2968
    :cond_4
    invoke-direct {p0, v2}, Lkpf;->b(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 2969
    add-int/lit8 v0, v1, -0x1

    goto :goto_6

    .line 2975
    :cond_5
    iput-object v9, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2976
    iput v5, p0, Lkpf;->b:I

    goto :goto_0

    :cond_6
    move v1, v2

    move-object v2, v4

    goto :goto_4

    :cond_7
    move v1, v5

    goto :goto_2
.end method

.method private h()V
    .locals 1

    .prologue
    .line 3483
    invoke-virtual {p0}, Lkpf;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3484
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->j()V

    .line 3486
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2746
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2747
    invoke-direct {p0}, Lkpf;->c()V

    .line 2760
    :goto_0
    return-object v0

    .line 2750
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v1

    invoke-interface {v1}, Lkps;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2751
    if-nez v1, :cond_1

    .line 2752
    invoke-direct {p0}, Lkpf;->c()V

    goto :goto_0

    .line 2756
    :cond_1
    iget-object v2, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2757
    invoke-direct {p0, p2, p3}, Lkpf;->a(J)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2760
    goto :goto_0
.end method

.method public a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2766
    :try_start_0
    iget v1, p0, Lkpf;->b:I

    if-eqz v1, :cond_4

    .line 2767
    iget-object v1, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->o:Lkoi;

    invoke-virtual {v1}, Lkoi;->a()J

    move-result-wide v2

    .line 2768
    invoke-direct {p0, p1, p2, v2, v3}, Lkpf;->a(Ljava/lang/Object;IJ)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 2769
    if-nez v4, :cond_0

    .line 2782
    invoke-virtual {p0}, Lkpf;->b()V

    :goto_0
    return-object v0

    .line 2773
    :cond_0
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v1

    invoke-interface {v1}, Lkps;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2774
    if-eqz v1, :cond_3

    .line 9546
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9547
    invoke-interface {v4, v2, v3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 9549
    :cond_1
    iget-object v0, p0, Lkpf;->j:Ljava/util/Queue;

    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2776
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v5, v5, Lcom/google/common/cache/LocalCache;->q:Laak;

    .line 10370
    iget-object v6, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v6}, Lcom/google/common/cache/LocalCache;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iget-object v6, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-wide v6, v6, Lcom/google/common/cache/LocalCache;->m:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 10371
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v2

    invoke-interface {v2}, Lkps;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 10372
    invoke-direct {p0, v0, p2, v5}, Lkpf;->a(Ljava/lang/Object;ILaak;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 10373
    if-eqz v0, :cond_2

    .line 2782
    :goto_1
    invoke-virtual {p0}, Lkpf;->b()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 10377
    goto :goto_1

    .line 2778
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lkpf;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2782
    :cond_4
    invoke-virtual {p0}, Lkpf;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->b()V

    throw v0
.end method

.method public a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3034
    invoke-virtual {p0}, Lkpf;->lock()V

    .line 3036
    :try_start_0
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->o:Lkoi;

    invoke-virtual {v0}, Lkoi;->a()J

    move-result-wide v8

    .line 20453
    invoke-direct {p0, v8, v9}, Lkpf;->c(J)V

    .line 3039
    iget-object v10, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3040
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v11, p2, v0

    .line 3041
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 3043
    :goto_0
    if-eqz v2, :cond_3

    .line 3044
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3045
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->e:Lkng;

    .line 3046
    invoke-virtual {v0, p1, v3}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3047
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v5

    .line 3048
    invoke-interface {v5}, Lkps;->get()Ljava/lang/Object;

    move-result-object v4

    .line 3049
    if-nez v4, :cond_1

    .line 3050
    invoke-interface {v5}, Lkps;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3052
    iget v0, p0, Lkpf;->b:I

    .line 3053
    iget v0, p0, Lkpf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkpf;->d:I

    .line 3054
    sget-object v6, Lkqd;->c:Lkqd;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lkps;Lkqd;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3056
    iget v1, p0, Lkpf;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3057
    invoke-virtual {v10, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3058
    iput v1, p0, Lkpf;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3074
    :cond_0
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 20460
    invoke-direct {p0}, Lkpf;->h()V

    move-object v4, v7

    .line 3075
    :goto_1
    return-object v4

    .line 3063
    :cond_1
    :try_start_1
    iget v0, p0, Lkpf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkpf;->d:I

    .line 3065
    invoke-interface {v5}, Lkps;->a()I

    move-result v0

    sget-object v1, Lkqd;->b:Lkqd;

    .line 3064
    invoke-direct {p0, p1, v4, v0, v1}, Lkpf;->a(Ljava/lang/Object;Ljava/lang/Object;ILkqd;)V

    .line 3066
    invoke-direct {p0, v2, p3, v8, v9}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;J)V

    .line 3067
    invoke-direct {p0, v2}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3074
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 21460
    invoke-direct {p0}, Lkpf;->h()V

    goto :goto_1

    .line 3043
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3074
    :cond_3
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 22460
    invoke-direct {p0}, Lkpf;->h()V

    move-object v4, v7

    .line 3075
    goto :goto_1

    .line 3074
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 23460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3075
    throw v0
.end method

.method public a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2835
    invoke-virtual {p0}, Lkpf;->lock()V

    .line 2837
    :try_start_0
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->o:Lkoi;

    invoke-virtual {v0}, Lkoi;->a()J

    move-result-wide v4

    .line 10453
    invoke-direct {p0, v4, v5}, Lkpf;->c(J)V

    .line 2840
    iget v0, p0, Lkpf;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2841
    iget v2, p0, Lkpf;->e:I

    if-le v0, v2, :cond_0

    .line 2842
    invoke-direct {p0}, Lkpf;->g()V

    .line 2843
    iget v0, p0, Lkpf;->b:I

    .line 2846
    :cond_0
    iget-object v3, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2847
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v6, p2, v0

    .line 2848
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v0

    .line 2851
    :goto_0
    if-eqz v2, :cond_5

    .line 2852
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 2853
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v8

    if-ne v8, p2, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v8, v8, Lcom/google/common/cache/LocalCache;->e:Lkng;

    .line 2854
    invoke-virtual {v8, p1, v7}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2857
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v3

    .line 2858
    invoke-interface {v3}, Lkps;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2860
    if-nez v0, :cond_2

    .line 2861
    iget v6, p0, Lkpf;->d:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lkpf;->d:I

    .line 2862
    invoke-interface {v3}, Lkps;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2864
    invoke-interface {v3}, Lkps;->a()I

    move-result v3

    sget-object v6, Lkqd;->c:Lkqd;

    .line 2863
    invoke-direct {p0, p1, v0, v3, v6}, Lkpf;->a(Ljava/lang/Object;Ljava/lang/Object;ILkqd;)V

    .line 2865
    invoke-direct {p0, v2, p3, v4, v5}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;J)V

    .line 2866
    iget v0, p0, Lkpf;->b:I

    .line 2871
    :goto_1
    iput v0, p0, Lkpf;->b:I

    .line 2872
    invoke-direct {p0, v2}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2902
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 10460
    invoke-direct {p0}, Lkpf;->h()V

    move-object v0, v1

    .line 2903
    :goto_2
    return-object v0

    .line 2868
    :cond_1
    :try_start_1
    invoke-direct {p0, v2, p3, v4, v5}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;J)V

    .line 2869
    iget v0, p0, Lkpf;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2874
    :cond_2
    if-eqz p4, :cond_3

    .line 2878
    invoke-direct {p0, v2, v4, v5}, Lkpf;->b(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2902
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 11460
    invoke-direct {p0}, Lkpf;->h()V

    goto :goto_2

    .line 2882
    :cond_3
    :try_start_2
    iget v1, p0, Lkpf;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkpf;->d:I

    .line 2884
    invoke-interface {v3}, Lkps;->a()I

    move-result v1

    sget-object v3, Lkqd;->b:Lkqd;

    .line 2883
    invoke-direct {p0, p1, v0, v1, v3}, Lkpf;->a(Ljava/lang/Object;Ljava/lang/Object;ILkqd;)V

    .line 2885
    invoke-direct {p0, v2, p3, v4, v5}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;J)V

    .line 2886
    invoke-direct {p0, v2}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2902
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 12460
    invoke-direct {p0}, Lkpf;->h()V

    goto :goto_2

    .line 2851
    :cond_4
    :try_start_3
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    goto :goto_0

    .line 2893
    :cond_5
    iget v2, p0, Lkpf;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkpf;->d:I

    .line 2894
    invoke-direct {p0, p1, p2, v0}, Lkpf;->a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2895
    invoke-direct {p0, v0, p3, v4, v5}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;J)V

    .line 2896
    invoke-virtual {v3, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2897
    iget v2, p0, Lkpf;->b:I

    add-int/lit8 v2, v2, 0x1

    .line 2898
    iput v2, p0, Lkpf;->b:I

    .line 2899
    invoke-direct {p0, v0}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2902
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 13460
    invoke-direct {p0}, Lkpf;->h()V

    move-object v0, v1

    .line 2903
    goto :goto_2

    .line 2902
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 14460
    invoke-direct {p0}, Lkpf;->h()V

    .line 2903
    throw v0
.end method

.method a(Ljava/lang/Object;ILkpc;Llbb;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lkpc",
            "<TK;TV;>;",
            "Llbb",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2351
    const/4 v1, 0x0

    .line 2353
    :try_start_0
    invoke-static {p4}, Laal;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 2354
    if-nez v1, :cond_1

    .line 2355
    new-instance v0, Lkoj;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CacheLoader returned null for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lkoj;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2361
    :catchall_0
    move-exception v0

    if-nez v1, :cond_0

    .line 2362
    invoke-virtual {p3}, Lkpc;->e()J

    .line 2363
    invoke-direct {p0, p1, p2, p3}, Lkpf;->a(Ljava/lang/Object;ILkpc;)Z

    :cond_0
    throw v0

    .line 2357
    :cond_1
    :try_start_1
    invoke-virtual {p3}, Lkpc;->e()J

    .line 2358
    invoke-direct {p0, p1, p2, p3, v1}, Lkpf;->a(Ljava/lang/Object;ILkpc;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2361
    if-nez v1, :cond_2

    .line 2362
    invoke-virtual {p3}, Lkpc;->e()J

    .line 2363
    invoke-direct {p0, p1, p2, p3}, Lkpf;->a(Ljava/lang/Object;ILkpc;)Z

    :cond_2
    return-object v1
.end method

.method public a()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3230
    iget v0, p0, Lkpf;->b:I

    if-eqz v0, :cond_a

    .line 3231
    invoke-virtual {p0}, Lkpf;->lock()V

    .line 3233
    :try_start_0
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->o:Lkoi;

    invoke-virtual {v0}, Lkoi;->a()J

    move-result-wide v2

    .line 36453
    invoke-direct {p0, v2, v3}, Lkpf;->c(J)V

    .line 3236
    iget-object v4, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v3, v1

    .line 3237
    :goto_0
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 3238
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_3

    .line 3240
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v0

    invoke-interface {v0}, Lkps;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3241
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3242
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v0

    invoke-interface {v0}, Lkps;->get()Ljava/lang/Object;

    move-result-object v6

    .line 3243
    if-eqz v5, :cond_0

    if-nez v6, :cond_2

    .line 3244
    :cond_0
    sget-object v0, Lkqd;->c:Lkqd;

    .line 3246
    :goto_2
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    .line 3247
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v7

    invoke-interface {v7}, Lkps;->a()I

    move-result v7

    .line 3246
    invoke-direct {p0, v5, v6, v7, v0}, Lkpf;->a(Ljava/lang/Object;Ljava/lang/Object;ILkqd;)V

    .line 3238
    :cond_1
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 3245
    :cond_2
    sget-object v0, Lkqd;->a:Lkqd;

    goto :goto_2

    .line 3237
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 3251
    :goto_3
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 3252
    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3251
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 36520
    :cond_5
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36529
    :cond_6
    iget-object v0, p0, Lkpf;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_6

    .line 36523
    :cond_7
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 36533
    :cond_8
    iget-object v0, p0, Lkpf;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_8

    .line 3255
    :cond_9
    iget-object v0, p0, Lkpf;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3256
    iget-object v0, p0, Lkpf;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3257
    iget-object v0, p0, Lkpf;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3259
    iget v0, p0, Lkpf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkpf;->d:I

    .line 3260
    const/4 v0, 0x0

    iput v0, p0, Lkpf;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3262
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 37460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3266
    :cond_a
    return-void

    .line 3262
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 38460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3263
    throw v0
.end method

.method public a(Lcom/google/common/cache/LocalCache$ReferenceEntry;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 3316
    invoke-virtual {p0}, Lkpf;->lock()V

    .line 3318
    :try_start_0
    iget v0, p0, Lkpf;->b:I

    .line 3319
    iget-object v7, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3320
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3321
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 3323
    :goto_0
    if-eqz v2, :cond_1

    .line 3324
    if-ne v2, p1, :cond_0

    .line 3325
    iget v0, p0, Lkpf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkpf;->d:I

    .line 3326
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3327
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v0

    invoke-interface {v0}, Lkps;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v5

    sget-object v6, Lkqd;->c:Lkqd;

    move-object v0, p0

    .line 3326
    invoke-direct/range {v0 .. v6}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lkps;Lkqd;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3328
    iget v1, p0, Lkpf;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3329
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3330
    iput v1, p0, Lkpf;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3337
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 39460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3338
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 3323
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3337
    :cond_1
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 40460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3338
    const/4 v0, 0x0

    goto :goto_1

    .line 3337
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 41460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3338
    throw v0
.end method

.method public a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2980
    invoke-virtual {p0}, Lkpf;->lock()V

    .line 2982
    :try_start_0
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->o:Lkoi;

    invoke-virtual {v0}, Lkoi;->a()J

    move-result-wide v6

    .line 15453
    invoke-direct {p0, v6, v7}, Lkpf;->c(J)V

    .line 2985
    iget-object v8, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2986
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 2987
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 2989
    :goto_0
    if-eqz v2, :cond_4

    .line 2990
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 2991
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->e:Lkng;

    .line 2992
    invoke-virtual {v0, p1, v3}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2993
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v5

    .line 2994
    invoke-interface {v5}, Lkps;->get()Ljava/lang/Object;

    move-result-object v4

    .line 2995
    if-nez v4, :cond_1

    .line 2996
    invoke-interface {v5}, Lkps;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2998
    iget v0, p0, Lkpf;->b:I

    .line 2999
    iget v0, p0, Lkpf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkpf;->d:I

    .line 3000
    sget-object v6, Lkqd;->c:Lkqd;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lkps;Lkqd;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3002
    iget v1, p0, Lkpf;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3003
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3004
    iput v1, p0, Lkpf;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3027
    :cond_0
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 15460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3028
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 3009
    :cond_1
    :try_start_1
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->f:Lkng;

    invoke-virtual {v0, p3, v4}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3010
    iget v0, p0, Lkpf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkpf;->d:I

    .line 3012
    invoke-interface {v5}, Lkps;->a()I

    move-result v0

    sget-object v1, Lkqd;->b:Lkqd;

    .line 3011
    invoke-direct {p0, p1, v4, v0, v1}, Lkpf;->a(Ljava/lang/Object;Ljava/lang/Object;ILkqd;)V

    .line 3013
    invoke-direct {p0, v2, p4, v6, v7}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;J)V

    .line 3014
    invoke-direct {p0, v2}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3027
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 16460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3028
    const/4 v0, 0x1

    goto :goto_1

    .line 3019
    :cond_2
    :try_start_2
    invoke-direct {p0, v2, v6, v7}, Lkpf;->b(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3027
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 17460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3028
    const/4 v0, 0x0

    goto :goto_1

    .line 2989
    :cond_3
    :try_start_3
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3027
    :cond_4
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 18460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3028
    const/4 v0, 0x0

    goto :goto_1

    .line 3027
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 19460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3028
    throw v0
.end method

.method public a(Ljava/lang/Object;ILkps;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lkps",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3346
    invoke-virtual {p0}, Lkpf;->lock()V

    .line 3348
    :try_start_0
    iget v1, p0, Lkpf;->b:I

    .line 3349
    iget-object v7, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3350
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v8, p2, v1

    .line 3351
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 3353
    :goto_0
    if-eqz v2, :cond_4

    .line 3354
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3355
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->e:Lkng;

    .line 3356
    invoke-virtual {v4, p1, v3}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3357
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v4

    .line 3358
    if-ne v4, p3, :cond_2

    .line 3359
    iget v0, p0, Lkpf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkpf;->d:I

    .line 3361
    invoke-interface {p3}, Lkps;->get()Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lkqd;->c:Lkqd;

    move-object v0, p0

    move-object v5, p3

    .line 3360
    invoke-direct/range {v0 .. v6}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lkps;Lkqd;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3362
    iget v1, p0, Lkpf;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3363
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3364
    iput v1, p0, Lkpf;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3373
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 3374
    invoke-virtual {p0}, Lkpf;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3375
    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    .line 3373
    :cond_2
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 3374
    invoke-virtual {p0}, Lkpf;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 43460
    invoke-direct {p0}, Lkpf;->h()V

    goto :goto_1

    .line 3353
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3373
    :cond_4
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 3374
    invoke-virtual {p0}, Lkpf;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 44460
    invoke-direct {p0}, Lkpf;->h()V

    goto :goto_1

    .line 3373
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 3374
    invoke-virtual {p0}, Lkpf;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_5

    .line 45460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3375
    :cond_5
    throw v0
.end method

.method b()V
    .locals 2

    .prologue
    .line 3440
    iget-object v0, p0, Lkpf;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 49464
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->o:Lkoi;

    invoke-virtual {v0}, Lkoi;->a()J

    move-result-wide v0

    .line 49465
    invoke-direct {p0, v0, v1}, Lkpf;->c(J)V

    .line 49466
    invoke-direct {p0}, Lkpf;->h()V

    .line 3443
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2788
    :try_start_0
    iget v1, p0, Lkpf;->b:I

    if-eqz v1, :cond_2

    .line 2789
    iget-object v1, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->o:Lkoi;

    invoke-virtual {v1}, Lkoi;->a()J

    move-result-wide v2

    .line 2790
    invoke-direct {p0, p1, p2, v2, v3}, Lkpf;->a(Ljava/lang/Object;IJ)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2791
    if-nez v1, :cond_0

    .line 2799
    invoke-virtual {p0}, Lkpf;->b()V

    :goto_0
    return v0

    .line 2794
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v1

    invoke-interface {v1}, Lkps;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2799
    :cond_1
    invoke-virtual {p0}, Lkpf;->b()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lkpf;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->b()V

    throw v0
.end method

.method public b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 3185
    invoke-virtual {p0}, Lkpf;->lock()V

    .line 3187
    :try_start_0
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->o:Lkoi;

    invoke-virtual {v0}, Lkoi;->a()J

    move-result-wide v0

    .line 32453
    invoke-direct {p0, v0, v1}, Lkpf;->c(J)V

    .line 3190
    iget v0, p0, Lkpf;->b:I

    .line 3191
    iget-object v8, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3192
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3193
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 3195
    :goto_0
    if-eqz v2, :cond_4

    .line 3196
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3197
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->e:Lkng;

    .line 3198
    invoke-virtual {v0, p1, v3}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3199
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v5

    .line 3200
    invoke-interface {v5}, Lkps;->get()Ljava/lang/Object;

    move-result-object v4

    .line 3203
    iget-object v0, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->f:Lkng;

    invoke-virtual {v0, p3, v4}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3204
    sget-object v6, Lkqd;->a:Lkqd;

    .line 3212
    :goto_1
    iget v0, p0, Lkpf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkpf;->d:I

    move-object v0, p0

    .line 3213
    invoke-direct/range {v0 .. v6}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lkps;Lkqd;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3215
    iget v1, p0, Lkpf;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3216
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3217
    iput v1, p0, Lkpf;->b:I

    .line 3218
    sget-object v0, Lkqd;->a:Lkqd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v0, :cond_2

    const/4 v0, 0x1

    .line 3224
    :goto_2
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 33460
    invoke-direct {p0}, Lkpf;->h()V

    move v7, v0

    .line 3225
    :goto_3
    return v7

    .line 3205
    :cond_0
    if-nez v4, :cond_1

    :try_start_1
    invoke-interface {v5}, Lkps;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3206
    sget-object v6, Lkqd;->c:Lkqd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3224
    :cond_1
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 32460
    invoke-direct {p0}, Lkpf;->h()V

    goto :goto_3

    :cond_2
    move v0, v7

    .line 3218
    goto :goto_2

    .line 3195
    :cond_3
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3224
    :cond_4
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 34460
    invoke-direct {p0}, Lkpf;->h()V

    goto :goto_3

    .line 3224
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 35460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3225
    throw v0
.end method

.method public c(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3081
    invoke-virtual {p0}, Lkpf;->lock()V

    .line 3083
    :try_start_0
    iget-object v1, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->o:Lkoi;

    invoke-virtual {v1}, Lkoi;->a()J

    move-result-wide v2

    .line 24453
    invoke-direct {p0, v2, v3}, Lkpf;->c(J)V

    .line 3086
    iget v1, p0, Lkpf;->b:I

    .line 3087
    iget-object v7, p0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3088
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v8, p2, v1

    .line 3089
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 3091
    :goto_0
    if-eqz v2, :cond_3

    .line 3092
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3093
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, p0, Lkpf;->a:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->e:Lkng;

    .line 3094
    invoke-virtual {v4, p1, v3}, Lkng;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3095
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lkps;

    move-result-object v5

    .line 3096
    invoke-interface {v5}, Lkps;->get()Ljava/lang/Object;

    move-result-object v4

    .line 3099
    if-eqz v4, :cond_0

    .line 3100
    sget-object v6, Lkqd;->a:Lkqd;

    .line 3108
    :goto_1
    iget v0, p0, Lkpf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkpf;->d:I

    move-object v0, p0

    .line 3109
    invoke-direct/range {v0 .. v6}, Lkpf;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;Lkps;Lkqd;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3111
    iget v1, p0, Lkpf;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3112
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3113
    iput v1, p0, Lkpf;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3120
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 25460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3121
    :goto_2
    return-object v4

    .line 3101
    :cond_0
    :try_start_1
    invoke-interface {v5}, Lkps;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3102
    sget-object v6, Lkqd;->c:Lkqd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3120
    :cond_1
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 24460
    invoke-direct {p0}, Lkpf;->h()V

    move-object v4, v0

    .line 3121
    goto :goto_2

    .line 3091
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3120
    :cond_3
    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 26460
    invoke-direct {p0}, Lkpf;->h()V

    move-object v4, v0

    .line 3121
    goto :goto_2

    .line 3120
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lkpf;->unlock()V

    .line 27460
    invoke-direct {p0}, Lkpf;->h()V

    .line 3121
    throw v0
.end method
