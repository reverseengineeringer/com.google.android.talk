.class public Lcom/google/android/apps/hangouts/views/WrapWidthTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/WrapWidthTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 34
    array-length v2, v1

    invoke-static {v1, v0, v2}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/WrapWidthTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 36
    if-eqz v2, :cond_1

    .line 1047
    const/4 v1, 0x0

    .line 1048
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 1049
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1050
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1049
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/WrapWidthTextView;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/WrapWidthTextView;->getCompoundPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/WrapWidthTextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/views/WrapWidthTextView;->setMeasuredDimension(II)V

    .line 44
    :cond_1
    return-void
.end method
