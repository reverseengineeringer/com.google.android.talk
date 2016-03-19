.class abstract Llba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Llba;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:Ljava/lang/Thread;

.field volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-class v0, Llba;

    const-class v1, Ljava/lang/Thread;

    const-string v2, "a"

    .line 26
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Llba;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 25
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract b()Z
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 36
    sget-object v0, Llba;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    return-void

    .line 40
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Llba;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {p0}, Llba;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    iget-boolean v0, p0, Llba;->b:Z

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Llba;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    :goto_1
    iget-boolean v1, p0, Llba;->b:Z

    if-nez v1, :cond_2

    .line 50
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    :cond_2
    throw v0
.end method
