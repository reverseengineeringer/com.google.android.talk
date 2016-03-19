.class final Lhcg;
.super Lhfq;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhfn;

.field final synthetic b:Lhcd;


# direct methods
.method constructor <init>(Lhcd;Lhfn;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lhcg;->b:Lhcd;

    iput-object p2, p0, Lhcg;->a:Lhfn;

    invoke-direct {p0}, Lhfq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhfn;)V
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p1}, Lhfn;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhcg;->a:Lhfn;

    invoke-virtual {v0}, Lhfn;->c()Lhil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lhcg;->b:Lhcd;

    .line 1053
    iget-object v0, v0, Lhcd;->e:Lhfo;

    .line 540
    invoke-virtual {v0, p0}, Lhfo;->b(Lhft;)V

    .line 541
    iget-object v0, p0, Lhcg;->b:Lhcd;

    .line 2053
    iget-object v0, v0, Lhcd;->b:Lhci;

    .line 541
    iget-object v1, p0, Lhcg;->b:Lhcd;

    .line 3053
    iget-boolean v1, v1, Lhcd;->n:Z

    .line 541
    invoke-virtual {v0, v1}, Lhci;->b(Z)V

    .line 543
    :cond_0
    return-void
.end method
