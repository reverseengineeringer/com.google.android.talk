.class final Lcom/google/android/apps/hangouts/hangout/multiwaveview/Ease$Quart$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 97
    div-float v0, p1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 98
    mul-float v1, v2, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    .line 99
    :goto_0
    return v0

    :cond_0
    const/high16 v1, -0x41000000    # -0.5f

    sub-float/2addr v0, v4

    mul-float v2, v0, v0

    mul-float/2addr v2, v0

    mul-float/2addr v0, v2

    sub-float/2addr v0, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    goto :goto_0
.end method
