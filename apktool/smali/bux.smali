.class final Lbux;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhv;


# instance fields
.field final synthetic a:Lbuz;

.field final synthetic b:Lbuw;


# direct methods
.method constructor <init>(Lbuw;Lbuz;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lbux;->b:Lbuw;

    iput-object p2, p0, Lbux;->a:Lbuz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leys;Lexs;ZLbhs;Z)V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lbux;->b:Lbuw;

    iget-object v0, v0, Lbuw;->b:Lbut;

    .line 1059
    iget-object v0, v0, Lbut;->f:Ljava/util/Map;

    .line 377
    iget-object v1, p0, Lbux;->a:Lbuz;

    iget-object v1, v1, Lbuz;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    if-nez p3, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p4}, Lbhs;->n()Leyg;

    move-result-object v0

    invoke-virtual {v0}, Leyg;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lbux;->a:Lbuz;

    invoke-virtual {p4}, Lbhs;->n()Leyg;

    move-result-object v1

    invoke-virtual {v1}, Leyg;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbuz;->f:Ljava/lang/String;

    .line 386
    :cond_2
    iget-object v0, p0, Lbux;->a:Lbuz;

    iget-object v0, v0, Lbuz;->g:Lbuy;

    if-eqz v0, :cond_3

    .line 388
    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p1}, Leys;->b()V

    goto :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lbux;->a:Lbuz;

    new-instance v1, Lbuy;

    iget-object v2, p0, Lbux;->b:Lbuw;

    .line 1511
    invoke-direct {v1, v2}, Lbuy;-><init>(Lbuw;)V

    .line 394
    iput-object v1, v0, Lbuz;->g:Lbuy;

    .line 395
    iget-object v0, p0, Lbux;->a:Lbuz;

    iget-object v0, v0, Lbuz;->g:Lbuy;

    iput-object p1, v0, Lbuy;->b:Leys;

    .line 396
    if-eqz p2, :cond_4

    .line 398
    iget-object v0, p0, Lbux;->a:Lbuz;

    iget-object v0, v0, Lbuz;->g:Lbuy;

    new-instance v1, Lfcd;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lfcd;-><init>(Lexs;)V

    iput-object v1, v0, Lbuy;->a:Lfcd;

    .line 399
    iget-object v0, p0, Lbux;->a:Lbuz;

    iget-object v0, v0, Lbuz;->g:Lbuy;

    iget-object v0, v0, Lbuy;->a:Lfcd;

    invoke-virtual {v0}, Lfcd;->d()V

    .line 400
    iget-object v0, p0, Lbux;->a:Lbuz;

    iget-object v0, v0, Lbuz;->g:Lbuy;

    iget-object v0, v0, Lbuy;->a:Lfcd;

    invoke-virtual {v0, p2}, Lfcd;->a(Lexs;)V

    .line 403
    :cond_4
    iget-object v0, p0, Lbux;->b:Lbuw;

    iget-object v1, p0, Lbux;->a:Lbuz;

    .line 2292
    invoke-virtual {v0, v1}, Lbuw;->a(Lbuz;)V

    goto :goto_0
.end method
