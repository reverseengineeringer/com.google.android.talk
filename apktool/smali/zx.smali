.class public abstract Lzx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lzy;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "La;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 9575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9631
    const/4 v0, 0x0

    iput-object v0, p0, Lzx;->a:Lzy;

    .line 9632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzx;->b:Ljava/util/ArrayList;

    .line 9635
    iput-wide v2, p0, Lzx;->c:J

    .line 9636
    iput-wide v2, p0, Lzx;->d:J

    .line 9637
    iput-wide v4, p0, Lzx;->e:J

    .line 9638
    iput-wide v4, p0, Lzx;->f:J

    .line 10180
    return-void
.end method

.method public static c(Laao;)I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 11126
    iget v0, p0, Laao;->i:I

    .line 9936
    and-int/lit8 v0, v0, 0xe

    .line 9937
    invoke-virtual {p0}, Laao;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9938
    const/4 v0, 0x4

    .line 9947
    :cond_0
    :goto_0
    return v0

    .line 9940
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    .line 11380
    iget v3, p0, Laao;->c:I

    .line 12362
    iget-object v1, p0, Laao;->o:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_2

    move v1, v2

    .line 9943
    :goto_1
    if-eq v3, v2, :cond_0

    if-eq v1, v2, :cond_0

    if-eq v3, v1, :cond_0

    .line 9944
    or-int/lit16 v0, v0, 0x800

    goto :goto_0

    .line 12365
    :cond_2
    iget-object v1, p0, Laao;->o:Landroid/support/v7/widget/RecyclerView;

    .line 13621
    const/16 v4, 0x20c

    invoke-virtual {p0, v4}, Laao;->a(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Laao;->l()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v1, v2

    .line 13624
    goto :goto_1

    .line 13626
    :cond_4
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->c:Lzn;

    iget v4, p0, Laao;->b:I

    invoke-virtual {v1, v4}, Lzn;->c(I)I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 9646
    iget-wide v0, p0, Lzx;->e:J

    return-wide v0
.end method

.method public a(Laao;)Lzz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laao;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lzz;"
        }
    .end annotation

    .prologue
    .line 9760
    invoke-virtual {p0}, Lzx;->i()Lzz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzz;->a(Laao;)Lzz;

    move-result-object v0

    return-object v0
.end method

.method public a(Lzy;)V
    .locals 0

    .prologue
    .line 9721
    iput-object p1, p0, Lzx;->a:Lzy;

    .line 9722
    return-void
.end method

.method public abstract a(Laao;Laao;Lzz;Lzz;)Z
.end method

.method public abstract a(Laao;Lzz;Lzz;)Z
.end method

.method public b()J
    .locals 2

    .prologue
    .line 9664
    iget-wide v0, p0, Lzx;->c:J

    return-wide v0
.end method

.method public b(Laao;)Lzz;
    .locals 1

    .prologue
    .line 9789
    invoke-virtual {p0}, Lzx;->i()Lzz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzz;->a(Laao;)Lzz;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Laao;Lzz;Lzz;)Z
.end method

.method public c()J
    .locals 2

    .prologue
    .line 9682
    iget-wide v0, p0, Lzx;->d:J

    return-wide v0
.end method

.method public abstract c(Laao;Lzz;Lzz;)Z
.end method

.method public d()J
    .locals 2

    .prologue
    .line 9700
    iget-wide v0, p0, Lzx;->f:J

    return-wide v0
.end method

.method public abstract d(Laao;)V
.end method

.method public abstract e()V
.end method

.method public final e(Laao;)V
    .locals 1

    .prologue
    .line 10021
    iget-object v0, p0, Lzx;->a:Lzy;

    if-eqz v0, :cond_0

    .line 10022
    iget-object v0, p0, Lzx;->a:Lzy;

    invoke-virtual {v0, p1}, Lzy;->a(Laao;)V

    .line 10024
    :cond_0
    return-void
.end method

.method public abstract f()V
.end method

.method public f(Laao;)Z
    .locals 1

    .prologue
    .line 10120
    const/4 v0, 0x1

    return v0
.end method

.method public abstract g()Z
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 10128
    iget-object v0, p0, Lzx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 10129
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 10130
    iget-object v2, p0, Lzx;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10132
    :cond_0
    iget-object v0, p0, Lzx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10133
    return-void
.end method

.method public i()Lzz;
    .locals 1

    .prologue
    .line 10145
    new-instance v0, Lzz;

    invoke-direct {v0}, Lzz;-><init>()V

    return-object v0
.end method
