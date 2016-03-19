.class public final Lbxp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbws;


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lbxp;->a:F

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lbxp;->b:F

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;J)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 25
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lbxp;->a:F

    iget v2, p0, Lbxp;->b:F

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 26
    new-instance v1, Lnu;

    invoke-direct {v1}, Lnu;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->lw:I

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    .line 27
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 31
    return-object v0
.end method
