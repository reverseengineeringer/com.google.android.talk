.class final Lhzl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;II)Lhzk;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lhzk;

    invoke-direct {v0}, Lhzk;-><init>()V

    sget v1, Laal;->ui:I

    .line 61
    invoke-static {p0, v1, p1}, Lhzl;->b(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lhzk;->a(I)Lhzk;

    move-result-object v0

    sget v1, Laal;->ul:I

    .line 63
    invoke-static {p0, v1, p2}, Lhzl;->b(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lhzk;->c(I)Lhzk;

    move-result-object v0

    sget v1, Laal;->uh:I

    .line 65
    invoke-static {p0, v1, p2}, Lhzl;->b(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lhzk;->b(I)Lhzk;

    move-result-object v0

    .line 1093
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1094
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1095
    invoke-virtual {v0}, Lhzk;->b()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 1096
    int-to-float v1, v1

    invoke-virtual {v0}, Lhzk;->b()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1097
    invoke-virtual {v0}, Lhzk;->a()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lhzk;->b(I)Lhzk;

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 70
    sget v2, Laal;->uk:I

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lhzk;->b(J)Lhzk;

    move-result-object v0

    sget v2, Laal;->uj:I

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    .line 72
    invoke-virtual {v0, v2, v3}, Lhzk;->a(J)Lhzk;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;II)I
    .locals 6

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 79
    invoke-static {p0}, Laal;->M(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 80
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v2

    shl-int/lit8 v2, v0, 0x2

    .line 81
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 82
    if-nez v2, :cond_0

    .line 88
    :goto_0
    return v0

    .line 86
    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 87
    int-to-long v4, v1

    int-to-long v2, v2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 88
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lhzj;
    .locals 4

    .prologue
    .line 19
    invoke-static {p1}, Laal;->O(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lhzl;->a:I

    .line 1025
    iget v0, p0, Lhzl;->a:I

    const/16 v1, 0x30

    if-ge v0, v1, :cond_0

    .line 1038
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1039
    new-instance v1, Lhzk;

    invoke-direct {v1}, Lhzk;-><init>()V

    sget v2, Laal;->uo:I

    .line 1040
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lhzk;->a(I)Lhzk;

    move-result-object v1

    sget v2, Laal;->um:I

    .line 1041
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lhzk;->c(I)Lhzk;

    move-result-object v1

    sget v2, Laal;->un:I

    .line 1042
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lhzk;->b(I)Lhzk;

    move-result-object v1

    sget v2, Laal;->up:I

    .line 1043
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lhzk;->b(J)Lhzk;

    move-result-object v1

    sget v2, Laal;->up:I

    .line 1045
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    .line 1044
    invoke-virtual {v1, v2, v3}, Lhzk;->a(J)Lhzk;

    move-result-object v0

    .line 1033
    :goto_0
    invoke-virtual {v0}, Lhzk;->c()Lhzk;

    move-result-object v0

    .line 1034
    invoke-virtual {v0}, Lhzk;->d()Lhzj;

    move-result-object v0

    .line 20
    return-object v0

    .line 1027
    :cond_0
    iget v0, p0, Lhzl;->a:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 1049
    sget v0, Laal;->ue:I

    sget v1, Laal;->ud:I

    invoke-static {p1, v0, v1}, Lhzl;->a(Landroid/content/Context;II)Lhzk;

    move-result-object v0

    goto :goto_0

    .line 1054
    :cond_1
    sget v0, Laal;->ug:I

    sget v1, Laal;->uf:I

    invoke-static {p1, v0, v1}, Lhzl;->a(Landroid/content/Context;II)Lhzk;

    move-result-object v0

    goto :goto_0
.end method
