.class Lpt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpr;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1026
    if-eqz p2, :cond_0

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;IIII)V
    .locals 1

    .prologue
    .line 1047
    check-cast p1, Landroid/widget/OverScroller;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, p5}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 192
    return-void
.end method

.method public a(Ljava/lang/Object;IIIII)V
    .locals 6

    .prologue
    move-object v0, p1

    .line 1052
    check-cast v0, Landroid/widget/OverScroller;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 198
    return-void
.end method

.method public a(Ljava/lang/Object;IIIIIIII)V
    .locals 9

    .prologue
    move-object v0, p1

    .line 1057
    check-cast v0, Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 205
    return-void
.end method

.method public a(Ljava/lang/Object;IIIIIIIIII)V
    .locals 11

    .prologue
    move-object v0, p1

    .line 1062
    check-cast v0, Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v1, p2

    move v2, p3

    move/from16 v4, p5

    move/from16 v8, p9

    move/from16 v10, p11

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 212
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1031
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    .line 166
    return v0
.end method

.method public a(Ljava/lang/Object;IIIIII)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    move-object v0, p1

    .line 1093
    check-cast v0, Landroid/widget/OverScroller;

    move v1, p2

    move v2, p3

    move v4, v3

    move v5, v3

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    .line 248
    return v0
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1035
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 171
    return v0
.end method

.method public c(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1039
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 176
    return v0
.end method

.method public d(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1043
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 186
    return v0
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1067
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 217
    return-void
.end method

.method public g(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1084
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    .line 237
    return v0
.end method

.method public h(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1088
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 242
    return v0
.end method
