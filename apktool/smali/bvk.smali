.class public final Lbvk;
.super Lecg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lecg",
        "<",
        "Lbvm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lbvm;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lecg;-><init>(Leff;)V

    .line 28
    return-void
.end method


# virtual methods
.method public E_()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public F_()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lbfd;I)Ldom;
    .locals 2

    .prologue
    .line 32
    new-instance v1, Lbvl;

    iget-object v0, p0, Lbvk;->a:Leff;

    check-cast v0, Lbvm;

    invoke-direct {v1, p1, p2, v0}, Lbvl;-><init>(Lbfd;ILbvm;)V

    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "event_queue"

    return-object v0
.end method

.method protected a(ILdvn;)V
    .locals 5

    .prologue
    .line 37
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 38
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    const/16 v2, 0x71

    if-ne v0, v2, :cond_1

    .line 39
    const-string v2, "Babel"

    const-string v3, "Conversation not found for "

    iget-object v0, p0, Lbvk;->a:Leff;

    check-cast v0, Lbvm;

    invoke-virtual {v0}, Lbvm;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lbvk;->a:Leff;

    check-cast v0, Lbvm;

    invoke-virtual {v0}, Lbvm;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f(Lbfd;Ljava/lang/String;)I

    .line 50
    :goto_1
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lbvk;->a:Leff;

    check-cast v0, Lbvm;

    .line 44
    invoke-virtual {v0}, Lbvm;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lbvk;->a:Leff;

    check-cast v0, Lbvm;

    .line 45
    invoke-virtual {v0}, Lbvm;->a()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v3

    .line 42
    invoke-static {v1, v2, v0, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 47
    const-class v2, Lcyh;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyh;

    .line 48
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lcyh;->c(I)V

    goto :goto_1
.end method

.method public a(Lcwi;)Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 3

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lecg;->a(Lcwk;Ldvn;)Z

    move-result v0

    .line 60
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_0

    .line 61
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v1

    const/16 v2, 0x66

    if-eq v1, v2, :cond_0

    .line 62
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 65
    :cond_1
    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 70
    const-string v1, "babel_pending_message_failure_duration"

    const-wide/32 v2, 0x124f80

    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method
