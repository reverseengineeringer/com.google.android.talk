.class Lky;
.super Lkx;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1407
    invoke-direct {p0}, Lkx;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 2460
    invoke-direct {p0}, Lky;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 2056
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1447
    return-void
.end method

.method public u(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2040
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 1426
    return v0
.end method

.method public v(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2048
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 1436
    return v0
.end method

.method public w(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2052
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    .line 1441
    return v0
.end method

.method public x(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2060
    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    .line 1451
    return v0
.end method

.method public y(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2064
    invoke-virtual {p1}, Landroid/view/View;->isPaddingRelative()Z

    move-result v0

    .line 1456
    return v0
.end method
