.class public Lcom/google/android/apps/hangouts/views/MessageBubbleView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/hangouts/views/MessageBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/hangouts/views/MessageBubbleView;->a:I

    .line 19
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/MessageBubbleView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/views/MessageBubbleView;->b:I

    .line 27
    iget v0, p0, Lcom/google/android/apps/hangouts/views/MessageBubbleView;->a:I

    if-lez v0, :cond_0

    .line 28
    iget v0, p0, Lcom/google/android/apps/hangouts/views/MessageBubbleView;->a:I

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/MessageBubbleView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/views/MessageBubbleView;->setMeasuredDimension(II)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/MessageBubbleView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/MessageBubbleView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/views/MessageBubbleView;->setMeasuredDimension(II)V

    goto :goto_0
.end method
