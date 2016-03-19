.class final Lclx;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lclu;


# direct methods
.method constructor <init>(Lclu;)V
    .locals 1

    .prologue
    .line 375
    iput-object p1, p0, Lclx;->a:Lclu;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 7045
    iget-object v0, v0, Lclu;->d:Lclp;

    .line 386
    iget-object v1, p0, Lclx;->a:Lclu;

    .line 8045
    iget-object v1, v1, Lclu;->f:Lclz;

    .line 386
    invoke-interface {v0, v1}, Lclp;->b(Lclo;)V

    .line 388
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 9045
    iget-object v0, v0, Lclu;->k:Lkhk;

    .line 388
    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 10045
    iput-object v2, v0, Lclu;->k:Lkhk;

    .line 390
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 11045
    invoke-virtual {v0, v2}, Lclu;->c(Lkhk;)V

    .line 393
    :cond_0
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 12045
    iget-object v0, v0, Lclu;->j:Lhbh;

    .line 393
    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 13045
    iget-object v0, v0, Lclu;->j:Lhbh;

    .line 394
    iget-object v1, p0, Lclx;->a:Lclu;

    .line 14045
    iget-object v1, v1, Lclu;->e:Lcly;

    .line 394
    invoke-interface {v0, v1}, Lhbh;->b(Lhbn;)V

    .line 395
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 15045
    iput-object v2, v0, Lclu;->j:Lhbh;

    .line 398
    :cond_1
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 16045
    iget-object v0, v0, Lclu;->g:Ljava/util/Map;

    .line 398
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 399
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 17045
    iput-object v2, v0, Lclu;->l:Lkhk;

    .line 400
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 18045
    iput v3, v0, Lclu;->m:I

    .line 401
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 19045
    iput-boolean v3, v0, Lclu;->n:Z

    .line 402
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 20045
    iput-boolean v3, v0, Lclu;->o:Z

    .line 403
    return-void
.end method

.method public a(Lhkw;)V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 1045
    iget-object v0, v0, Lclu;->d:Lclp;

    .line 378
    iget-object v1, p0, Lclx;->a:Lclu;

    .line 2045
    iget-object v1, v1, Lclu;->f:Lclz;

    .line 378
    invoke-interface {v0, v1}, Lclp;->a(Lclo;)V

    .line 379
    iget-object v1, p0, Lclx;->a:Lclu;

    iget-object v0, p0, Lclx;->a:Lclu;

    .line 3045
    iget-object v0, v0, Lclu;->c:Lcfc;

    .line 380
    invoke-virtual {v0}, Lcfc;->o()Lhbo;

    move-result-object v0

    const-class v2, Lhbh;

    invoke-virtual {v0, v2}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v0

    check-cast v0, Lhbh;

    .line 4045
    iput-object v0, v1, Lclu;->j:Lhbh;

    .line 381
    iget-object v0, p0, Lclx;->a:Lclu;

    .line 5045
    iget-object v0, v0, Lclu;->j:Lhbh;

    .line 381
    iget-object v1, p0, Lclx;->a:Lclu;

    .line 6045
    iget-object v1, v1, Lclu;->e:Lcly;

    .line 381
    invoke-interface {v0, v1}, Lhbh;->a(Lhbn;)V

    .line 382
    return-void
.end method
