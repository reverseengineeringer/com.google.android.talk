.class final Lbvv;
.super Lecg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lecg",
        "<",
        "Lbvx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lbvx;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lecg;-><init>(Leff;)V

    .line 45
    return-void
.end method


# virtual methods
.method public E_()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public F_()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lbfd;I)Ldom;
    .locals 6

    .prologue
    .line 53
    iget-object v0, p0, Lbvv;->a:Leff;

    check-cast v0, Lbvx;

    invoke-virtual {v0}, Lbvx;->g()Lksf;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lbkr;->b:Lbkr;

    const/4 v2, 0x0

    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkq;

    iget-object v0, v0, Lbkq;->c:Lbkr;

    invoke-virtual {v1, v0}, Lbkr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Lbvq;

    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 57
    sget-object v3, Lefh;->a:Lefh;

    iget-object v5, p0, Lbvv;->a:Leff;

    check-cast v5, Lbvx;

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lbvq;-><init>(Landroid/content/Context;Lbfd;Lefh;ILbvx;)V

    .line 60
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lbvq;

    .line 2036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 60
    sget-object v3, Lefh;->b:Lefh;

    iget-object v5, p0, Lbvv;->a:Leff;

    check-cast v5, Lbvx;

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lbvq;-><init>(Landroid/content/Context;Lbfd;Lefh;ILbvx;)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "event_queue"

    return-object v0
.end method

.method public a(ILdvn;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    .line 84
    iget-object v0, p0, Lbvv;->a:Leff;

    check-cast v0, Lbvx;

    invoke-virtual {v0}, Lbvx;->b()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    .line 2156
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x71

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    .line 85
    :goto_0
    if-eqz v0, :cond_3

    .line 86
    invoke-static {v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f(Lbfd;Ljava/lang/String;)I

    .line 96
    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/16 v0, 0x5f3

    invoke-static {v2, v0}, Laal;->a(Lbfd;I)V

    .line 99
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v1

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x5

    .line 3219
    new-instance v0, Lcsn;

    .line 4040
    invoke-direct {v0}, Lcsn;-><init>()V

    .line 103
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v5

    invoke-virtual {v0, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v5

    iget-object v0, p0, Lbvv;->a:Leff;

    check-cast v0, Lbvx;

    .line 104
    invoke-virtual {v0}, Lbvx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcsn;->b(Ljava/lang/String;)Lcsn;

    move-result-object v5

    iget-object v0, p0, Lbvv;->a:Leff;

    check-cast v0, Lbvx;

    .line 105
    invoke-virtual {v0}, Lbvx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v0

    .line 98
    invoke-static {v1, v2, v3, v4, v0}, Laen;->a(IJILcsn;)V

    .line 108
    :cond_0
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    const/16 v1, 0x79

    if-eq v0, v1, :cond_1

    .line 4161
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbvw;

    invoke-direct {v1, p0}, Lbvw;-><init>(Lbvv;)V

    .line 4162
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 2156
    goto :goto_0

    .line 88
    :cond_3
    iget-object v0, p0, Lbvv;->a:Leff;

    check-cast v0, Lbvx;

    .line 91
    invoke-virtual {v0}, Lbvx;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_4

    .line 92
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    .line 88
    :goto_2
    invoke-static {v2, v3, v4, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;I)I

    .line 3036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 93
    const-class v1, Lcyh;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyh;

    .line 94
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcyh;->c(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 92
    goto :goto_2
.end method

.method public a(Lcwi;)Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 74
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 75
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lecg;->a(Lcwk;Ldvn;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lbvv;->a:Leff;

    check-cast v0, Lbvx;

    invoke-virtual {v0}, Lbvx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 67
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lbvv;->a:Leff;

    check-cast v0, Lbvx;

    invoke-virtual {v0}, Lbvx;->f()Lksf;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    move-object v0, v1

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 141
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefx;

    iget-object v0, v0, Lefx;->b:Ljava/lang/String;

    .line 142
    invoke-static {v0}, Laal;->u(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 145
    goto :goto_0
.end method
