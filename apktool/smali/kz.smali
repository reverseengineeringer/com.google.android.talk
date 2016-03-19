.class Lkz;
.super Lky;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1472
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lky;-><init>(B)V

    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3038
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    .line 1495
    return v0
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 2058
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1486
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 2030
    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 1481
    return-void
.end method

.method public z(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3034
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    .line 1490
    return v0
.end method
