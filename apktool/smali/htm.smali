.class final Lhtm;
.super Lhth;
.source "SourceFile"

# interfaces
.implements Lhtn;


# instance fields
.field private i:F

.field private j:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0, p1, p2, p3, p4}, Lhth;-><init>(FFFF)V

    .line 413
    return-void
.end method


# virtual methods
.method public a(Landroid/animation/Keyframe;Landroid/animation/Keyframe;)V
    .locals 2

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v0

    iput v0, p0, Lhtm;->i:F

    .line 418
    invoke-virtual {p2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v0

    iget v1, p0, Lhtm;->i:F

    sub-float/2addr v0, v1

    iput v0, p0, Lhtm;->j:F

    .line 419
    return-void
.end method

.method public getInterpolation(F)F
    .locals 4

    .prologue
    .line 423
    iget v0, p0, Lhtm;->i:F

    iget v1, p0, Lhtm;->j:F

    iget v2, p0, Lhtm;->i:F

    sub-float v2, p1, v2

    iget v3, p0, Lhtm;->j:F

    div-float/2addr v2, v3

    invoke-super {p0, v2}, Lhth;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method
