.class public final Lbau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lazn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ldlv;
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbap;->a(ZLjava/lang/String;)Lbap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 37
    const-class v0, Lhpu;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v2

    .line 38
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    move v0, v1

    .line 59
    :goto_0
    return v0

    .line 1034
    :cond_0
    const-class v0, Lhpz;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, v2}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v3, "callerid_promo_shown"

    invoke-interface {v0, v3, v1}, Lhqb;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 46
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Laal;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 47
    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "connectivity"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 53
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2024
    const-string v0, "babel_dialer_disable_promos_for_callerid"

    invoke-static {p1, v0, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 59
    invoke-static {p1, v2}, Laal;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 64
    sget v0, Laen;->hu:I

    return v0
.end method
