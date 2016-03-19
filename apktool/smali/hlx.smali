.class final Lhlx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Lhme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhme",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/app/Application;

.field private g:Lhlq;


# direct methods
.method constructor <init>(Lhme;Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhme",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/app/Application;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1017
    sget-object v0, Lhms;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lhlx;-><init>(Lhme;Landroid/app/Application;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Lhme;Landroid/app/Application;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhme",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/app/Application;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lhlx;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2017
    sget-object v0, Lhms;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    iput-object v0, p0, Lhlx;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 43
    iput-object p2, p0, Lhlx;->f:Landroid/app/Application;

    .line 44
    iput-object p1, p0, Lhlx;->e:Lhme;

    .line 45
    iput-object p3, p0, Lhlx;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lhlx;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Lhlq;

    iget-object v1, p0, Lhlx;->f:Landroid/app/Application;

    new-instance v2, Lhlr;

    invoke-direct {v2, p0}, Lhlr;-><init>(Lhlx;)V

    new-instance v3, Lhls;

    invoke-direct {v3, p0}, Lhls;-><init>(Lhlx;)V

    invoke-direct {v0, v1, v2, v3}, Lhlq;-><init>(Landroid/app/Application;Lhlr;Lhls;)V

    iput-object v0, p0, Lhlx;->g:Lhlq;

    .line 92
    iget-object v0, p0, Lhlx;->g:Lhlq;

    invoke-virtual {v0}, Lhlq;->a()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lhlx;->e:Lhme;

    invoke-virtual {v0, p1}, Lhme;->a(Ljava/lang/Object;)V

    .line 109
    return-void
.end method
