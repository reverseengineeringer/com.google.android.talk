.class public final Lbza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field a:I

.field b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 232
    iput-object p1, p0, Lbza;->d:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    iput-object p2, p0, Lbza;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput v0, p0, Lbza;->a:I

    .line 234
    iput v0, p0, Lbza;->b:I

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lbza;->d:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lbza;->d:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    .line 1054
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->f:Lbzg;

    .line 241
    invoke-interface {v0}, Lbzg;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    iget-object v0, p0, Lbza;->d:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    .line 2054
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->g:Lbwp;

    .line 242
    invoke-interface {v0, v1}, Lbwp;->a(Z)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lbza;->d:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    .line 3054
    iget v0, v0, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->e:I

    .line 247
    if-nez v0, :cond_4

    .line 250
    iget-object v0, p0, Lbza;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 251
    iget-object v3, p0, Lbza;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 252
    iget v4, p0, Lbza;->b:I

    if-eq v3, v4, :cond_3

    .line 253
    iput v2, p0, Lbza;->a:I

    .line 254
    iput v3, p0, Lbza;->b:I

    .line 256
    :cond_3
    iget v3, p0, Lbza;->a:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lbza;->a:I

    .line 257
    iget v3, p0, Lbza;->a:I

    if-ge v0, v3, :cond_4

    move v0, v1

    .line 260
    :goto_1
    iget-object v3, p0, Lbza;->d:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    .line 4054
    iget-object v3, v3, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->g:Lbwp;

    .line 260
    if-nez v3, :cond_6

    .line 263
    if-eqz v0, :cond_5

    .line 264
    iget-object v0, p0, Lbza;->d:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    .line 5054
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->c:Landroid/view/View;

    .line 264
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 257
    goto :goto_1

    .line 265
    :cond_5
    iget-object v0, p0, Lbza;->d:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    .line 6054
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->d:Landroid/view/View;

    .line 265
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 266
    iget-object v0, p0, Lbza;->d:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    .line 7054
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->c:Landroid/view/View;

    .line 266
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 269
    :cond_6
    iget-object v3, p0, Lbza;->d:Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;

    .line 8054
    iget-object v3, v3, Lcom/google/android/apps/hangouts/fragments/CallContactPickerFragment;->g:Lbwp;

    .line 269
    if-nez v0, :cond_7

    :goto_2
    invoke-interface {v3, v1}, Lbwp;->a(Z)V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_2
.end method
