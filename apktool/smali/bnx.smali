.class final Lbnx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbpf;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 3313
    iput-object p1, p0, Lbnx;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 3343
    return-void
.end method

.method public a(Ljava/lang/String;Lbpa;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 3316
    invoke-static {p1}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3340
    :cond_0
    :goto_0
    return-void

    .line 3320
    :cond_1
    iget-object v3, p2, Lbpa;->a:Ljava/lang/String;

    .line 3322
    iget-object v0, p0, Lbnx;->a:Lbng;

    .line 4285
    iget-object v0, v0, Lbng;->ak:Lhty;

    .line 3322
    invoke-static {v3}, Lbrr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhty;->b(Ljava/lang/String;)V

    .line 3323
    iget-object v0, p0, Lbnx;->a:Lbng;

    .line 5285
    iget-object v6, v0, Lbng;->ak:Lhty;

    .line 3323
    new-instance v0, Lbrr;

    iget-object v1, p0, Lbnx;->a:Lbng;

    .line 6285
    iget-object v1, v1, Lbng;->context:Lill;

    .line 3323
    iget-object v2, p0, Lbnx;->a:Lbng;

    .line 7285
    iget-object v2, v2, Lbng;->at:Lbfd;

    move v5, v4

    .line 3323
    invoke-direct/range {v0 .. v5}, Lbrr;-><init>(Landroid/content/Context;Lbfd;Ljava/lang/String;ZI)V

    invoke-virtual {v6, v0}, Lhty;->a(Lhtu;)V

    .line 3327
    iget-object v0, p0, Lbnx;->a:Lbng;

    .line 8285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 3327
    if-eqz v0, :cond_2

    iget-object v0, p0, Lbnx;->a:Lbng;

    .line 9285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 3328
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 9319
    sget-object v1, Ldvp;->v:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v0

    .line 3328
    if-eqz v0, :cond_2

    .line 3329
    iget-object v0, p0, Lbnx;->a:Lbng;

    .line 10285
    iget-object v0, v0, Lbng;->ak:Lhty;

    .line 3329
    new-instance v1, Lbqv;

    iget-object v2, p0, Lbnx;->a:Lbng;

    .line 11285
    iget-object v2, v2, Lbng;->context:Lill;

    .line 3330
    iget-object v5, p0, Lbnx;->a:Lbng;

    .line 12285
    iget-object v5, v5, Lbng;->at:Lbfd;

    .line 3330
    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    invoke-direct {v1, v2, v3, v5, v4}, Lbqv;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 3329
    invoke-virtual {v0, v1}, Lhty;->a(Lhtu;)V

    .line 3334
    :cond_2
    iget-object v0, p0, Lbnx;->a:Lbng;

    .line 13285
    iget v0, v0, Lbng;->aZ:I

    .line 3334
    if-eq v0, v7, :cond_0

    .line 3336
    iget-object v0, p0, Lbnx;->a:Lbng;

    .line 14285
    iget-object v0, v0, Lbng;->ak:Lhty;

    .line 3336
    invoke-static {v3}, Lbrs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhty;->b(Ljava/lang/String;)V

    .line 3337
    iget-object v0, p0, Lbnx;->a:Lbng;

    .line 15285
    iget-object v0, v0, Lbng;->ak:Lhty;

    .line 3337
    new-instance v1, Lbrs;

    iget-object v2, p0, Lbnx;->a:Lbng;

    .line 16285
    iget-object v2, v2, Lbng;->context:Lill;

    .line 3338
    iget-object v4, p0, Lbnx;->a:Lbng;

    .line 17285
    iget-object v4, v4, Lbng;->at:Lbfd;

    .line 3338
    invoke-direct {v1, v2, v4, v3, v7}, Lbrs;-><init>(Landroid/content/Context;Lbfd;Ljava/lang/String;I)V

    .line 3337
    invoke-virtual {v0, v1}, Lhty;->a(Lhtu;)V

    goto :goto_0
.end method
