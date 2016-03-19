.class Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$LayoutFiller;


# instance fields
.field private final a:I

.field private b:I

.field private c:Landroid/view/View;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->b:I

    .line 199
    iput p1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->a:I

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->d:Ljava/util/List;

    .line 201
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 224
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 228
    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->c:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 230
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 237
    :goto_0
    iget v3, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->a:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    .line 238
    iget v4, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->a:I

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v3

    .line 240
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-virtual {v2, p1, p2, v3, p4}, Landroid/view/View;->layout(IIII)V

    .line 242
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 243
    invoke-virtual {v0, v3, p2, v4, p4}, Landroid/view/View;->layout(IIII)V

    .line 244
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 245
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 246
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 233
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 234
    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->d:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->a:I

    div-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->b:I

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->c:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->a:I

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    .line 210
    iput-object p1, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->c:Landroid/view/View;

    .line 211
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->b:I

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/views/StructuredDataLayout$ThreeColumnLayoutFiller;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
