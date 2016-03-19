.class final Lhzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhys;


# static fields
.field private static final a:Lhyu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lhzc;

    invoke-direct {v0}, Lhzc;-><init>()V

    sput-object v0, Lhzb;->a:Lhyu;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)Lhyt;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lhyt;

    sget-object v1, Lhzb;->a:Lhyu;

    invoke-direct {v0, p1, p2, v1}, Lhyt;-><init>(IILhyu;)V

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)Lhyt;
    .locals 7

    .prologue
    .line 33
    new-instance v1, Lhyt;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    int-to-long v4, v0

    sget-object v6, Lhzb;->a:Lhyu;

    invoke-direct/range {v1 .. v6}, Lhyt;-><init>(IIJLhyu;)V

    return-object v1
.end method

.method public a(Lhyt;Ljava/util/SortedSet;Lhyv;)Lhyt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhyt;",
            "Ljava/util/SortedSet",
            "<",
            "Lhyt;",
            ">;",
            "Lhyv;",
            ")",
            "Lhyt;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-interface {p2}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyt;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lhyt;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 46
    iget v0, p1, Lhyt;->b:I

    iget v1, p1, Lhyt;->a:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 47
    return-void
.end method
