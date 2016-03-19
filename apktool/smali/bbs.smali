.class final Lbbs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqh;


# instance fields
.field final synthetic a:Lbbq;


# direct methods
.method constructor <init>(Lbbq;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lbbs;->a:Lbbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "cmm-signed-out2"

    return-object v0
.end method

.method public a(Landroid/content/Context;Lhqe;)V
    .locals 3

    .prologue
    .line 81
    const-string v0, "effective_gaia_id"

    invoke-interface {p2, v0}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "is_business_features_enabled"

    .line 82
    invoke-interface {p2, v0}, Lhqe;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lbbs;->a:Lbbq;

    .line 1022
    iget-object v0, v0, Lbbq;->a:Lawm;

    .line 84
    invoke-interface {v0, p2}, Lawm;->a(Lhqb;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "logged_in"

    .line 85
    invoke-interface {p2, v0}, Lhqe;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lbbs;->a:Lbbq;

    .line 2022
    iget-object v0, v0, Lbbq;->b:Lhpz;

    .line 89
    const-string v1, "account_name"

    .line 90
    invoke-interface {p2, v1}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "effective_gaia_id"

    .line 91
    invoke-interface {p2, v2}, Lhqe;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-interface {v0, v1, v2}, Lhpz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 92
    iget-object v1, p0, Lbbs;->a:Lbbq;

    .line 3022
    iget-object v1, v1, Lbbq;->a:Lawm;

    .line 92
    invoke-interface {v1, v0}, Lawm;->b(I)V

    .line 95
    :cond_0
    return-void
.end method
