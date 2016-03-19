.class Lla;
.super Lkz;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1499
    invoke-direct {p0}, Lkz;-><init>()V

    return-void
.end method


# virtual methods
.method public B(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2043
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    .line 1522
    return v0
.end method

.method public C(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2051
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    .line 1532
    return v0
.end method

.method public D(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2132
    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    .line 1558
    return-void
.end method

.method public E(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 3160
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v0

    .line 1627
    return v0
.end method

.method public a(Landroid/view/View;Lmq;)Lmq;
    .locals 2

    .prologue
    .line 3090
    instance-of v0, p2, Lmr;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 3092
    check-cast v0, Lmr;

    invoke-virtual {v0}, Lmr;->e()Landroid/view/WindowInsets;

    move-result-object v0

    .line 3094
    invoke-virtual {p1, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 3096
    if-eq v1, v0, :cond_0

    .line 3098
    new-instance p2, Lmr;

    invoke-direct {p2, v1}, Lmr;-><init>(Landroid/view/WindowInsets;)V

    .line 1617
    :cond_0
    return-object p2
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 3078
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1603
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 3086
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1608
    return-void
.end method

.method public a(Landroid/view/View;Lkg;)V
    .locals 1

    .prologue
    .line 2056
    new-instance v0, Lld;

    invoke-direct {v0, p2}, Lld;-><init>(Lkg;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1538
    return-void
.end method

.method public f(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 2039
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 1518
    return-void
.end method

.method public r(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2035
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 1513
    return-void
.end method
