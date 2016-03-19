.class public abstract Lbir;
.super Lzu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lbis;",
        "C::",
        "Landroid/database/Cursor;",
        ">",
        "Lzu;"
    }
.end annotation


# instance fields
.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TP;>;"
        }
    .end annotation
.end field

.field d:I

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbir;-><init>(Landroid/content/Context;B)V

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lzu;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lbir;->d:I

    .line 31
    iput-object p1, p0, Lbir;->e:Landroid/content/Context;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbir;->c:Ljava/util/List;

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbir;->a(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lbir;->d:I

    return v0
.end method

.method public a(I)I
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lbir;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbis;

    .line 103
    invoke-virtual {v0}, Lbis;->c()I

    move-result v2

    .line 104
    if-ge p1, v2, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lbis;->a(I)I

    move-result v0

    return v0

    .line 107
    :cond_0
    sub-int/2addr p1, v2

    .line 108
    goto :goto_0

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public a(ILbis;)Lbis;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;)TP;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lbir;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    const/4 p2, 0x0

    .line 58
    :cond_0
    :goto_0
    return-object p2

    .line 49
    :cond_1
    iget-object v0, p0, Lbir;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 51
    invoke-virtual {p2}, Lbis;->c()I

    move-result v0

    .line 52
    if-lez v0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lbir;->d(I)I

    move-result v1

    .line 54
    iget v2, p0, Lbir;->d:I

    add-int/2addr v2, v0

    iput v2, p0, Lbir;->d:I

    .line 55
    invoke-virtual {p0, v1, v0}, Lbir;->b(II)V

    goto :goto_0
.end method

.method public a(Lbis;)Lbis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)TP;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lbir;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lbir;->a(ILbis;)Lbis;

    move-result-object v0

    return-object v0
.end method

.method public a(Laao;I)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lbir;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbis;

    .line 116
    invoke-virtual {v0}, Lbis;->c()I

    move-result v2

    .line 117
    if-ge p2, v2, :cond_0

    .line 118
    invoke-virtual {v0, p1, p2}, Lbis;->a(Laao;I)V

    .line 119
    return-void

    .line 121
    :cond_0
    sub-int/2addr p2, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 129
    int-to-long v0, p1

    return-wide v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbir;->e:Landroid/content/Context;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lbir;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(I)Lbis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TP;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lbir;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbis;

    return-object v0
.end method

.method public d(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    .line 92
    :goto_0
    if-ge v1, p1, :cond_0

    .line 93
    iget-object v0, p0, Lbir;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbis;

    .line 94
    invoke-virtual {v0}, Lbis;->c()I

    move-result v0

    add-int/2addr v2, v0

    .line 92
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_0
    return v2
.end method
