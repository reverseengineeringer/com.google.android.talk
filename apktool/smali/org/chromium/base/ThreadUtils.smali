.class public Lorg/chromium/base/ThreadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Z

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/ThreadUtils;->a:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/base/ThreadUtils;->b:Z

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/base/ThreadUtils;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 48
    sget-object v1, Lorg/chromium/base/ThreadUtils;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lorg/chromium/base/ThreadUtils;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 50
    sget-boolean v0, Lorg/chromium/base/ThreadUtils;->b:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Did not yet override the UI thread"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 53
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/chromium/base/ThreadUtils;->c:Landroid/os/Handler;

    .line 55
    :cond_1
    sget-object v0, Lorg/chromium/base/ThreadUtils;->c:Landroid/os/Handler;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method private static isThreadPriorityAudio(I)Z
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 221
    invoke-static {p0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    const/16 v1, -0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setThreadPriorityAudio(I)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 211
    const/16 v0, -0x10

    invoke-static {p0, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 212
    return-void
.end method
