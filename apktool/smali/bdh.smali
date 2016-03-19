.class public final Lbdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lbdh;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 100
    iget-object v2, p0, Lbdh;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    monitor-enter v2

    .line 101
    const/4 v0, 0x0

    .line 102
    :try_start_0
    iget-object v3, p0, Lbdh;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    .line 1038
    iget-boolean v3, v3, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->d:Z

    .line 102
    if-eqz v3, :cond_2

    .line 103
    iget-object v3, p0, Lbdh;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    .line 2038
    iget-object v3, v3, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->c:Lbdm;

    .line 103
    invoke-virtual {v3}, Lbdm;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    iget-object v1, p0, Lbdh;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    .line 3038
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->a()V

    .line 122
    :goto_0
    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lbdh;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    .line 6038
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b()V

    .line 124
    iget-object v0, p0, Lbdh;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    .line 7038
    sget-wide v4, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b:J

    .line 124
    invoke-virtual {v0, v4, v5}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->b(J)V

    .line 126
    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    move v0, v1

    .line 108
    goto :goto_0

    .line 112
    :cond_2
    iget-object v3, p0, Lbdh;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    .line 4038
    iget-object v3, v3, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->c:Lbdm;

    .line 112
    invoke-virtual {v3}, Lbdm;->d()Z

    move-result v3

    .line 113
    if-eqz v3, :cond_3

    .line 115
    iget-object v1, p0, Lbdh;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    .line 5038
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->a()V

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    .line 118
    goto :goto_0
.end method
