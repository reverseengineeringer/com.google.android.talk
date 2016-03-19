.class public Lcom/google/android/apps/hangouts/views/MessageListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field a:Lfdn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Lfdn;

    invoke-direct {v0, p0}, Lfdn;-><init>(Lcom/google/android/apps/hangouts/views/MessageListView;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListView;->a:Lfdn;

    .line 30
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListView;->a:Lfdn;

    .line 1016
    iget v0, v0, Lfdn;->a:I

    .line 41
    if-lt p1, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListView;->a:Lfdn;

    .line 2016
    iput p1, v0, Lfdn;->a:I

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListView;->a:Lfdn;

    .line 3016
    iput p2, v0, Lfdn;->b:I

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListView;->a:Lfdn;

    .line 4016
    const/4 v1, 0x1

    iput-boolean v1, v0, Lfdn;->c:Z

    .line 46
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/MessageListView;->getCount()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListView;->a:Lfdn;

    .line 5016
    iget-boolean v0, v0, Lfdn;->c:Z

    .line 50
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/MessageListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/MessageListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-le v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListView;->a:Lfdn;

    .line 6016
    iget v0, v0, Lfdn;->a:I

    .line 58
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/MessageListView;->a:Lfdn;

    .line 7016
    iget v1, v1, Lfdn;->b:I

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/views/MessageListView;->setSelectionFromTop(II)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageListView;->a:Lfdn;

    .line 8016
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfdn;->c:Z

    .line 62
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 63
    return-void
.end method
