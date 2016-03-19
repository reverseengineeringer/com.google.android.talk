.class final Layd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxx;


# instance fields
.field final a:Ljava/util/concurrent/CountDownLatch;

.field final b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Layd;-><init>(B)V

    .line 27
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Layd;->a:Ljava/util/concurrent/CountDownLatch;

    .line 31
    const-wide/16 v0, 0xf

    iput-wide v0, p0, Layd;->b:J

    .line 32
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Layd;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 61
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Laal;->w()V

    .line 37
    new-instance v0, Laye;

    invoke-direct {v0, p0, p1}, Laye;-><init>(Layd;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 52
    invoke-virtual {v0, v1}, Laye;->a([Ljava/lang/Object;)Lhbw;

    .line 53
    return-void
.end method
