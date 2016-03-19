.class public final Lccl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lbng;


# direct methods
.method public constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 12849
    iput-object p1, p0, Lccl;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 6852
    iget-object v0, p0, Lccl;->a:Lbng;

    .line 7285
    iget-object v0, v0, Lbng;->i:Lbpq;

    .line 6852
    invoke-interface {v0}, Lbpq;->g()Lbeu;

    move-result-object v0

    invoke-virtual {v0}, Lbeu;->g()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7857
    iget-object v1, p0, Lccl;->a:Lbng;

    .line 8285
    iget-object v1, v1, Lbng;->i:Lbpq;

    .line 7857
    invoke-interface {v1}, Lbpq;->d()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 8868
    iget-object v0, p0, Lccl;->a:Lbng;

    .line 10182
    invoke-virtual {v0}, Lbng;->d()I

    move-result v0

    invoke-static {v0}, Laal;->g(I)Z

    move-result v0

    .line 8868
    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 10873
    iget-object v0, p0, Lccl;->a:Lbng;

    invoke-virtual {v0}, Lbng;->c()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11863
    iget-object v0, p0, Lccl;->a:Lbng;

    invoke-virtual {v0}, Lbng;->ag()Lcyx;

    move-result-object v0

    iget-object v0, v0, Lcyx;->e:Ljava/lang/String;

    return-object v0
.end method
