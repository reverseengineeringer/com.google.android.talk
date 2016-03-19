.class public final Laxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Laxd;->a:F

    .line 46
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Laxd;->b:F

    .line 47
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Laxd;->a:F

    iget v1, p0, Laxd;->b:F

    .line 1013
    invoke-static {p1, v0, v1}, Laxc;->a(FFF)F

    move-result v0

    .line 51
    return v0
.end method
