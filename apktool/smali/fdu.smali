.class public Lfdu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/android/apps/hangouts/views/MultiLineLayout;


# direct methods
.method constructor <init>(Lcom/google/android/apps/hangouts/views/MultiLineLayout;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lfdu;->b:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 35
    iget-object v0, p0, Lfdu;->b:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->getRootView()Landroid/view/View;

    invoke-static {}, Lezc;->c()Z

    move-result v10

    .line 38
    if-eqz v10, :cond_0

    iget-object v0, p0, Lfdu;->b:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->getPaddingRight()I

    move-result v0

    .line 39
    :goto_0
    iget-object v1, p0, Lfdu;->b:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->getPaddingTop()I

    move-result v3

    .line 40
    iget-object v1, p0, Lfdu;->b:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lfdu;->b:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->getPaddingRight()I

    move-result v2

    sub-int v11, v1, v2

    .line 41
    iget-object v1, p0, Lfdu;->b:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->getChildCount()I

    move-result v12

    move v9, v8

    move v2, v8

    .line 42
    :goto_1
    if-ge v9, v12, :cond_3

    .line 43
    iget-object v1, p0, Lfdu;->b:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-virtual {v1, v9}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    .line 48
    invoke-virtual {p0, v1}, Lfdu;->a(Landroid/view/View;)V

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 53
    add-int v6, v0, v4

    if-le v6, v11, :cond_4

    .line 54
    if-eqz v10, :cond_1

    iget-object v0, p0, Lfdu;->b:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->getPaddingRight()I

    move-result v0

    .line 55
    :goto_2
    add-int/2addr v3, v2

    move v6, v0

    move v7, v8

    .line 59
    :goto_3
    if-eqz v10, :cond_2

    iget-object v0, p0, Lfdu;->b:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, v6

    sub-int v2, v0, v4

    :goto_4
    move-object v0, p0

    .line 60
    invoke-virtual/range {v0 .. v5}, Lfdu;->a(Landroid/view/View;IIII)V

    .line 62
    add-int v0, v6, v4

    .line 63
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 42
    :goto_5
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v2, v1

    goto :goto_1

    .line 38
    :cond_0
    iget-object v0, p0, Lfdu;->b:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lfdu;->b:Lcom/google/android/apps/hangouts/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MultiLineLayout;->getPaddingLeft()I

    move-result v0

    goto :goto_2

    :cond_2
    move v2, v6

    .line 59
    goto :goto_4

    .line 65
    :cond_3
    return-void

    :cond_4
    move v6, v0

    move v7, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
