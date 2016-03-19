.class final Ljrt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljrs;


# direct methods
.method constructor <init>(Ljrs;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Ljrt;->a:Ljrs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Ljrt;->a:Ljrs;

    .line 1024
    iget-object v0, v0, Ljrs;->a:Ljava/lang/ref/ReferenceQueue;

    .line 48
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljru;

    .line 1076
    iget-object v0, v0, Ljru;->b:Llbl;

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llbl;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 56
    :try_start_1
    iget-object v0, p0, Ljrt;->a:Ljrs;

    .line 2024
    iget-object v0, v0, Ljrs;->b:Ljava/util/concurrent/Executor;

    .line 56
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2076
    sget-object v2, Ljru;->a:Ljava/util/Set;

    .line 58
    monitor-enter v2

    .line 3076
    :try_start_2
    sget-object v0, Ljru;->a:Ljava/util/Set;

    .line 59
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llbl;

    .line 60
    invoke-virtual {v0, v1}, Llbl;->a(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 56
    :try_start_4
    iget-object v0, p0, Ljrt;->a:Ljrs;

    .line 4024
    iget-object v0, v0, Ljrs;->b:Ljava/util/concurrent/Executor;

    .line 56
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 57
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 4076
    sget-object v2, Ljru;->a:Ljava/util/Set;

    .line 58
    monitor-enter v2

    .line 5076
    :try_start_5
    sget-object v0, Ljru;->a:Ljava/util/Set;

    .line 59
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llbl;

    .line 60
    invoke-virtual {v0, v1}, Llbl;->a(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 62
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_1
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 55
    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 56
    :try_start_7
    iget-object v0, p0, Ljrt;->a:Ljrs;

    .line 6024
    iget-object v0, v0, Ljrs;->b:Ljava/util/concurrent/Executor;

    .line 56
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_7 .. :try_end_7} :catch_3

    .line 63
    :goto_3
    throw v1

    .line 57
    :catch_3
    move-exception v0

    move-object v2, v0

    .line 6076
    sget-object v3, Ljru;->a:Ljava/util/Set;

    .line 58
    monitor-enter v3

    .line 7076
    :try_start_8
    sget-object v0, Ljru;->a:Ljava/util/Set;

    .line 59
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llbl;

    .line 60
    invoke-virtual {v0, v2}, Llbl;->a(Ljava/lang/Throwable;)Z

    goto :goto_4

    .line 62
    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :cond_2
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3
.end method
