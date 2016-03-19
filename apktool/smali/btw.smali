.class public final Lbtw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llt;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 283
    iget v0, p0, Lbtw;->b:I

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 9034
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->c:Lbty;

    .line 284
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lbty;->a(IF)V

    .line 285
    iget-object v0, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 10034
    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->b(II)V

    :cond_0
    move v0, v1

    .line 287
    :goto_0
    iget-object v2, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 11034
    iget-object v2, v2, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->c:Lbty;

    .line 287
    invoke-virtual {v2}, Lbty;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 288
    iget-object v2, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 12034
    iget-object v2, v2, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->c:Lbty;

    .line 288
    invoke-virtual {v2, v0}, Lbty;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 288
    goto :goto_1

    .line 290
    :cond_2
    iget-object v0, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 13034
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->b:Llt;

    .line 290
    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 14034
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->b:Llt;

    .line 291
    invoke-interface {v0, p1}, Llt;->a(I)V

    .line 293
    :cond_3
    return-void
.end method

.method public a(IFI)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 1034
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->c:Lbty;

    .line 255
    invoke-virtual {v0}, Lbty;->getChildCount()I

    move-result v0

    .line 256
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 2034
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->c:Lbty;

    .line 260
    invoke-virtual {v0, p1, p2}, Lbty;->a(IF)V

    .line 262
    iget-object v0, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 3034
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->c:Lbty;

    .line 262
    invoke-virtual {v0, p1}, Lbty;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 265
    :goto_1
    iget-object v1, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 4034
    invoke-virtual {v1, p1, v0}, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->b(II)V

    .line 267
    iget-object v0, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 5034
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->b:Llt;

    .line 267
    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 6034
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->b:Llt;

    .line 268
    invoke-interface {v0, p1, p2, p3}, Llt;->a(IFI)V

    goto :goto_0

    .line 264
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 274
    iput p1, p0, Lbtw;->b:I

    .line 276
    iget-object v0, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 7034
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->b:Llt;

    .line 276
    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lbtw;->a:Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;

    .line 8034
    iget-object v0, v0, Lcom/google/android/apps/hangouts/conversation/v2/stickerpicker/impl/SlidingTabLayout;->b:Llt;

    .line 277
    invoke-interface {v0, p1}, Llt;->b(I)V

    .line 279
    :cond_0
    return-void
.end method
