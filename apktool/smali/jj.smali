.class final Ljj;
.super Lji;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lji;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Ljm;)V
    .locals 1

    .prologue
    .line 1024
    if-eqz p2, :cond_0

    new-instance v0, Ljl;

    invoke-direct {v0, p2}, Ljl;-><init>(Ljm;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 50
    return-void

    .line 1024
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
