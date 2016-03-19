.class Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$LayoutFiller;


# instance fields
.field private a:I

.field private b:[I

.field private c:[Landroid/view/View;


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->a:I

    .line 157
    iput-object p1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->b:[I

    .line 158
    array-length v0, p1

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->c:[Landroid/view/View;

    .line 159
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 176
    :goto_0
    iget v2, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->a:I

    if-ge v0, v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->b:[I

    aget v2, v2, v0

    add-int/2addr v2, p1

    .line 178
    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->c:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->c:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2, v2, p4}, Landroid/view/View;->layout(IIII)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    move p1, v2

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->b:[I

    iget v2, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->a:I

    aget v1, v1, v2

    if-gt v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->c:[Landroid/view/View;

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->a:I

    aput-object p1, v0, v1

    .line 166
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->a:I

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$GreedyLayoutFiller;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
