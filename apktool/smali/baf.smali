.class final Lbaf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbwl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lbwm;

    invoke-direct {v0}, Lbwm;-><init>()V

    const-string v1, "callerid"

    .line 53
    invoke-virtual {v0, v1}, Lbwm;->a(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const-string v1, "Enables CallerId feature (only beneficial for users that don\'t have a Google Voice phone number)"

    .line 54
    invoke-virtual {v0, v1}, Lbwm;->b(Ljava/lang/String;)Lbwm;

    move-result-object v0

    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Lbwm;->a(Z)Lbwm;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lbwm;->a()Lbwl;

    move-result-object v0

    iput-object v0, p0, Lbaf;->a:Lbwl;

    .line 59
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lazm;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lbaf;->a:Lbwl;

    new-instance v1, Lbah;

    invoke-direct {v1}, Lbah;-><init>()V

    invoke-interface {v0, p1, v1}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazm;

    return-object v0
.end method

.method public a()[Lbwl;
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Lbwl;

    const/4 v1, 0x0

    iget-object v2, p0, Lbaf;->a:Lbwl;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public b(Landroid/content/Context;)[Lhvv;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lbaf;->a:Lbwl;

    const-class v1, Lhvv;

    new-instance v2, Lazz;

    invoke-direct {v2}, Lazz;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhvv;

    return-object v0
.end method

.method public c(Landroid/content/Context;)[Ldwa;
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lbaf;->a:Lbwl;

    const-class v1, Ldwa;

    new-instance v2, Lbbb;

    invoke-direct {v2, p1}, Lbbb;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1, v1, v2}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldwa;

    return-object v0
.end method

.method public d(Landroid/content/Context;)Lazn;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lbaf;->a:Lbwl;

    new-instance v1, Lbau;

    invoke-direct {v1}, Lbau;-><init>()V

    invoke-interface {v0, p1, v1}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazn;

    return-object v0
.end method

.method public e(Landroid/content/Context;)Ldje;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lbaf;->a:Lbwl;

    new-instance v1, Lbbe;

    invoke-direct {v1}, Lbbe;-><init>()V

    invoke-interface {v0, p1, v1}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldje;

    return-object v0
.end method

.method public f(Landroid/content/Context;)Lazk;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lbaf;->a:Lbwl;

    new-instance v1, Lazt;

    invoke-direct {v1, p1}, Lazt;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1, v1}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazk;

    return-object v0
.end method

.method public g(Landroid/content/Context;)Lazl;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lbaf;->a:Lbwl;

    new-instance v1, Lbaa;

    invoke-direct {v1}, Lbaa;-><init>()V

    invoke-interface {v0, p1, v1}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazl;

    return-object v0
.end method

.method public h(Landroid/content/Context;)Lazj;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lbaf;->a:Lbwl;

    new-instance v1, Lazp;

    invoke-direct {v1}, Lazp;-><init>()V

    invoke-interface {v0, p1, v1}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazj;

    return-object v0
.end method

.method public i(Landroid/content/Context;)[Ldxj;
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lbaf;->a:Lbwl;

    const-class v1, Ldxj;

    new-instance v2, Lbbc;

    invoke-direct {v2, p1}, Lbbc;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1, v1, v2}, Lbwl;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldxj;

    return-object v0
.end method
