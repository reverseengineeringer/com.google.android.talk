.class final Ldlo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldll;

.field private b:Z

.field private c:J

.field private d:J


# direct methods
.method constructor <init>(Ldll;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Ldlo;->a:Ldll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 230
    iget-object v0, p0, Ldlo;->a:Ldll;

    .line 1042
    iget-object v1, v0, Ldll;->b:Ldlf;

    .line 230
    monitor-enter v1

    .line 231
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    .line 232
    iget-wide v4, p0, Ldlo;->c:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 233
    iput-wide v2, p0, Ldlo;->c:J

    .line 234
    iget-object v0, p0, Ldlo;->a:Ldll;

    .line 2042
    iget-object v0, v0, Ldll;->b:Ldlf;

    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 236
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Ldlo;->a:Ldll;

    .line 3042
    iget-object v1, v0, Ldll;->b:Ldlf;

    .line 240
    monitor-enter v1

    .line 241
    :try_start_0
    iget-boolean v0, p0, Ldlo;->b:Z

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldlo;->b:Z

    .line 243
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ldlo;->c:J

    .line 244
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ldlo;->d:J

    .line 245
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "presence_fetcher"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 246
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 247
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 250
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const-wide/32 v8, 0xea60

    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Ldlo;->a:Ldll;

    .line 4042
    iget-object v3, v0, Ldll;->b:Ldlf;

    .line 255
    monitor-enter v3

    .line 257
    :try_start_0
    const-string v0, "Babel"

    const-string v1, "Presence polling thread starting"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v0, p0, Ldlo;->c:J

    cmp-long v0, v6, v0

    if-gez v0, :cond_1

    .line 262
    iget-object v0, p0, Ldlo;->a:Ldll;

    .line 5042
    iget-object v0, v0, Ldll;->b:Ldlf;

    .line 262
    iget-wide v4, p0, Ldlo;->c:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "Babel"

    const-string v1, "Presence polling thread interrupted"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 281
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ldlo;->b:Z

    .line 282
    const-string v0, "Babel"

    const-string v1, "Presence polling thread exiting"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 265
    :cond_1
    :try_start_3
    iget-object v0, p0, Ldlo;->a:Ldll;

    .line 6042
    iget-object v0, v0, Ldll;->a:Landroid/util/SparseArray;

    .line 265
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    iget-wide v0, p0, Ldlo;->d:J

    const-wide/16 v4, 0x2ee0

    sub-long/2addr v0, v4

    cmp-long v0, v6, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    .line 271
    :goto_2
    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    move-wide v4, v0

    .line 272
    :goto_3
    add-long v0, v6, v8

    iput-wide v0, p0, Ldlo;->d:J

    iput-wide v0, p0, Ldlo;->c:J

    move v1, v2

    .line 274
    :goto_4
    iget-object v0, p0, Ldlo;->a:Ldll;

    .line 7042
    iget-object v0, v0, Ldll;->a:Landroid/util/SparseArray;

    .line 274
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 275
    iget-object v0, p0, Ldlo;->a:Ldll;

    .line 8042
    iget-object v0, v0, Ldll;->a:Landroid/util/SparseArray;

    .line 275
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldky;

    invoke-virtual {v0, v4, v5}, Ldky;->a(J)V

    .line 274
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_2
    move v0, v2

    .line 270
    goto :goto_2

    .line 271
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v0

    sub-long/2addr v0, v8

    move-wide v4, v0

    goto :goto_3

    .line 281
    :cond_4
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Ldlo;->b:Z

    .line 282
    const-string v0, "Babel"

    const-string v1, "Presence polling thread exiting"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 281
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Ldlo;->b:Z

    .line 282
    const-string v1, "Babel"

    const-string v2, "Presence polling thread exiting"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
