.class final Lcib;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lchu;


# direct methods
.method constructor <init>(Lchu;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lcib;->a:Lchu;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(Lhke;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhke;",
            "Ljava/util/Set",
            "<",
            "Lhkd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcib;->a:Lchu;

    .line 11051
    iget-object v0, v0, Lchu;->f:Lcgn;

    .line 105
    invoke-virtual {v0}, Lcgn;->k()V

    .line 107
    sget-object v0, Lhke;->b:Lhke;

    if-ne p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lcib;->a:Lchu;

    .line 12051
    iget-object v0, v0, Lchu;->c:Ljava/lang/Runnable;

    .line 13051
    sget-wide v2, Lchu;->a:J

    .line 111
    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 117
    :goto_0
    iget-object v0, p0, Lcib;->a:Lchu;

    .line 15051
    invoke-virtual {v0}, Lchu;->j()V

    .line 118
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcib;->a:Lchu;

    .line 14051
    iget-object v0, v0, Lchu;->c:Ljava/lang/Runnable;

    .line 14089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcib;->a:Lchu;

    .line 6708
    invoke-virtual {v0}, Lchu;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6709
    invoke-virtual {v0}, Lchu;->h()V

    :goto_0
    return-void

    .line 6711
    :cond_0
    invoke-virtual {v0}, Lchu;->d()V

    .line 6712
    invoke-virtual {v0}, Lchu;->m()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    iget-object v0, p0, Lcib;->a:Lchu;

    .line 4051
    invoke-virtual {v0}, Lchu;->d()V

    .line 66
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcib;->a:Lchu;

    .line 5051
    iget-object v0, v0, Lchu;->b:Lcfc;

    .line 70
    invoke-virtual {v0}, Lcfc;->k()Lhjk;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    const-string v1, "Babel_calls"

    const-string v2, "Disabling camera because there are only PSTN participants"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v0, v4}, Lhjk;->a(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcib;->a:Lchu;

    .line 1051
    iget-object v0, v0, Lchu;->h:Lcic;

    .line 58
    sget-object v1, Lcic;->a:Lcic;

    invoke-static {v0, v1}, Lhbs;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcib;->a:Lchu;

    .line 2051
    invoke-virtual {v0}, Lchu;->d()V

    .line 60
    iget-object v0, p0, Lcib;->a:Lchu;

    .line 3051
    invoke-virtual {v0}, Lchu;->j()V

    .line 61
    return-void
.end method

.method public c(Lhkx;)V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p1}, Lhkx;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1}, Lhkx;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcib;->a:Lchu;

    .line 8051
    iget-object v0, v0, Lchu;->b:Lcfc;

    .line 93
    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcib;->a:Lchu;

    .line 9051
    iget-object v0, v0, Lchu;->b:Lcfc;

    .line 94
    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    invoke-virtual {v0}, Lcgw;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/16 v0, 0x600

    invoke-static {v0}, Laal;->c(I)V

    .line 97
    iget-object v0, p0, Lcib;->a:Lchu;

    .line 10051
    iget-object v0, v0, Lchu;->b:Lcfc;

    .line 97
    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    invoke-virtual {v0}, Lcgw;->x()V

    .line 100
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcib;->a:Lchu;

    .line 7051
    invoke-virtual {v0}, Lchu;->k()V

    .line 86
    iget-object v0, p0, Lcib;->a:Lchu;

    invoke-virtual {v0}, Lchu;->c()V

    .line 87
    return-void
.end method
