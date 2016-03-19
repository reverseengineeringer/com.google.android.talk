.class public final Ljri;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/os/StrictMode$ThreadPolicy;

.field private static final b:Ljava/util/concurrent/ThreadFactory;

.field private static final c:Landroid/os/StrictMode$ThreadPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 37
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    sput-object v0, Ljri;->a:Landroid/os/StrictMode$ThreadPolicy;

    .line 38
    new-instance v0, Llbm;

    invoke-direct {v0}, Llbm;-><init>()V

    .line 39
    invoke-virtual {v0}, Llbm;->a()Llbm;

    move-result-object v0

    const-string v1, "Lightweight Thread #%d"

    .line 40
    invoke-virtual {v0, v1}, Llbm;->a(Ljava/lang/String;)Llbm;

    move-result-object v0

    new-instance v1, Ljrj;

    invoke-direct {v1}, Ljrj;-><init>()V

    .line 41
    invoke-virtual {v0, v1}, Llbm;->a(Ljava/util/concurrent/ThreadFactory;)Llbm;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Llbm;->b()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Ljri;->b:Ljava/util/concurrent/ThreadFactory;

    .line 58
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 59
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    sput-object v0, Ljri;->c:Landroid/os/StrictMode$ThreadPolicy;

    .line 58
    return-void
.end method

.method static a(Llbe;)Ljava/util/concurrent/Executor;
    .locals 0

    .prologue
    .line 116
    return-object p0
.end method

.method static a(Llbd;)Llbd;
    .locals 0

    .prologue
    .line 199
    return-object p0
.end method

.method static a()Llbe;
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sget-object v1, Ljri;->b:Ljava/util/concurrent/ThreadFactory;

    .line 107
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 106
    invoke-static {v0}, Laal;->a(Ljava/util/concurrent/ScheduledExecutorService;)Llbe;

    move-result-object v0

    return-object v0
.end method

.method static b(Llbd;)Ljava/util/concurrent/Executor;
    .locals 0

    .prologue
    .line 206
    return-object p0
.end method
