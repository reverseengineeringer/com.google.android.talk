.class final Lpd;
.super Lpb;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lpb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;FF)Z
    .locals 1

    .prologue
    .line 1024
    check-cast p1, Landroid/widget/EdgeEffect;

    invoke-virtual {p1, p2, p3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1025
    const/4 v0, 0x1

    .line 137
    return v0
.end method
