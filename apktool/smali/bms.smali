.class final Lbms;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbmp;


# direct methods
.method constructor <init>(Lbmp;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lbms;->a:Lbmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 475
    iget-object v1, p0, Lbms;->a:Lbmp;

    .line 1492
    invoke-virtual {v1}, Lbmp;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, v1, Lbmp;->c:Lbkt;

    invoke-interface {v0}, Lbkt;->b()V

    .line 1499
    invoke-virtual {v1}, Lbmp;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Laal;->jK:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1501
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1502
    iget v3, v1, Lbmp;->d:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1503
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1505
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1507
    iget v0, v1, Lbmp;->b:I

    invoke-virtual {v1, v0}, Lbmp;->c(I)V

    .line 1508
    invoke-virtual {v1}, Lbmp;->d()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 476
    :cond_0
    return-void
.end method
