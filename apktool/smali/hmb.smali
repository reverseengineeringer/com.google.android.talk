.class final Lhmb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lhmb;


# instance fields
.field final a:Lhmf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhmf",
            "<",
            "Lmic;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lhlx;

.field private final d:Lhlw;


# direct methods
.method private constructor <init>(Lhnj;Landroid/app/Application;Lhmd;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p2}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lhlw;

    invoke-direct {v0}, Lhlw;-><init>()V

    iput-object v0, p0, Lhmb;->d:Lhlw;

    .line 30
    new-instance v0, Lhmf;

    new-instance v1, Lhma;

    invoke-direct {v1}, Lhma;-><init>()V

    sget v2, Lhmk;->b:I

    invoke-direct {v0, p1, v1, p3, v2}, Lhmf;-><init>(Lhnj;Lhlv;Lhmd;I)V

    iput-object v0, p0, Lhmb;->a:Lhmf;

    .line 37
    new-instance v0, Lhlx;

    new-instance v1, Lhme;

    invoke-direct {v1, p0}, Lhme;-><init>(Lhmb;)V

    invoke-direct {v0, v1, p2}, Lhlx;-><init>(Lhme;Landroid/app/Application;)V

    iput-object v0, p0, Lhmb;->c:Lhlx;

    .line 46
    return-void
.end method

.method static declared-synchronized a(Lhnj;Landroid/app/Application;Lhmd;)Lhmb;
    .locals 2

    .prologue
    .line 59
    const-class v1, Lhmb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhmb;->b:Lhmb;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lhmb;

    invoke-direct {v0, p0, p1, p2}, Lhmb;-><init>(Lhnj;Landroid/app/Application;Lhmd;)V

    sput-object v0, Lhmb;->b:Lhmb;

    .line 63
    :cond_0
    sget-object v0, Lhmb;->b:Lhmb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lhmb;->c:Lhlx;

    invoke-virtual {v0}, Lhlx;->a()V

    .line 69
    return-void
.end method

.method a(I)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lhmb;->a:Lhmf;

    invoke-virtual {v0}, Lhmf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    sget-object v0, Lhms;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 78
    new-instance v1, Lhmc;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lhmc;-><init>(Lhmb;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 88
    :cond_0
    return-void
.end method
