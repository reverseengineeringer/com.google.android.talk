.class public final Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a()V

    .line 35
    return-void
.end method

.method private a(I)I
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    const/4 v1, 0x1

    int-to-float v2, p1

    .line 99
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 98
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhpj;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->c:I

    .line 75
    iget v0, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->c:I

    const/16 v1, 0x258

    if-gt v0, v1, :cond_0

    .line 76
    iget v0, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->c:I

    invoke-direct {p0, v0}, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->b:I

    .line 77
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a:I

    .line 88
    :goto_0
    return-void

    .line 78
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->c:I

    const/16 v1, 0x3c0

    if-gt v0, v1, :cond_1

    .line 79
    const/16 v0, 0x340

    invoke-direct {p0, v0}, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a:I

    .line 80
    const/16 v0, 0x180

    invoke-direct {p0, v0}, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->b:I

    goto :goto_0

    .line 81
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->c:I

    const/16 v1, 0x500

    if-gt v0, v1, :cond_2

    .line 82
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a:I

    .line 83
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->b:I

    goto :goto_0

    .line 85
    :cond_2
    const/16 v0, 0x420

    invoke-direct {p0, v0}, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a:I

    .line 86
    const/16 v0, 0x240

    invoke-direct {p0, v0}, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->b:I

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 41
    iget v1, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a:I

    if-le v0, v1, :cond_1

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 44
    iget v1, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->a:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 51
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 52
    return-void

    .line 45
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->b:I

    if-ge v0, v1, :cond_0

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 48
    iget v1, p0, Lcom/google/android/libraries/quantum/bottomsheet/BottomSheetLinearLayout;->b:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method
