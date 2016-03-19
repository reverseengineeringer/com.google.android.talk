.class public abstract Lgbh;
.super Lgbn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lgbh",
        "<TM;>;>",
        "Lgbn;"
    }
.end annotation


# instance fields
.field public o:Lgbj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgbn;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lgbh;->o:Lgbj;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lgbh;->o:Lgbj;

    invoke-virtual {v2}, Lgbj;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lgbh;->o:Lgbj;

    invoke-virtual {v2, v0}, Lgbj;->b(I)Lgbk;

    move-result-object v2

    invoke-virtual {v2}, Lgbk;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public a(Lgbg;)V
    .locals 2

    iget-object v0, p0, Lgbh;->o:Lgbj;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lgbh;->o:Lgbj;

    invoke-virtual {v1}, Lgbj;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lgbh;->o:Lgbj;

    invoke-virtual {v1, v0}, Lgbj;->b(I)Lgbk;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgbk;->a(Lgbg;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lgbf;I)Z
    .locals 4

    .prologue
    .line 0
    invoke-virtual {p1}, Lgbf;->m()I

    move-result v0

    invoke-virtual {p1, p2}, Lgbf;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1000
    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    .line 0
    invoke-virtual {p1}, Lgbf;->m()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lgbf;->a(II)[B

    move-result-object v0

    new-instance v2, Lgbo;

    invoke-direct {v2, p2, v0}, Lgbo;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lgbh;->o:Lgbj;

    if-nez v3, :cond_2

    new-instance v3, Lgbj;

    invoke-direct {v3}, Lgbj;-><init>()V

    iput-object v3, p0, Lgbh;->o:Lgbj;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lgbk;

    invoke-direct {v0}, Lgbk;-><init>()V

    iget-object v3, p0, Lgbh;->o:Lgbj;

    invoke-virtual {v3, v1, v0}, Lgbj;->a(ILgbk;)V

    :cond_1
    invoke-virtual {v0, v2}, Lgbk;->a(Lgbo;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lgbh;->o:Lgbj;

    invoke-virtual {v0, v1}, Lgbj;->a(I)Lgbk;

    move-result-object v0

    goto :goto_1
.end method

.method protected final a(Lgbh;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    iget-object v0, p0, Lgbh;->o:Lgbj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbh;->o:Lgbj;

    invoke-virtual {v0}, Lgbj;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p1, Lgbh;->o:Lgbj;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lgbh;->o:Lgbj;

    invoke-virtual {v0}, Lgbj;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lgbh;->o:Lgbj;

    iget-object v1, p1, Lgbh;->o:Lgbj;

    invoke-virtual {v0, v1}, Lgbj;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final c()I
    .locals 1

    iget-object v0, p0, Lgbh;->o:Lgbj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbh;->o:Lgbj;

    invoke-virtual {v0}, Lgbj;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lgbh;->o:Lgbj;

    invoke-virtual {v0}, Lgbj;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgbh;->d()Lgbh;

    move-result-object v0

    return-object v0
.end method

.method public d()Lgbh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    invoke-super {p0}, Lgbn;->e()Lgbn;

    move-result-object v0

    check-cast v0, Lgbh;

    invoke-static {p0, v0}, Lgbl;->a(Lgbh;Lgbh;)V

    return-object v0
.end method

.method public synthetic e()Lgbn;
    .locals 1

    invoke-virtual {p0}, Lgbh;->d()Lgbh;

    move-result-object v0

    return-object v0
.end method
