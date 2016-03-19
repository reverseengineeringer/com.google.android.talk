.class final Ldmf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbwl;

.field private b:Ldmj;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lbwm;

    invoke-direct {v0}, Lbwm;-><init>()V

    const-string v1, "promoframework"

    .line 23
    invoke-virtual {v0, v1}, Lbwm;->a(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const-string v1, "Module that hosts the promo/OOB framework."

    .line 24
    invoke-virtual {v0, v1}, Lbwm;->b(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lbwm;->a(Z)Lbwm;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lbwm;->a()Lbwl;

    move-result-object v0

    iput-object v0, p0, Ldmf;->a:Lbwl;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ldmb;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Ldmf;->a:Lbwl;

    new-instance v1, Ldmh;

    invoke-direct {v1}, Ldmh;-><init>()V

    invoke-interface {v0, p1, v1}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldmb;

    return-object v0
.end method

.method public a()[Lbwl;
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Lbwl;

    const/4 v1, 0x0

    iget-object v2, p0, Ldmf;->a:Lbwl;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ldlt;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Ldmf;->a:Lbwl;

    new-instance v1, Ldmc;

    invoke-direct {v1}, Ldmc;-><init>()V

    invoke-interface {v0, p1, v1}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlt;

    return-object v0
.end method

.method public b()Ldmj;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ldmf;->b:Ldmj;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ldmj;

    invoke-direct {v0}, Ldmj;-><init>()V

    iput-object v0, p0, Ldmf;->b:Ldmj;

    .line 51
    :cond_0
    iget-object v0, p0, Ldmf;->b:Ldmj;

    return-object v0
.end method
