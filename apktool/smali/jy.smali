.class Ljy;
.super Lkb;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lkb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 1038
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 118
    return v0
.end method

.method public a(Landroid/view/MotionEvent;I)I
    .locals 1

    .prologue
    .line 1026
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 102
    return v0
.end method

.method public b(Landroid/view/MotionEvent;I)I
    .locals 1

    .prologue
    .line 1029
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 106
    return v0
.end method

.method public c(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 1032
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 110
    return v0
.end method

.method public d(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 1035
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 114
    return v0
.end method
