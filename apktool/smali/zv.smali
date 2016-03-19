.class public final Lzv;
.super Landroid/database/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lzw;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9231
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .prologue
    .line 10255
    iget-object v0, p0, Lzv;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 10256
    iget-object v0, p0, Lzv;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzw;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2}, Lzw;->a(IILjava/lang/Object;)V

    .line 10255
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 9248
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 9233
    iget-object v0, p0, Lzv;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(II)V
    .locals 2

    .prologue
    .line 9265
    iget-object v0, p0, Lzv;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 9266
    iget-object v0, p0, Lzv;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzw;

    invoke-virtual {v0, p1, p2}, Lzw;->a(II)V

    .line 9265
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 9268
    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 2

    .prologue
    .line 9275
    iget-object v0, p0, Lzv;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 9276
    iget-object v0, p0, Lzv;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzw;

    invoke-virtual {v0, p1, p2}, Lzw;->b(II)V

    .line 9275
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 9278
    :cond_0
    return-void
.end method
