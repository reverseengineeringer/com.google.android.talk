.class Lku;
.super Lkt;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1083
    invoke-direct {p0}, Lkt;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1

    .prologue
    .line 2161
    invoke-static {p1, p2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    .line 1240
    return v0
.end method

.method public a(III)I
    .locals 1

    .prologue
    .line 2041
    invoke-static {p1, p2, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 1110
    return v0
.end method

.method a()J
    .locals 2

    .prologue
    .line 2025
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    .line 1086
    return-wide v0
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 2093
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 1135
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 2033
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1095
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 2153
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1231
    return-void
.end method

.method public b(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2029
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 1090
    return v0
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 2097
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 1139
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 2157
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 1236
    return-void
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2037
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    .line 1098
    return v0
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 2101
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1143
    return-void
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    .line 1114
    return v0
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 2125
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 1167
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2053
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 1122
    return v0
.end method

.method public e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 2129
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 1171
    return-void
.end method

.method public f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2057
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 1126
    return v0
.end method

.method public g(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2061
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 1130
    return v0
.end method

.method public h(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2149
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1226
    return-void
.end method
