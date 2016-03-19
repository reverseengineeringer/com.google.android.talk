.class final Lzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lze;


# direct methods
.method constructor <init>(Lze;)V
    .locals 0

    .prologue
    .line 1512
    iput-object p1, p0, Lzf;->a:Lze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1515
    iget-object v0, p0, Lzf;->a:Lze;

    .line 2250
    iget-object v0, v0, Lze;->c:Landroid/view/View;

    .line 1515
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1516
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1517
    return-void
.end method
