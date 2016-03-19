.class final Lhyq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private final a:Lhyw;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhyr;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lhzj;Lhyw;II)V
    .locals 3

    .prologue
    const v2, 0x3fa66666    # 1.3f

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lhyq;->b:Ljava/util/List;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhyq;->c:Z

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lhyq;->d:I

    .line 52
    iput-object p2, p0, Lhyq;->a:Lhyw;

    .line 54
    int-to-float v0, p3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p1, p3, v0}, Lhyq;->a(Lhzj;II)Lhyr;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lhyq;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    int-to-float v0, p3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p1, v0, p3}, Lhyq;->a(Lhzj;II)Lhyr;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    iget-object v1, p0, Lhyq;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    iget-object v0, p0, Lhyq;->b:Ljava/util/List;

    new-instance v1, Lhyr;

    const/16 v2, 0xc

    invoke-direct {v1, p4, p4, v2}, Lhyr;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method private static a(Lhzj;II)Lhyr;
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lhzj;->c:I

    .line 1124
    mul-int v1, p1, p2

    shl-int/lit8 v1, v1, 0x2

    .line 73
    mul-int/lit8 v1, v1, 0x3

    div-int v1, v0, v1

    .line 75
    const/4 v0, 0x0

    .line 76
    if-lez v1, :cond_0

    .line 77
    new-instance v0, Lhyr;

    invoke-direct {v0, p1, p2, v1}, Lhyr;-><init>(III)V

    .line 79
    :cond_0
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lhyq;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyq;->a:Lhyw;

    invoke-virtual {v0}, Lhyw;->b()F

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhyq;->c:Z

    .line 86
    :cond_0
    return-void
.end method

.method public queueIdle()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-boolean v0, p0, Lhyq;->c:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lhyq;->a:Lhyw;

    invoke-virtual {v0}, Lhyw;->b()F

    move-result v0

    const v2, 0x3f59999a    # 0.85f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 2106
    iget v0, p0, Lhyq;->d:I

    iget-object v2, p0, Lhyq;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    move-object v0, v1

    .line 97
    :goto_0
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lhyq;->a:Lhyw;

    invoke-virtual {v1, v0}, Lhyw;->a(Landroid/graphics/Bitmap;)V

    .line 102
    :cond_0
    iget-boolean v0, p0, Lhyq;->c:Z

    return v0

    .line 2110
    :cond_1
    iget-object v0, p0, Lhyq;->b:Ljava/util/List;

    iget v2, p0, Lhyq;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyr;

    .line 2111
    if-nez v0, :cond_2

    move-object v0, v1

    .line 2112
    goto :goto_0

    .line 2115
    :cond_2
    iget v1, v0, Lhyr;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lhyr;->c:I

    if-nez v1, :cond_3

    .line 2116
    iget v1, p0, Lhyq;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lhyq;->d:I

    .line 2119
    :cond_3
    iget v1, v0, Lhyr;->a:I

    iget v0, v0, Lhyr;->b:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
