.class public final Lmqj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lmqj;->a:Landroid/net/ConnectivityManager;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lmqj;->a:Landroid/net/ConnectivityManager;

    .line 68
    return-void
.end method

.method private static a(Landroid/net/NetworkInfo;)Lmqq;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 97
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    new-instance v0, Lmqq;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmqq;-><init>(ZII)V

    .line 100
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lmqq;

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lmqq;-><init>(ZII)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lmqq;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmqj;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lmqj;->a(Landroid/net/NetworkInfo;)Lmqq;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Network;)Lmqq;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmqj;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lmqj;->a(Landroid/net/NetworkInfo;)Lmqq;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lmqj;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 130
    return-void
.end method

.method public a(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lmqj;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 121
    return-void
.end method

.method public b(Landroid/net/Network;)Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lmqj;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()[Landroid/net/Network;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lmqj;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 8

    .prologue
    const/4 v0, -0x1

    .line 143
    iget-object v1, p0, Lmqj;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 144
    if-nez v2, :cond_1

    .line 166
    :cond_0
    return v0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lmqj;->b()[Landroid/net/Network;

    move-result-object v3

    .line 149
    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 150
    invoke-virtual {p0, v5}, Lmqj;->b(Landroid/net/Network;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    iget-object v6, p0, Lmqj;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 154
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 1716
    invoke-virtual {v5}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 149
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
