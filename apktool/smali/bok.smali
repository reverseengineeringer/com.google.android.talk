.class final Lbok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbpf;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbnc;


# direct methods
.method constructor <init>(Lbnc;I)V
    .locals 0

    .prologue
    .line 5496
    iput-object p1, p0, Lbok;->b:Lbnc;

    iput p2, p0, Lbok;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 5522
    return-void
.end method

.method public a(Ljava/lang/String;Lbpa;)V
    .locals 6

    .prologue
    .line 5500
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5501
    invoke-static {p1}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5502
    iget-object v0, p0, Lbok;->b:Lbnc;

    iget-object v0, v0, Lbnc;->a:Lbng;

    iget v1, p0, Lbok;->a:I

    .line 6285
    iput v1, v0, Lbng;->aZ:I

    .line 5505
    iget-object v0, p0, Lbok;->b:Lbnc;

    iget-object v0, v0, Lbnc;->a:Lbng;

    .line 7285
    iget-object v0, v0, Lbng;->ak:Lhty;

    .line 5505
    iget-object v1, p2, Lbpa;->a:Ljava/lang/String;

    invoke-static {v1}, Lbrs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhty;->b(Ljava/lang/String;)V

    .line 5506
    iget-object v0, p0, Lbok;->b:Lbnc;

    iget-object v0, v0, Lbnc;->a:Lbng;

    .line 8285
    iget-object v0, v0, Lbng;->ak:Lhty;

    .line 5506
    new-instance v1, Lbrs;

    iget-object v2, p0, Lbok;->b:Lbnc;

    iget-object v2, v2, Lbnc;->a:Lbng;

    .line 9285
    iget-object v2, v2, Lbng;->context:Lill;

    .line 5507
    iget-object v3, p0, Lbok;->b:Lbnc;

    iget-object v3, v3, Lbnc;->a:Lbng;

    .line 10285
    iget-object v3, v3, Lbng;->at:Lbfd;

    .line 5507
    iget-object v4, p2, Lbpa;->a:Ljava/lang/String;

    iget v5, p0, Lbok;->a:I

    invoke-direct {v1, v2, v3, v4, v5}, Lbrs;-><init>(Landroid/content/Context;Lbfd;Ljava/lang/String;I)V

    .line 5506
    invoke-virtual {v0, v1}, Lhty;->a(Lhtu;)V

    .line 5511
    iget-object v0, p0, Lbok;->b:Lbnc;

    iget-object v0, v0, Lbnc;->a:Lbng;

    .line 11285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 5511
    if-eqz v0, :cond_0

    iget-object v0, p0, Lbok;->b:Lbnc;

    iget-object v0, v0, Lbnc;->a:Lbng;

    .line 12285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 5512
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 12319
    sget-object v1, Ldvp;->v:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v0

    .line 5512
    if-eqz v0, :cond_0

    .line 5513
    iget-object v0, p0, Lbok;->b:Lbnc;

    iget-object v0, v0, Lbnc;->a:Lbng;

    .line 13285
    iget-object v0, v0, Lbng;->ak:Lhty;

    .line 5513
    new-instance v1, Lbqv;

    iget-object v2, p0, Lbok;->b:Lbnc;

    iget-object v2, v2, Lbnc;->a:Lbng;

    .line 14285
    iget-object v2, v2, Lbng;->context:Lill;

    .line 5515
    iget-object v3, p2, Lbpa;->a:Ljava/lang/String;

    iget-object v4, p0, Lbok;->b:Lbnc;

    iget-object v4, v4, Lbnc;->a:Lbng;

    .line 15285
    iget-object v4, v4, Lbng;->at:Lbfd;

    .line 5515
    invoke-virtual {v4}, Lbfd;->g()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lbqv;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 5513
    invoke-virtual {v0, v1}, Lhty;->a(Lhtu;)V

    .line 5519
    :cond_0
    return-void
.end method
