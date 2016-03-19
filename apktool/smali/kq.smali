.class final Lkq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkr;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/VelocityTracker;I)F
    .locals 1

    .prologue
    .line 1026
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    .line 54
    return v0
.end method

.method public b(Landroid/view/VelocityTracker;I)F
    .locals 1

    .prologue
    .line 1029
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    .line 58
    return v0
.end method
