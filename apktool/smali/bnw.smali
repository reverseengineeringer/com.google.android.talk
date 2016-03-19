.class final Lbnw;
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
    .line 3260
    iput-object p1, p0, Lbnw;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 3298
    return-void
.end method

.method public a(Ljava/lang/String;Lbpa;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 3263
    iget-object v0, p0, Lbnw;->a:Lbng;

    .line 4285
    iget-object v0, v0, Lbng;->aD:Ljava/lang/String;

    .line 3263
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3295
    :cond_0
    :goto_0
    return-void

    .line 3267
    :cond_1
    invoke-static {p1}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3271
    iget-object v0, p0, Lbnw;->a:Lbng;

    .line 5285
    iget-object v0, v0, Lbng;->context:Lill;

    .line 3273
    const-string v1, "babel_focustimeoutsecs"

    const/16 v2, 0x12c

    .line 3272
    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 3279
    iget-object v0, p0, Lbnw;->a:Lbng;

    .line 6285
    iget-object v0, v0, Lbng;->ak:Lhty;

    .line 3279
    iget-object v1, p2, Lbpa;->a:Ljava/lang/String;

    invoke-static {v1}, Lbrr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhty;->b(Ljava/lang/String;)V

    .line 3280
    iget-object v0, p0, Lbnw;->a:Lbng;

    .line 7285
    iget-object v6, v0, Lbng;->ak:Lhty;

    .line 3280
    new-instance v0, Lbrr;

    iget-object v1, p0, Lbnw;->a:Lbng;

    .line 8285
    iget-object v1, v1, Lbng;->context:Lill;

    .line 3281
    iget-object v2, p0, Lbnw;->a:Lbng;

    .line 9285
    iget-object v2, v2, Lbng;->at:Lbfd;

    .line 3281
    iget-object v3, p2, Lbpa;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lbrr;-><init>(Landroid/content/Context;Lbfd;Ljava/lang/String;ZI)V

    .line 3280
    invoke-virtual {v6, v0}, Lhty;->a(Lhtu;)V

    .line 3285
    iget-object v0, p0, Lbnw;->a:Lbng;

    .line 10285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 3285
    if-eqz v0, :cond_2

    iget-object v0, p0, Lbnw;->a:Lbng;

    .line 11285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 3286
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 11319
    sget-object v1, Ldvp;->v:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v0

    .line 3286
    if-eqz v0, :cond_2

    .line 3287
    iget-object v0, p0, Lbnw;->a:Lbng;

    .line 12285
    iget-object v0, v0, Lbng;->ak:Lhty;

    .line 3287
    new-instance v1, Lbqv;

    iget-object v2, p0, Lbnw;->a:Lbng;

    .line 13285
    iget-object v2, v2, Lbng;->context:Lill;

    .line 3288
    iget-object v3, p2, Lbpa;->a:Ljava/lang/String;

    iget-object v5, p0, Lbnw;->a:Lbng;

    .line 14285
    iget-object v5, v5, Lbng;->at:Lbfd;

    .line 3288
    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v1, v2, v3, v5, v6}, Lbqv;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 3287
    invoke-virtual {v0, v1}, Lhty;->a(Lhtu;)V

    .line 3292
    :cond_2
    iget v0, p2, Lbpa;->b:I

    if-ne v0, v4, :cond_0

    .line 3293
    iget-object v0, p0, Lbnw;->a:Lbng;

    .line 15285
    iput-object p1, v0, Lbng;->aD:Ljava/lang/String;

    goto :goto_0
.end method
