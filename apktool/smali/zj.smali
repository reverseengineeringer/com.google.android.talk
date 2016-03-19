.class final Lzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lza;


# direct methods
.method constructor <init>(Lza;)V
    .locals 0

    .prologue
    .line 1818
    iput-object p1, p0, Lzj;->a:Lza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 1822
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 1825
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lzj;->a:Lza;

    invoke-virtual {v0}, Lza;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzj;->a:Lza;

    .line 2067
    iget-object v0, v0, Lza;->d:Landroid/widget/PopupWindow;

    .line 1825
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1827
    iget-object v0, p0, Lzj;->a:Lza;

    .line 3067
    iget-object v0, v0, Lza;->h:Landroid/os/Handler;

    .line 1827
    iget-object v1, p0, Lzj;->a:Lza;

    .line 4067
    iget-object v1, v1, Lza;->g:Lzl;

    .line 1827
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1828
    iget-object v0, p0, Lzj;->a:Lza;

    .line 5067
    iget-object v0, v0, Lza;->g:Lzl;

    .line 1828
    invoke-virtual {v0}, Lzl;->run()V

    .line 1830
    :cond_0
    return-void
.end method
