.class Lkt;
.super Llc;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llc;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2023
    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    .line 1075
    return v0
.end method
