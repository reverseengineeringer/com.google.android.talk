.class public Lhee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhec;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lhdy;

.field final c:Lhdz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhee;->a:Ljava/util/List;

    .line 2047
    new-instance v0, Lhdy;

    .line 2168
    invoke-direct {v0, p0}, Lhdy;-><init>(Lhee;)V

    .line 2047
    iput-object v0, p0, Lhee;->b:Lhdy;

    .line 2048
    new-instance v0, Lhdz;

    invoke-direct {v0, p0}, Lhdz;-><init>(Lhee;)V

    iput-object v0, p0, Lhee;->c:Lhdz;

    .line 2049
    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->start()V

    .line 2050
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 3056
    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->c()V

    .line 3057
    return-void
.end method

.method public a(Lhgn;)V
    .locals 3

    .prologue
    .line 5100
    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5101
    :cond_0
    const-string v0, "vclib"

    const-string v1, "Tried to notify frame on a dead GlManager, ignoring."

    .line 6089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 5107
    :goto_0
    return-void

    .line 5103
    :cond_1
    iget-object v0, p0, Lhee;->c:Lhdz;

    .line 5104
    invoke-virtual {v0}, Lhdz;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5105
    iget-object v1, p0, Lhee;->c:Lhdz;

    invoke-virtual {v1}, Lhdz;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Lhgn;J)V
    .locals 4

    .prologue
    .line 4086
    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4087
    :cond_0
    const-string v0, "vclib"

    const-string v1, "Tried to notify frame on a dead GlManager, ignoring."

    .line 5089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4093
    :goto_0
    return-void

    .line 4089
    :cond_1
    iget-object v0, p0, Lhee;->c:Lhdz;

    .line 4090
    invoke-virtual {v0}, Lhdz;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4091
    iget-object v1, p0, Lhee;->c:Lhdz;

    invoke-virtual {v1}, Lhdz;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public a(Lhla;)V
    .locals 3

    .prologue
    .line 7147
    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7148
    :cond_0
    const-string v0, "vclib"

    const-string v1, "Tried to remove rendering target on a dead GlManager, ignoring."

    .line 8089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 7166
    :goto_0
    return-void

    .line 7151
    :cond_1
    new-instance v0, Lhdw;

    invoke-direct {v0, p0, p1}, Lhdw;-><init>(Lhee;Lhla;)V

    invoke-virtual {p0, v0}, Lhee;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lhla;Lhgn;)V
    .locals 3

    .prologue
    .line 6116
    if-nez p2, :cond_0

    .line 6117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Invalid videoSource"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6120
    :cond_0
    invoke-virtual {p1}, Lhla;->b()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lhla;->b()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6121
    const-string v0, "vclib"

    const-string v1, "Asked to add a rendering target for an invalid surface."

    .line 7101
    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 6141
    :goto_0
    return-void

    .line 6125
    :cond_1
    new-instance v0, Lhdv;

    invoke-direct {v0, p0, p1, p2}, Lhdv;-><init>(Lhee;Lhla;Lhgn;)V

    invoke-virtual {p0, v0}, Lhee;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 1064
    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    :cond_0
    const-string v0, "vclib"

    const-string v1, "Tried to queue an event on a dead GlManager, ignoring."

    .line 1089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1069
    :goto_0
    return-void

    .line 1067
    :cond_1
    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method b(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 3073
    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3074
    :cond_0
    const-string v0, "vclib"

    const-string v1, "Tried to queue an event on a dead GlManager, ignoring."

    .line 3089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 3078
    :goto_0
    return-void

    .line 3076
    :cond_1
    iget-object v0, p0, Lhee;->c:Lhdz;

    invoke-virtual {v0}, Lhdz;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
