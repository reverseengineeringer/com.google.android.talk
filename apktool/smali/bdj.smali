.class public final Lbdj;
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
    .line 139
    iput-object p1, p0, Lbdj;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lbdj;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lbdj;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    .line 1038
    iget-object v0, v0, Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;->c:Lbdm;

    .line 143
    invoke-virtual {v0}, Lbdm;->e()V

    .line 144
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
