.class public final Lcwb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcwd;


# static fields
.field private static final a:Z


# instance fields
.field private b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Thread;

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcwf;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Ljava/lang/Object;

.field private h:Lcwf;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:Lcwm;

.field private m:Lcwe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lezi;->j:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcwb;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcwe;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcwb;->g:Ljava/lang/Object;

    .line 50
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcwb;->j:J

    .line 67
    iput-object p1, p0, Lcwb;->c:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcwb;->f:Z

    .line 69
    iput-object p2, p0, Lcwb;->m:Lcwe;

    .line 70
    invoke-interface {p2}, Lcwe;->c()Lcwm;

    move-result-object v0

    iput-object v0, p0, Lcwb;->l:Lcwm;

    .line 72
    new-instance v0, Lcwc;

    invoke-direct {v0, p0}, Lcwc;-><init>(Lcwb;)V

    iput-object v0, p0, Lcwb;->d:Ljava/lang/Thread;

    .line 82
    sget-boolean v0, Lcwb;->a:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "### starting network thread for queue \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    iget-object v0, p0, Lcwb;->d:Ljava/lang/Thread;

    iget-object v1, p0, Lcwb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private a(Lcwf;)V
    .locals 5

    .prologue
    .line 133
    iget-object v1, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-boolean v0, Lcwb;->a:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcwb;->e:Ljava/util/LinkedList;

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

    .line 137
    :cond_0
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcwb;->l:Lcwm;

    iget-object v2, p1, Lcwf;->a:Lcwk;

    iget-wide v2, v2, Lcwk;->a:J

    invoke-interface {v0, v2, v3}, Lcwm;->a(J)V

    .line 140
    iget-object v0, p0, Lcwb;->h:Lcwf;

    if-ne p1, v0, :cond_1

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcwb;->h:Lcwf;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcwb;->i:Ljava/lang/String;

    .line 144
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

.method private b(J)V
    .locals 9

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 100
    iget-object v3, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 101
    :try_start_0
    sget-boolean v2, Lcwb;->a:Z

    if-eqz v2, :cond_0

    .line 102
    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 103
    const-string v2, "FOREVER"

    .line 105
    :goto_0
    iget-object v4, p0, Lcwb;->c:Ljava/lang/String;

    iget-object v5, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x26

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "pausing queue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]; duration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1434
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcwb;->f:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    if-eqz v2, :cond_2

    .line 110
    :try_start_2
    monitor-exit v3

    .line 128
    :goto_1
    return-void

    .line 104
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 112
    :cond_2
    cmp-long v2, p1, v0

    if-nez v2, :cond_5

    .line 113
    :goto_2
    :try_start_3
    iput-wide v0, p0, Lcwb;->k:J

    .line 116
    iget-object v0, p0, Lcwb;->g:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 119
    iget-object v0, p0, Lcwb;->m:Lcwe;

    invoke-interface {v0}, Lcwe;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcwb;->b:Z

    .line 122
    :cond_3
    sget-boolean v0, Lcwb;->a:Z

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lcwb;->c:Ljava/lang/String;

    iget-object v1, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "/pause "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :cond_4
    :goto_3
    :try_start_4
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 113
    :cond_5
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v0

    add-long/2addr v0, p1

    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    :try_start_6
    const-string v1, "Babel_NetworkQueue"

    const-string v2, "InterruptedException in pauseQueue: "

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method private b(Lcwf;)Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-object v4, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v4

    .line 532
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    move v2, v3

    .line 534
    :goto_0
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 535
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 536
    if-eq p1, v0, :cond_4

    .line 540
    iget-object v6, p1, Lcwf;->a:Lcwk;

    iget v6, v6, Lcwk;->c:I

    iget-object v7, v0, Lcwf;->a:Lcwk;

    iget v7, v7, Lcwk;->c:I

    if-ne v6, v7, :cond_4

    .line 544
    iget-object v6, v0, Lcwf;->a:Lcwk;

    iget-wide v6, v6, Lcwk;->a:J

    iget-object v8, p1, Lcwf;->a:Lcwk;

    iget-wide v8, v8, Lcwk;->a:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 547
    const-string v0, "Babel_NetworkQueue"

    iget-object v1, p1, Lcwf;->a:Lcwk;

    iget-wide v6, v1, Lcwk;->a:J

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x4a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Insertion of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignored since it isalready in the queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    monitor-exit v4

    move v0, v3

    .line 574
    :goto_1
    return v0

    .line 551
    :cond_0
    invoke-virtual {p1}, Lcwf;->a()Lcwi;

    move-result-object v6

    .line 552
    invoke-virtual {v0}, Lcwf;->a()Lcwi;

    move-result-object v7

    .line 553
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_4

    .line 557
    iget-object v8, p0, Lcwb;->h:Lcwf;

    if-eq v8, v0, :cond_4

    invoke-interface {v6, v7}, Lcwi;->a(Lcwi;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 560
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 534
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 565
    :cond_1
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 567
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 568
    sget-boolean v2, Lcwb;->a:Z

    if-eqz v2, :cond_2

    .line 569
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

    .line 571
    :cond_2
    invoke-direct {p0, v0}, Lcwb;->a(Lcwf;)V

    goto :goto_3

    .line 573
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

    .line 574
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method private g()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 156
    iget-object v7, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v7

    .line 2434
    :try_start_0
    iget-boolean v0, p0, Lcwb;->f:Z

    .line 157
    if-eqz v0, :cond_0

    .line 159
    monitor-exit v7

    .line 201
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-wide v2, p0, Lcwb;->j:J

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 167
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_1
    if-ltz v6, :cond_4

    .line 168
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 170
    invoke-virtual {v0}, Lcwf;->f()J

    move-result-wide v4

    .line 171
    cmp-long v1, v4, v10

    if-gtz v1, :cond_3

    .line 174
    iget-object v1, p0, Lcwb;->h:Lcwf;

    if-ne v1, v0, :cond_1

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcwb;->i:Ljava/lang/String;

    move-wide v0, v2

    .line 167
    :goto_2
    add-int/lit8 v2, v6, -0x1

    move v6, v2

    move-wide v2, v0

    goto :goto_1

    .line 177
    :cond_1
    sget-object v1, Ldvn;->a:Ldvn;

    .line 2661
    invoke-virtual {v0, v1}, Lcwf;->a(Ldvn;)V

    .line 178
    sget-boolean v1, Lcwb;->a:Z

    if-eqz v1, :cond_2

    .line 179
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x26

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "pausing queue: remove expired request:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_2
    invoke-direct {p0, v0}, Lcwb;->a(Lcwf;)V

    move-wide v0, v2

    goto :goto_2

    .line 183
    :cond_3
    cmp-long v0, v4, v2

    if-gez v0, :cond_6

    move-wide v0, v4

    .line 184
    goto :goto_2

    .line 191
    :cond_4
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 192
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 193
    invoke-virtual {v0}, Lcwf;->g()J

    move-result-wide v0

    .line 194
    cmp-long v4, v0, v10

    if-lez v4, :cond_5

    .line 195
    sub-long/2addr v0, v8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 199
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcwb;->b:Z

    .line 200
    invoke-direct {p0, v2, v3}, Lcwb;->b(J)V

    .line 201
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move-wide v0, v2

    goto :goto_2
.end method

.method private h()Lcwf;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 443
    iget-object v1, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 6434
    :try_start_0
    iget-boolean v2, p0, Lcwb;->f:Z

    .line 444
    if-nez v2, :cond_1

    .line 445
    iget-object v2, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 7210
    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {p0, v2, v3}, Lcwb;->b(J)V

    .line 448
    :cond_0
    iget-object v2, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 449
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    iput-object v0, p0, Lcwb;->h:Lcwf;

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcwb;->i:Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcwb;->h:Lcwf;

    monitor-exit v1

    .line 454
    :goto_0
    return-object v0

    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcwb;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcwb;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v0, "Babel_NetworkQueue"

    const-string v1, "Try to start the queue while the thread is null! "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 677
    iput-wide p1, p0, Lcwb;->j:J

    .line 678
    return-void
.end method

.method public a(Lcwf;Z)V
    .locals 8

    .prologue
    .line 466
    iget-object v1, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 467
    :try_start_0
    sget-boolean v0, Lcwb;->a:Z

    if-eqz v0, :cond_0

    .line 468
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "queueRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; length is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7434
    :cond_0
    iget-boolean v0, p0, Lcwb;->f:Z

    .line 470
    if-eqz v0, :cond_1

    .line 471
    const-string v0, "Babel_NetworkQueue"

    const-string v2, "can\'t call queueRequest after queue is finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    monitor-exit v1

    .line 521
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-virtual {p1}, Lcwf;->a()Lcwi;

    move-result-object v0

    .line 475
    if-nez v0, :cond_2

    .line 477
    monitor-exit v1

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 480
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcwf;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 481
    sget-object v0, Ldvn;->a:Ldvn;

    .line 7661
    invoke-virtual {p1, v0}, Lcwf;->a(Ldvn;)V

    .line 482
    sget-boolean v0, Lcwb;->a:Z

    if-eqz v0, :cond_3

    .line 483
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Removing expired requestItem while queueing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_3
    invoke-direct {p0, p1}, Lcwb;->a(Lcwf;)V

    .line 488
    monitor-exit v1

    goto :goto_0

    .line 492
    :cond_4
    invoke-direct {p0, p1}, Lcwb;->b(Lcwf;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 493
    sget-boolean v2, Lcwb;->a:Z

    if-eqz v2, :cond_5

    .line 494
    invoke-interface {v0}, Lcwi;->e()Ljava/lang/String;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_5

    .line 496
    const-string v2, "Queueing stress message requestItem in RequestWriter"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 502
    :cond_5
    :goto_1
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcwb;->b:Z

    if-nez v0, :cond_6

    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcwb;->a(Z)V

    .line 506
    :cond_6
    iget-boolean v0, p0, Lcwb;->b:Z

    if-eqz v0, :cond_8

    .line 507
    if-nez p2, :cond_7

    .line 510
    invoke-virtual {p1}, Lcwf;->f()J

    move-result-wide v2

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 515
    iget-wide v6, p0, Lcwb;->k:J

    sub-long/2addr v6, v4

    cmp-long v0, v2, v6

    if-lez v0, :cond_7

    iget-wide v2, p0, Lcwb;->k:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_8

    .line 516
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcwb;->a(Z)V

    .line 521
    :cond_8
    monitor-exit v1

    goto/16 :goto_0

    .line 496
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 630
    iget-object v2, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 8434
    :try_start_0
    iget-boolean v1, p0, Lcwb;->f:Z

    .line 631
    if-eqz v1, :cond_0

    .line 632
    const-string v1, "Babel_NetworkQueue"

    const-string v3, "Should not cancel a request why request writer is finished"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 636
    :goto_0
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 637
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 638
    invoke-virtual {v0, p1, p2}, Lcwf;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 639
    if-nez v1, :cond_2

    iget-object v4, p0, Lcwb;->h:Lcwf;

    if-eqz v4, :cond_2

    .line 641
    iput-object p2, p0, Lcwb;->i:Ljava/lang/String;

    .line 636
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 643
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 648
    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 649
    sget-boolean v3, Lcwb;->a:Z

    if-eqz v3, :cond_4

    .line 650
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

    .line 652
    :cond_4
    sget-object v3, Ldvn;->b:Ldvn;

    .line 8661
    invoke-virtual {v0, v3}, Lcwf;->a(Ldvn;)V

    .line 653
    invoke-direct {p0, v0}, Lcwb;->a(Lcwf;)V

    .line 654
    invoke-static {p2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 656
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Z)V
    .locals 5

    .prologue
    .line 218
    iget-object v1, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcwb;->b:Z

    if-nez v0, :cond_0

    .line 220
    monitor-exit v1

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_0
    sget-boolean v0, Lcwb;->a:Z

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcwb;->c:Ljava/lang/String;

    iget-object v2, p0, Lcwb;->e:Ljava/util/LinkedList;

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

    .line 225
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcwb;->b:Z

    .line 226
    iget-object v0, p0, Lcwb;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Thread;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 686
    iget-object v1, p0, Lcwb;->d:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 687
    iget-object v1, p0, Lcwb;->d:Ljava/lang/Thread;

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    .line 689
    :cond_0
    return v0
.end method

.method public b()J
    .locals 8

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 234
    iget-object v5, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v5

    .line 235
    :try_start_0
    iget-object v2, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 236
    monitor-exit v5

    .line 250
    :goto_0
    return-wide v0

    .line 242
    :cond_0
    iget-object v2, p0, Lcwb;->m:Lcwe;

    invoke-interface {v2}, Lcwe;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v0, p0, Lcwb;->j:J

    .line 243
    :cond_1
    const/4 v2, 0x0

    move v4, v2

    move-wide v2, v0

    :goto_1
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 244
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 245
    invoke-virtual {v0}, Lcwf;->f()J

    move-result-wide v0

    .line 246
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_3

    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    .line 243
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_1

    .line 250
    :cond_2
    monitor-exit v5

    move-wide v0, v2

    goto :goto_0

    .line 251
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
    .line 255
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 581
    iget-object v1, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    :try_start_0
    sget-boolean v0, Lcwb;->a:Z

    if-eqz v0, :cond_0

    .line 583
    const-string v0, "### finish "

    invoke-virtual {p0}, Lcwb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 585
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcwb;->f:Z

    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcwb;->a(Z)V

    .line 587
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 594
    iget-object v2, p0, Lcwb;->d:Ljava/lang/Thread;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 596
    sget-boolean v4, Lcwb;->a:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcwb;->d:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 597
    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "LegacyNetworkQueue.finish [%s] took %d ms; isAlive returning %b"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcwb;->c:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sub-long v0, v2, v0

    .line 599
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x2

    iget-object v1, p0, Lcwb;->d:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v0

    .line 597
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 604
    :cond_2
    :goto_1
    return-void

    .line 583
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    const-string v1, "Babel_NetworkQueue"

    const-string v2, "InterruptedException in finish: "

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public e()J
    .locals 2

    .prologue
    .line 669
    iget-wide v0, p0, Lcwb;->j:J

    return-wide v0
.end method

.method f()V
    .locals 13

    .prologue
    .line 275
    :goto_0
    invoke-direct {p0}, Lcwb;->h()Lcwf;

    move-result-object v3

    .line 278
    if-eqz v3, :cond_0

    .line 3036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 279
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iget-object v1, v3, Lcwf;->a:Lcwk;

    iget v1, v1, Lcwk;->c:I

    .line 280
    invoke-interface {v0, v1}, Lhpz;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0, v3}, Lcwb;->a(Lcwf;)V

    goto :goto_0

    .line 285
    :cond_0
    if-eqz v3, :cond_13

    .line 286
    invoke-virtual {v3}, Lcwf;->a()Lcwi;

    move-result-object v1

    .line 290
    const/4 v0, 0x0

    .line 291
    sget-boolean v2, Lcwb;->a:Z

    if-eqz v2, :cond_1

    .line 293
    invoke-interface {v1}, Lcwi;->e()Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_1
    new-instance v4, Lcwl;

    invoke-direct {v4}, Lcwl;-><init>()V

    .line 297
    iget-object v1, p0, Lcwb;->m:Lcwe;

    invoke-virtual {v3, v1, v4}, Lcwf;->a(Lcwe;Lcwl;)I

    move-result v1

    .line 300
    invoke-virtual {p0}, Lcwb;->c()I

    move-result v2

    .line 301
    sget-boolean v5, Lcwb;->a:Z

    if-eqz v5, :cond_2

    .line 302
    iget-object v5, p0, Lcwb;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x20

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Network Queue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    :cond_2
    iget-object v5, v3, Lcwf;->a:Lcwk;

    iget v5, v5, Lcwk;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v8, 0xe

    .line 3219
    new-instance v9, Lcsn;

    .line 4040
    invoke-direct {v9}, Lcsn;-><init>()V

    .line 306
    iget-object v10, p0, Lcwb;->c:Ljava/lang/String;

    .line 307
    invoke-virtual {v9, v10}, Lcsn;->e(Ljava/lang/String;)Lcsn;

    move-result-object v9

    .line 308
    invoke-virtual {v9, v2}, Lcsn;->c(I)Lcsn;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Lcsn;->a()Lcsn;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Lcsn;->b()Lcsn;

    move-result-object v2

    .line 304
    invoke-static {v5, v6, v7, v8, v2}, Laen;->a(IJILcsn;)V

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 316
    iget-object v2, p0, Lcwb;->m:Lcwe;

    invoke-interface {v2}, Lcwe;->H_()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 320
    const/4 v2, 0x0

    .line 322
    if-eqz v0, :cond_3

    .line 323
    const-string v5, "Sending stress message in RequestWriter:"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    :cond_3
    :goto_1
    sget v5, Lcwj;->a:I

    if-ne v1, v5, :cond_4

    .line 328
    iget-object v1, p0, Lcwb;->m:Lcwe;

    invoke-virtual {v3, v1, v4}, Lcwf;->b(Lcwe;Lcwl;)I

    move-result v1

    .line 331
    :cond_4
    sget v5, Lcwj;->b:I

    if-ne v1, v5, :cond_a

    .line 332
    if-eqz v0, :cond_5

    .line 333
    const-string v1, "Sent stress message succeeded in RequestWriter:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    :cond_5
    :goto_2
    iget-object v0, p0, Lcwb;->m:Lcwe;

    const-wide/16 v4, 0x1f4

    invoke-interface {v0, v4, v5}, Lcwe;->a(J)V

    .line 341
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcwb;->j:J

    .line 343
    sget-boolean v0, Lcwb;->a:Z

    if-eqz v0, :cond_6

    .line 344
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x29

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "request successful. removing from queue: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_6
    invoke-direct {p0, v3}, Lcwb;->a(Lcwf;)V

    .line 347
    iget-object v0, p0, Lcwb;->m:Lcwe;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcwe;->a(Z)V

    move v0, v2

    .line 407
    :goto_3
    iget-object v1, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v2, p0, Lcwb;->m:Lcwe;

    invoke-interface {v2}, Lcwe;->I_()V

    .line 409
    if-eqz v0, :cond_7

    .line 416
    invoke-direct {p0}, Lcwb;->g()V

    .line 418
    :cond_7
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 323
    :cond_8
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 333
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 349
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 350
    const-string v1, "Babel_NetworkQueue"

    const/4 v5, 0x3

    invoke-static {v1, v5}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 351
    const-string v1, "Babel_NetworkQueue"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "error sending %s; took %d ms (error code == %d)"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    sub-long v6, v8, v6

    .line 354
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v12

    const/4 v6, 0x2

    .line 355
    invoke-virtual {v4}, Lcwl;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v6

    .line 351
    invoke-static {v5, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    :cond_b
    iget-object v5, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v5

    .line 360
    :try_start_1
    iget-object v1, p0, Lcwb;->m:Lcwe;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Lcwe;->a(Z)V

    .line 361
    iget-object v1, p0, Lcwb;->i:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 362
    iget-object v1, p0, Lcwb;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Ljava/lang/String;)V

    .line 365
    :cond_c
    iget-object v1, p0, Lcwb;->i:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 366
    invoke-virtual {v3, v4}, Lcwf;->a(Lcwl;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    .line 367
    :goto_4
    if-nez v1, :cond_f

    .line 368
    invoke-virtual {v4}, Lcwl;->c()Ldvn;

    move-result-object v0

    .line 369
    sget-boolean v1, Lcwb;->a:Z

    if-eqz v1, :cond_d

    .line 370
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {v4}, Lcwl;->a()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x28

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "not retrying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "; error code == "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4661
    :cond_d
    invoke-virtual {v3, v0}, Lcwf;->a(Ldvn;)V

    .line 374
    invoke-direct {p0, v3}, Lcwb;->a(Lcwf;)V

    move v0, v2

    .line 403
    :goto_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcwb;->h:Lcwf;

    .line 404
    monitor-exit v5

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 366
    :cond_e
    const/4 v1, 0x0

    goto :goto_4

    .line 376
    :cond_f
    if-eqz v0, :cond_10

    .line 377
    :try_start_2
    const-string v1, "Sending stress message failed with error="

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {v4}, Lcwl;->a()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x18

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", will retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_10
    invoke-virtual {v4}, Lcwl;->b()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_11

    .line 383
    iget-object v0, v3, Lcwf;->a:Lcwk;

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Lcwl;->b()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcwk;->f:J

    .line 386
    :cond_11
    iget-object v0, p0, Lcwb;->l:Lcwm;

    invoke-interface {v0, v3}, Lcwm;->a(Lcwf;)V

    .line 390
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xe10

    .line 392
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-wide v6, p0, Lcwb;->j:J

    const/4 v2, 0x1

    shl-long/2addr v6, v2

    .line 391
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcwb;->j:J

    .line 395
    sget-boolean v0, Lcwb;->a:Z

    if-eqz v0, :cond_12

    .line 396
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v4}, Lcwl;->a()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "pausing queue after failed request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; error code:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 399
    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 420
    :cond_13
    iget-object v1, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 5434
    :try_start_3
    iget-boolean v0, p0, Lcwb;->f:Z

    .line 421
    if-eqz v0, :cond_16

    .line 422
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 428
    :cond_14
    sget-boolean v0, Lcwb;->a:Z

    if-eqz v0, :cond_15

    .line 429
    iget-object v0, p0, Lcwb;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "### queue \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is finished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_15
    return-void

    .line 424
    :cond_16
    :try_start_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 608
    iget-object v1, p0, Lcwb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    const-string v0, "LegacyNetworkQueue("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcwb;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") pending count == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcwb;->e:Ljava/util/LinkedList;

    .line 611
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object v0, p0, Lcwb;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwf;

    .line 613
    invoke-virtual {v0}, Lcwf;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 616
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method
