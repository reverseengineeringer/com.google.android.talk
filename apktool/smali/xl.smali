.class final Lxl;
.super Lza;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/ListAdapter;

.field final b:Landroid/graphics/Rect;

.field final synthetic c:Lxi;

.field private i:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lxi;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 688
    iput-object p1, p0, Lxl;->c:Lxi;

    .line 689
    invoke-direct {p0, p2, p3, p4}, Lza;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 686
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lxl;->b:Landroid/graphics/Rect;

    .line 691
    invoke-virtual {p0, p1}, Lxl;->a(Landroid/view/View;)V

    .line 692
    invoke-virtual {p0}, Lxl;->e()V

    .line 693
    invoke-virtual {p0}, Lxl;->d()V

    .line 695
    new-instance v0, Lxm;

    invoke-direct {v0, p0, p1}, Lxm;-><init>(Lxl;Lxi;)V

    invoke-virtual {p0, v0}, Lxl;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 706
    return-void
.end method

.method static synthetic a(Lxl;)V
    .locals 0

    .prologue
    .line 683
    invoke-super {p0}, Lza;->c()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lxl;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 710
    invoke-super {p0, p1}, Lza;->a(Landroid/widget/ListAdapter;)V

    .line 711
    iput-object p1, p0, Lxl;->a:Landroid/widget/ListAdapter;

    .line 712
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lxl;->i:Ljava/lang/CharSequence;

    .line 721
    return-void
.end method

.method b()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 724
    invoke-virtual {p0}, Lxl;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 726
    if-eqz v1, :cond_1

    .line 727
    iget-object v0, p0, Lxl;->c:Lxi;

    .line 1065
    iget-object v0, v0, Lxi;->d:Landroid/graphics/Rect;

    .line 727
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 728
    iget-object v0, p0, Lxl;->c:Lxi;

    invoke-static {v0}, Lvz;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxl;->c:Lxi;

    .line 2065
    iget-object v0, v0, Lxi;->d:Landroid/graphics/Rect;

    .line 728
    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    move v1, v0

    .line 734
    :goto_1
    iget-object v0, p0, Lxl;->c:Lxi;

    invoke-virtual {v0}, Lxi;->getPaddingLeft()I

    move-result v3

    .line 735
    iget-object v0, p0, Lxl;->c:Lxi;

    invoke-virtual {v0}, Lxi;->getPaddingRight()I

    move-result v4

    .line 736
    iget-object v0, p0, Lxl;->c:Lxi;

    invoke-virtual {v0}, Lxi;->getWidth()I

    move-result v5

    .line 737
    iget-object v0, p0, Lxl;->c:Lxi;

    .line 6065
    iget v0, v0, Lxi;->c:I

    .line 737
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 738
    iget-object v2, p0, Lxl;->c:Lxi;

    iget-object v0, p0, Lxl;->a:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Lxl;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 7065
    invoke-virtual {v2, v0, v6}, Lxi;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 740
    iget-object v0, p0, Lxl;->c:Lxi;

    invoke-virtual {v0}, Lxi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lxl;->c:Lxi;

    .line 8065
    iget-object v6, v6, Lxi;->d:Landroid/graphics/Rect;

    .line 740
    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v6

    iget-object v6, p0, Lxl;->c:Lxi;

    .line 9065
    iget-object v6, v6, Lxi;->d:Landroid/graphics/Rect;

    .line 740
    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    .line 742
    if-le v2, v0, :cond_5

    .line 745
    :goto_2
    sub-int v2, v5, v3

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lxl;->e(I)V

    .line 752
    :goto_3
    iget-object v0, p0, Lxl;->c:Lxi;

    invoke-static {v0}, Lvz;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 753
    sub-int v0, v5, v4

    invoke-virtual {p0}, Lxl;->j()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 757
    :goto_4
    invoke-virtual {p0, v0}, Lxl;->a(I)V

    .line 758
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lxl;->c:Lxi;

    .line 3065
    iget-object v0, v0, Lxi;->d:Landroid/graphics/Rect;

    .line 728
    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_0

    .line 731
    :cond_1
    iget-object v1, p0, Lxl;->c:Lxi;

    .line 4065
    iget-object v1, v1, Lxi;->d:Landroid/graphics/Rect;

    .line 731
    iget-object v2, p0, Lxl;->c:Lxi;

    .line 5065
    iget-object v2, v2, Lxi;->d:Landroid/graphics/Rect;

    .line 731
    iput v0, v2, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move v1, v0

    goto :goto_1

    .line 747
    :cond_2
    iget-object v0, p0, Lxl;->c:Lxi;

    .line 10065
    iget v0, v0, Lxi;->c:I

    .line 747
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 748
    sub-int v0, v5, v3

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lxl;->e(I)V

    goto :goto_3

    .line 750
    :cond_3
    iget-object v0, p0, Lxl;->c:Lxi;

    .line 11065
    iget v0, v0, Lxi;->c:I

    .line 750
    invoke-virtual {p0, v0}, Lxl;->e(I)V

    goto :goto_3

    .line 755
    :cond_4
    add-int v0, v1, v3

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public c()V
    .locals 3

    .prologue
    .line 761
    invoke-virtual {p0}, Lxl;->n()Z

    move-result v0

    .line 763
    invoke-virtual {p0}, Lxl;->b()V

    .line 765
    invoke-virtual {p0}, Lxl;->l()V

    .line 766
    invoke-super {p0}, Lza;->c()V

    .line 767
    invoke-virtual {p0}, Lxl;->p()Landroid/widget/ListView;

    move-result-object v1

    .line 768
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 769
    iget-object v1, p0, Lxl;->c:Lxi;

    invoke-virtual {v1}, Lxi;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lxl;->f(I)V

    .line 771
    if-eqz v0, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    iget-object v0, p0, Lxl;->c:Lxi;

    invoke-virtual {v0}, Lxi;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 781
    if-eqz v0, :cond_0

    .line 782
    new-instance v1, Lxn;

    invoke-direct {v1, p0}, Lxn;-><init>(Lxl;)V

    .line 797
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 798
    new-instance v0, Lxo;

    invoke-direct {v0, p0, v1}, Lxo;-><init>(Lxl;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v0}, Lxl;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0
.end method
