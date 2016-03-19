.class public abstract Lzu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Laao;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lzv;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5139
    new-instance v0, Lzv;

    invoke-direct {v0}, Lzv;-><init>()V

    iput-object v0, p0, Lzu;->a:Lzv;

    .line 5140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzu;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 5268
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Laao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 5555
    iget-object v0, p0, Lzu;->a:Lzv;

    invoke-virtual {v0, p1, p2}, Lzv;->a(II)V

    .line 5556
    return-void
.end method

.method public abstract a(Laao;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public a(Lzw;)V
    .locals 1

    .prologue
    .line 5426
    iget-object v0, p0, Lzu;->a:Lzv;

    invoke-virtual {v0, p1}, Lzv;->registerObserver(Ljava/lang/Object;)V

    .line 5427
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 6406
    iget-object v0, p0, Lzu;->a:Lzv;

    invoke-virtual {v0}, Lzv;->a()Z

    move-result v0

    .line 5280
    if-eqz v0, :cond_0

    .line 5281
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5284
    :cond_0
    iput-boolean p1, p0, Lzu;->b:Z

    .line 5285
    return-void
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 5296
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(II)V
    .locals 1

    .prologue
    .line 5636
    iget-object v0, p0, Lzu;->a:Lzv;

    invoke-virtual {v0, p1, p2}, Lzv;->b(II)V

    .line 5637
    return-void
.end method

.method public b(Laao;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5217
    invoke-virtual {p0, p1, p2}, Lzu;->a(Laao;I)V

    .line 5218
    return-void
.end method

.method public b(Lzw;)V
    .locals 1

    .prologue
    .line 5440
    iget-object v0, p0, Lzu;->a:Lzv;

    invoke-virtual {v0, p1}, Lzv;->unregisterObserver(Ljava/lang/Object;)V

    .line 5441
    return-void
.end method
