.class final Lpu;
.super Lpt;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lpt;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 1026
    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    .line 256
    return v0
.end method
