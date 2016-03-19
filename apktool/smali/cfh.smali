.class final Lcfh;
.super Lhbn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbn;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcfg;


# direct methods
.method constructor <init>(Lcfg;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcfh;->a:Lcfg;

    invoke-direct {p0}, Lhbn;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 325
    check-cast p1, Lkhf;

    .line 2328
    iget-object v1, p0, Lcfh;->a:Lcfg;

    iget-object v1, v1, Lcfg;->a:Lcfc;

    .line 3277
    iget-object v2, v1, Lcfc;->q:Lcgw;

    invoke-virtual {v2}, Lcgw;->r()V

    .line 3278
    iget-object v2, v1, Lcfc;->q:Lcgw;

    invoke-virtual {v2}, Lcgw;->e()Lcgs;

    move-result-object v2

    invoke-virtual {v2}, Lcgs;->g()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3279
    iget-object v2, v1, Lcfc;->q:Lcgw;

    iget-object v3, p1, Lkhf;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcgw;->a(Ljava/lang/String;)V

    .line 3282
    :cond_0
    iget-object v2, p1, Lkhf;->j:Ljxw;

    if-eqz v2, :cond_1

    .line 3283
    iget-object v2, v1, Lcfc;->q:Lcgw;

    iget-object v3, p1, Lkhf;->j:Ljxw;

    iget-object v3, v3, Ljxw;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcgw;->b(Ljava/lang/String;)V

    .line 3286
    :cond_1
    iget-object v2, p1, Lkhf;->b:Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 3287
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 3288
    iget-object v0, v1, Lcfc;->q:Lcgw;

    invoke-virtual {v0}, Lcgw;->i()V

    .line 3289
    iget-object v0, v1, Lcfc;->q:Lcgw;

    iget-object v2, p1, Lkhf;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcgw;->c(Ljava/lang/String;)V

    .line 3294
    :goto_0
    invoke-virtual {v1}, Lcfc;->o()Lhbo;

    move-result-object v0

    const-class v2, Lhbb;

    invoke-virtual {v0, v2}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v0

    check-cast v0, Lhbb;

    .line 3295
    new-instance v2, Lcff;

    invoke-direct {v2, v1}, Lcff;-><init>(Lcfc;)V

    invoke-interface {v0, v2}, Lhbb;->a(Lhbn;)V

    .line 325
    return-void

    .line 3291
    :cond_2
    iget-object v3, v1, Lcfc;->q:Lcgw;

    if-eq v2, v0, :cond_3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {v3, v0}, Lcgw;->b(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public synthetic a(Llyi;Llyi;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 325
    check-cast p1, Lkhf;

    check-cast p2, Lkhf;

    .line 1333
    iget-object v0, p1, Lkhf;->j:Ljxw;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1335
    :goto_0
    iget-object v2, p2, Lkhf;->j:Ljxw;

    if-nez v2, :cond_1

    .line 1337
    :goto_1
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1338
    iget-object v0, p0, Lcfh;->a:Lcfg;

    iget-object v0, v0, Lcfg;->a:Lcfc;

    .line 2095
    iget-object v0, v0, Lcfc;->q:Lcgw;

    .line 1338
    invoke-virtual {v0, v1}, Lcgw;->b(Ljava/lang/String;)V

    .line 1339
    iget-object v0, p0, Lcfh;->a:Lcfg;

    iget-object v0, v0, Lcfg;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->x()V

    .line 1340
    iget-object v0, p0, Lcfh;->a:Lcfg;

    iget-object v0, v0, Lcfg;->a:Lcfc;

    iget-object v0, v0, Lcfc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhku;

    .line 1341
    invoke-virtual {v0, v1}, Lhku;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 1334
    :cond_0
    iget-object v0, p1, Lkhf;->j:Ljxw;

    iget-object v0, v0, Ljxw;->a:Ljava/lang/String;

    goto :goto_0

    .line 1336
    :cond_1
    iget-object v1, p2, Lkhf;->j:Ljxw;

    iget-object v1, v1, Ljxw;->a:Ljava/lang/String;

    goto :goto_1

    .line 325
    :cond_2
    return-void
.end method
