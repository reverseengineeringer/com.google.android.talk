.class public final Lva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 6068
    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    .line 590
    if-ne p1, v0, :cond_1

    .line 591
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Z

    .line 592
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 7068
    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Luz;

    .line 592
    invoke-virtual {v0}, Luz;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 593
    iget-object v1, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 8068
    iget-object v1, v1, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Luz;

    .line 593
    invoke-virtual {v1}, Luz;->e()Luq;

    move-result-object v1

    invoke-virtual {v1, v0}, Luq;->a(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    .line 594
    iget-object v1, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 9068
    iget-object v1, v1, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Luz;

    .line 594
    invoke-virtual {v1}, Luz;->e()Luq;

    move-result-object v1

    invoke-virtual {v1, v0}, Luq;->b(I)Landroid/content/Intent;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_0

    .line 596
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 597
    iget-object v1, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 10068
    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/widget/FrameLayout;

    .line 599
    if-ne p1, v0, :cond_2

    .line 600
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 11068
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->j:Z

    .line 601
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 12068
    iget v1, v1, Landroid/support/v7/internal/widget/ActivityChooserView;->k:I

    .line 13068
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->b(I)V

    goto :goto_0

    .line 603
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 18630
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 19068
    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->i:Landroid/widget/PopupWindow$OnDismissListener;

    .line 18630
    if-eqz v0, :cond_0

    .line 18631
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 20068
    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->i:Landroid/widget/PopupWindow$OnDismissListener;

    .line 18631
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 624
    :cond_0
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Liq;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Liq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Liq;->a(Z)V

    .line 627
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Luz;

    .line 560
    invoke-virtual {v0, p3}, Luz;->getItemViewType(I)I

    move-result v0

    .line 561
    packed-switch v0, :pswitch_data_0

    .line 584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 563
    :pswitch_0
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 1068
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->b(I)V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 566
    :pswitch_1
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Z

    .line 567
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 2068
    iget-boolean v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->j:Z

    .line 567
    if-eqz v0, :cond_1

    .line 569
    if-lez p3, :cond_0

    .line 570
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 3068
    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Luz;

    .line 570
    invoke-virtual {v0}, Luz;->e()Luq;

    move-result-object v0

    invoke-virtual {v0, p3}, Luq;->c(I)V

    goto :goto_0

    .line 575
    :cond_1
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 4068
    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Luz;

    .line 575
    invoke-virtual {v0}, Luz;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    :goto_1
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 5068
    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Luz;

    .line 576
    invoke-virtual {v0}, Luz;->e()Luq;

    move-result-object v0

    invoke-virtual {v0, p3}, Luq;->b(I)Landroid/content/Intent;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_0

    .line 578
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 579
    iget-object v1, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 575
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 610
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 14068
    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    .line 610
    if-ne p1, v0, :cond_1

    .line 611
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 15068
    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Luz;

    .line 611
    invoke-virtual {v0}, Luz;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 612
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 16068
    iput-boolean v2, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->j:Z

    .line 613
    iget-object v0, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Lva;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 17068
    iget v1, v1, Landroid/support/v7/internal/widget/ActivityChooserView;->k:I

    .line 18068
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->b(I)V

    .line 618
    :cond_0
    return v2

    .line 616
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
