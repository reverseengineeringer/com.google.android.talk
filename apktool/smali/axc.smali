.class public final Laxc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x3ecccccd    # 0.4f

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Laxc;->a:F

    .line 23
    iput v0, p0, Laxc;->b:F

    .line 24
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Laxc;->a:F

    .line 28
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Laxc;->b:F

    .line 29
    return-void
.end method

.method static a(FFF)F
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 57
    mul-float v0, p0, v5

    sub-float/2addr v0, v4

    .line 58
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 59
    neg-float v0, v0

    float-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    add-float/2addr v0, v4

    div-float/2addr v0, v5

    .line 60
    :goto_0
    return v0

    :cond_0
    float-to-double v0, v0

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v4

    div-float/2addr v0, v5

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Laxc;->a:F

    iget v1, p0, Laxc;->b:F

    invoke-static {p1, v0, v1}, Laxc;->a(FFF)F

    move-result v0

    return v0
.end method
