.class public final Ldyi;
.super Lecg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lecg",
        "<",
        "Ldyj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ldyj;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lecg;-><init>(Leff;)V

    .line 19
    return-void
.end method


# virtual methods
.method public E_()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public F_()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lbfd;I)Ldom;
    .locals 2

    .prologue
    .line 23
    new-instance v1, Ldng;

    iget-object v0, p0, Ldyi;->a:Leff;

    check-cast v0, Ldyj;

    invoke-direct {v1, p1, v0}, Ldng;-><init>(Lbfd;Ldyj;)V

    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "background_queue"

    return-object v0
.end method

.method protected a(ILdvn;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public a(Lcwi;)Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method
