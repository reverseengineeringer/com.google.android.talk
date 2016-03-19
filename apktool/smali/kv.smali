.class Lkv;
.super Lkw;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1317
    invoke-direct {p0}, Lkw;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2030
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    .line 1320
    return v0
.end method
