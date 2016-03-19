.class Lnd;
.super Lnb;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1457
    invoke-direct {p0}, Lnb;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 2524
    invoke-direct {p0}, Lnd;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 2041
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1491
    return-void
.end method

.method public i(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 2077
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 1501
    return-void
.end method

.method public r(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2037
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    .line 1485
    return v0
.end method

.method public s(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2073
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    .line 1495
    return v0
.end method
