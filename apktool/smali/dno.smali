.class public Ldno;
.super Ldnh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Ldnh;-><init>()V

    .line 307
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Ljqp;

    invoke-direct {v0}, Ljqp;-><init>()V

    .line 313
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Ljqp;->a:Ljava/lang/Boolean;

    .line 316
    new-instance v1, Liyn;

    invoke-direct {v1}, Liyn;-><init>()V

    .line 319
    iput-object v0, v1, Liyn;->a:Ljqp;

    .line 320
    return-object v1
.end method

.method public b()J
    .locals 4

    .prologue
    .line 331
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    const-string v0, "loadblockedpeople"

    return-object v0
.end method
