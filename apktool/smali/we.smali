.class public final Lwe;
.super Ltg;
.source "SourceFile"

# interfaces
.implements Lir;


# instance fields
.field private A:Ltf;

.field g:Lwh;

.field h:Lwj;

.field public i:Lwf;

.field j:Lwg;

.field final k:Lwk;

.field l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private final y:Landroid/util/SparseBooleanArray;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    sget v0, Laal;->bc:I

    sget v1, Laal;->bb:I

    invoke-direct {p0, p1, v0, v1}, Ltg;-><init>(Landroid/content/Context;II)V

    .line 73
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lwe;->y:Landroid/util/SparseBooleanArray;

    .line 83
    new-instance v0, Lwk;

    .line 1750
    invoke-direct {v0, p0}, Lwk;-><init>(Lwe;)V

    .line 83
    iput-object v0, p0, Lwe;->k:Lwk;

    .line 88
    return-void
.end method


# virtual methods
.method public a(Ltp;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p1}, Ltp;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ltp;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ltg;->a(Ltp;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 196
    :cond_1
    invoke-virtual {p1}, Ltp;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 200
    invoke-virtual {p3, v1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 201
    invoke-virtual {p3, v1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Lwn;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :cond_2
    return-object v0

    .line 196
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;)Lub;
    .locals 2

    .prologue
    .line 185
    invoke-super {p0, p1}, Ltg;->a(Landroid/view/ViewGroup;)Lub;

    move-result-object v1

    move-object v0, v1

    .line 186
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuView;->a(Lwe;)V

    .line 187
    return-object v1
.end method

.method public a(Landroid/content/Context;Ltl;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 92
    invoke-super {p0, p1, p2}, Ltg;->a(Landroid/content/Context;Ltl;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    invoke-static {p1}, Lss;->a(Landroid/content/Context;)Lss;

    move-result-object v0

    .line 97
    iget-boolean v2, p0, Lwe;->p:Z

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {v0}, Lss;->b()Z

    move-result v2

    iput-boolean v2, p0, Lwe;->o:Z

    .line 101
    :cond_0
    iget-boolean v2, p0, Lwe;->v:Z

    if-nez v2, :cond_1

    .line 102
    invoke-virtual {v0}, Lss;->c()I

    move-result v2

    iput v2, p0, Lwe;->q:I

    .line 106
    :cond_1
    iget-boolean v2, p0, Lwe;->t:Z

    if-nez v2, :cond_2

    .line 107
    invoke-virtual {v0}, Lss;->a()I

    move-result v0

    iput v0, p0, Lwe;->s:I

    .line 110
    :cond_2
    iget v0, p0, Lwe;->q:I

    .line 111
    iget-boolean v2, p0, Lwe;->o:Z

    if-eqz v2, :cond_5

    .line 112
    iget-object v2, p0, Lwe;->g:Lwh;

    if-nez v2, :cond_4

    .line 113
    new-instance v2, Lwh;

    iget-object v3, p0, Lwe;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lwh;-><init>(Lwe;Landroid/content/Context;)V

    iput-object v2, p0, Lwe;->g:Lwh;

    .line 114
    iget-boolean v2, p0, Lwe;->n:Z

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lwe;->g:Lwh;

    iget-object v3, p0, Lwe;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lwh;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iput-object v5, p0, Lwe;->m:Landroid/graphics/drawable/Drawable;

    .line 117
    iput-boolean v4, p0, Lwe;->n:Z

    .line 119
    :cond_3
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 120
    iget-object v3, p0, Lwe;->g:Lwh;

    invoke-virtual {v3, v2, v2}, Lwh;->measure(II)V

    .line 122
    :cond_4
    iget-object v2, p0, Lwe;->g:Lwh;

    invoke-virtual {v2}, Lwh;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 127
    :goto_0
    iput v0, p0, Lwe;->r:I

    .line 129
    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lwe;->x:I

    .line 132
    iput-object v5, p0, Lwe;->z:Landroid/view/View;

    .line 133
    return-void

    .line 124
    :cond_5
    iput-object v5, p0, Lwe;->g:Lwh;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1

    .prologue
    .line 572
    iput-object p1, p0, Lwe;->f:Lub;

    .line 573
    iget-object v0, p0, Lwe;->c:Ltl;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->a(Ltl;)V

    .line 574
    return-void
.end method

.method public a(Ltl;Z)V
    .locals 0

    .prologue
    .line 538
    invoke-virtual {p0}, Lwe;->g()Z

    .line 539
    invoke-super {p0, p1, p2}, Ltg;->a(Ltl;Z)V

    .line 540
    return-void
.end method

.method public a(Ltp;Luc;)V
    .locals 1

    .prologue
    .line 208
    invoke-interface {p2, p1}, Luc;->a(Ltp;)V

    .line 210
    iget-object v0, p0, Lwe;->f:Lub;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 211
    check-cast p2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 212
    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Ltn;)V

    .line 214
    iget-object v0, p0, Lwe;->A:Ltf;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ltf;

    .line 1790
    invoke-direct {v0, p0}, Ltf;-><init>(Lwe;)V

    .line 215
    iput-object v0, p0, Lwe;->A:Ltf;

    .line 217
    :cond_0
    iget-object v0, p0, Lwe;->A:Ltf;

    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Ltf;)V

    .line 218
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 563
    if-eqz p1, :cond_0

    .line 565
    const/4 v0, 0x0

    invoke-super {p0, v0}, Ltg;->a(Lue;)Z

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lwe;->c:Ltl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltl;->a(Z)V

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Z
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lwe;->g:Lwh;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Ltg;->a(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ltp;)Z
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p1}, Ltp;->i()Z

    move-result v0

    return v0
.end method

.method public a(Lue;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 285
    invoke-virtual {p1}, Lue;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 302
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 288
    :goto_1
    invoke-virtual {v0}, Lue;->u()Landroid/view/Menu;

    move-result-object v1

    iget-object v2, p0, Lwe;->c:Ltl;

    if-eq v1, v2, :cond_1

    .line 289
    invoke-virtual {v0}, Lue;->u()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lue;

    goto :goto_1

    .line 291
    :cond_1
    invoke-virtual {v0}, Lue;->getItem()Landroid/view/MenuItem;

    move-result-object v5

    .line 2306
    iget-object v0, p0, Lwe;->f:Lub;

    check-cast v0, Landroid/view/ViewGroup;

    .line 2307
    if-eqz v0, :cond_3

    .line 2309
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v4, v3

    .line 2310
    :goto_2
    if-ge v4, v6, :cond_3

    .line 2311
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2312
    instance-of v1, v2, Luc;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Luc;

    invoke-interface {v1}, Luc;->a()Ltp;

    move-result-object v1

    if-ne v1, v5, :cond_2

    move-object v0, v2

    .line 292
    :goto_3
    if-nez v0, :cond_5

    .line 293
    iget-object v0, p0, Lwe;->g:Lwh;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    .line 2310
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 2317
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 294
    :cond_4
    iget-object v0, p0, Lwe;->g:Lwh;

    .line 297
    :cond_5
    invoke-virtual {p1}, Lue;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Lwe;->l:I

    .line 298
    new-instance v1, Lwf;

    iget-object v2, p0, Lwe;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lwf;-><init>(Lwe;Landroid/content/Context;Lue;)V

    iput-object v1, p0, Lwe;->i:Lwf;

    .line 299
    iget-object v1, p0, Lwe;->i:Lwf;

    invoke-virtual {v1, v0}, Lwf;->a(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lwe;->i:Lwf;

    invoke-virtual {v0}, Lwf;->c()V

    .line 301
    invoke-super {p0, p1}, Ltg;->a(Lue;)Z

    .line 302
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lwe;->f:Lub;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 231
    invoke-super {p0, p1}, Ltg;->b(Z)V

    .line 233
    iget-object v0, p0, Lwe;->f:Lub;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 235
    iget-object v0, p0, Lwe;->c:Ltl;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lwe;->c:Ltl;

    invoke-virtual {v0}, Ltl;->m()Ljava/util/ArrayList;

    move-result-object v4

    .line 237
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 238
    :goto_0
    if-ge v3, v5, :cond_1

    .line 239
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltp;

    invoke-virtual {v0}, Ltp;->a()Liq;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p0}, Liq;->a(Lir;)V

    .line 238
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lwe;->c:Ltl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lwe;->c:Ltl;

    invoke-virtual {v0}, Ltl;->n()Ljava/util/ArrayList;

    move-result-object v0

    .line 250
    :goto_1
    iget-boolean v3, p0, Lwe;->o:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 252
    if-ne v3, v1, :cond_8

    .line 253
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltp;

    invoke-virtual {v0}, Ltp;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    move v2, v0

    .line 259
    :cond_2
    :goto_3
    if-eqz v2, :cond_a

    .line 260
    iget-object v0, p0, Lwe;->g:Lwh;

    if-nez v0, :cond_3

    .line 261
    new-instance v0, Lwh;

    iget-object v1, p0, Lwe;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lwh;-><init>(Lwe;Landroid/content/Context;)V

    iput-object v0, p0, Lwe;->g:Lwh;

    .line 263
    :cond_3
    iget-object v0, p0, Lwe;->g:Lwh;

    invoke-virtual {v0}, Lwh;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 264
    iget-object v1, p0, Lwe;->f:Lub;

    if-eq v0, v1, :cond_5

    .line 265
    if-eqz v0, :cond_4

    .line 266
    iget-object v1, p0, Lwe;->g:Lwh;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    :cond_4
    iget-object v0, p0, Lwe;->f:Lub;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 269
    iget-object v1, p0, Lwe;->g:Lwh;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->c()Lwn;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    :cond_5
    :goto_4
    iget-object v0, p0, Lwe;->f:Lub;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v1, p0, Lwe;->o:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->a(Z)V

    .line 276
    return-void

    .line 246
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    move v0, v2

    .line 253
    goto :goto_2

    .line 255
    :cond_8
    if-lez v3, :cond_9

    :goto_5
    move v2, v1

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_5

    .line 271
    :cond_a
    iget-object v0, p0, Lwe;->g:Lwh;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lwe;->g:Lwh;

    invoke-virtual {v0}, Lwh;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lwe;->f:Lub;

    if-ne v0, v1, :cond_5

    .line 272
    iget-object v0, p0, Lwe;->f:Lub;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lwe;->g:Lwh;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public b()Z
    .locals 21

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lwe;->c:Ltl;

    invoke-virtual {v2}, Ltl;->k()Ljava/util/ArrayList;

    move-result-object v13

    .line 404
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 405
    move-object/from16 v0, p0

    iget v7, v0, Lwe;->s:I

    .line 406
    move-object/from16 v0, p0

    iget v9, v0, Lwe;->r:I

    .line 407
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lwe;->f:Lub;

    check-cast v2, Landroid/view/ViewGroup;

    .line 410
    const/4 v6, 0x0

    .line 411
    const/4 v5, 0x0

    .line 412
    const/4 v8, 0x0

    .line 413
    const/4 v4, 0x0

    .line 414
    const/4 v3, 0x0

    move v10, v3

    :goto_0
    if-ge v10, v14, :cond_2

    .line 415
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltp;

    .line 416
    invoke-virtual {v3}, Ltp;->k()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 417
    add-int/lit8 v6, v6, 0x1

    .line 423
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lwe;->w:Z

    if-eqz v11, :cond_1e

    invoke-virtual {v3}, Ltp;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 426
    const/4 v3, 0x0

    .line 414
    :goto_2
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v7, v3

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {v3}, Ltp;->j()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 419
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 421
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 431
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lwe;->o:Z

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    add-int v3, v6, v5

    if-le v3, v7, :cond_4

    .line 433
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 435
    :cond_4
    sub-int v10, v7, v6

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lwe;->y:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    .line 438
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->clear()V

    .line 440
    const/4 v4, 0x0

    .line 441
    const/4 v3, 0x0

    .line 442
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lwe;->u:Z

    if-eqz v5, :cond_1d

    .line 443
    move-object/from16 v0, p0

    iget v3, v0, Lwe;->x:I

    div-int v3, v9, v3

    .line 444
    move-object/from16 v0, p0

    iget v4, v0, Lwe;->x:I

    rem-int v4, v9, v4

    .line 445
    move-object/from16 v0, p0

    iget v5, v0, Lwe;->x:I

    div-int/2addr v4, v3

    add-int/2addr v4, v5

    move v5, v4

    .line 449
    :goto_3
    const/4 v4, 0x0

    move v12, v4

    move v7, v8

    move v4, v3

    :goto_4
    if-ge v12, v14, :cond_17

    .line 450
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltp;

    .line 452
    invoke-virtual {v3}, Ltp;->k()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 453
    move-object/from16 v0, p0

    iget-object v6, v0, Lwe;->z:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Lwe;->a(Ltp;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 454
    move-object/from16 v0, p0

    iget-object v8, v0, Lwe;->z:Landroid/view/View;

    if-nez v8, :cond_5

    .line 455
    move-object/from16 v0, p0

    iput-object v6, v0, Lwe;->z:Landroid/view/View;

    .line 457
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lwe;->u:Z

    if-eqz v8, :cond_7

    .line 458
    const/4 v8, 0x0

    invoke-static {v6, v5, v4, v15, v8}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v8

    sub-int/2addr v4, v8

    .line 463
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 464
    sub-int v8, v9, v6

    .line 465
    if-nez v7, :cond_1c

    .line 468
    :goto_6
    invoke-virtual {v3}, Ltp;->getGroupId()I

    move-result v7

    .line 469
    if-eqz v7, :cond_6

    .line 470
    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 472
    :cond_6
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ltp;->d(Z)V

    move v3, v8

    move v7, v10

    .line 449
    :goto_7
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    move v9, v3

    move v10, v7

    move v7, v6

    goto :goto_4

    .line 461
    :cond_7
    invoke-virtual {v6, v15, v15}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 473
    :cond_8
    invoke-virtual {v3}, Ltp;->j()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 476
    invoke-virtual {v3}, Ltp;->getGroupId()I

    move-result v17

    .line 477
    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    .line 478
    if-gtz v10, :cond_9

    if-eqz v18, :cond_e

    :cond_9
    if-lez v9, :cond_e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lwe;->u:Z

    if-eqz v6, :cond_a

    if-lez v4, :cond_e

    :cond_a
    const/4 v6, 0x1

    .line 481
    :goto_8
    if-eqz v6, :cond_1b

    .line 482
    move-object/from16 v0, p0

    iget-object v8, v0, Lwe;->z:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v2}, Lwe;->a(Ltp;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 483
    move-object/from16 v0, p0

    iget-object v8, v0, Lwe;->z:Landroid/view/View;

    if-nez v8, :cond_b

    .line 484
    move-object/from16 v0, p0

    iput-object v11, v0, Lwe;->z:Landroid/view/View;

    .line 486
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lwe;->u:Z

    if-eqz v8, :cond_f

    .line 487
    const/4 v8, 0x0

    invoke-static {v11, v5, v4, v15, v8}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v19

    .line 489
    sub-int v8, v4, v19

    .line 490
    if-nez v19, :cond_1a

    .line 491
    const/4 v4, 0x0

    :goto_9
    move v6, v8

    .line 496
    :goto_a
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 497
    sub-int/2addr v9, v8

    .line 498
    if-nez v7, :cond_c

    move v7, v8

    .line 502
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lwe;->u:Z

    if-eqz v8, :cond_11

    .line 503
    if-ltz v9, :cond_10

    const/4 v8, 0x1

    :goto_b
    and-int/2addr v4, v8

    move v11, v4

    move v8, v7

    move v7, v6

    .line 510
    :goto_c
    if-eqz v11, :cond_13

    if-eqz v17, :cond_13

    .line 511
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v4, v10

    .line 525
    :goto_d
    if-eqz v11, :cond_d

    add-int/lit8 v4, v4, -0x1

    .line 527
    :cond_d
    invoke-virtual {v3, v11}, Ltp;->d(Z)V

    move v6, v8

    move v3, v9

    move/from16 v20, v7

    move v7, v4

    move/from16 v4, v20

    .line 528
    goto :goto_7

    .line 478
    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    .line 494
    :cond_f
    invoke-virtual {v11, v15, v15}, Landroid/view/View;->measure(II)V

    move/from16 v20, v6

    move v6, v4

    move/from16 v4, v20

    goto :goto_a

    .line 503
    :cond_10
    const/4 v8, 0x0

    goto :goto_b

    .line 506
    :cond_11
    add-int v8, v9, v7

    if-lez v8, :cond_12

    const/4 v8, 0x1

    :goto_e
    and-int/2addr v4, v8

    move v11, v4

    move v8, v7

    move v7, v6

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    goto :goto_e

    .line 512
    :cond_13
    if-eqz v18, :cond_19

    .line 514
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 515
    const/4 v4, 0x0

    move v6, v10

    move v10, v4

    :goto_f
    if-ge v10, v12, :cond_18

    .line 516
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltp;

    .line 517
    invoke-virtual {v4}, Ltp;->getGroupId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 519
    invoke-virtual {v4}, Ltp;->i()Z

    move-result v18

    if-eqz v18, :cond_14

    add-int/lit8 v6, v6, 0x1

    .line 520
    :cond_14
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ltp;->d(Z)V

    .line 515
    :cond_15
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_f

    .line 530
    :cond_16
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ltp;->d(Z)V

    move v6, v7

    move v3, v9

    move v7, v10

    goto/16 :goto_7

    .line 533
    :cond_17
    const/4 v2, 0x1

    return v2

    :cond_18
    move v4, v6

    goto :goto_d

    :cond_19
    move v4, v10

    goto :goto_d

    :cond_1a
    move v4, v6

    goto/16 :goto_9

    :cond_1b
    move v11, v6

    move v8, v7

    move v7, v4

    goto :goto_c

    :cond_1c
    move v6, v7

    goto/16 :goto_6

    :cond_1d
    move v5, v4

    goto/16 :goto_3

    :cond_1e
    move v3, v7

    goto/16 :goto_2
.end method

.method public c()V
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lwe;->t:Z

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lwe;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->aZ:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lwe;->s:I

    .line 140
    :cond_0
    iget-object v0, p0, Lwe;->c:Ltl;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lwe;->c:Ltl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltl;->b(Z)V

    .line 143
    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwe;->w:Z

    .line 163
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lwe;->o:Z

    .line 153
    iput-boolean v0, p0, Lwe;->p:Z

    .line 154
    return-void
.end method

.method public e()Z
    .locals 4

    .prologue
    .line 325
    iget-boolean v0, p0, Lwe;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwe;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwe;->c:Ltl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwe;->f:Lub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwe;->j:Lwg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lwe;->c:Ltl;

    invoke-virtual {v0}, Ltl;->n()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Lwj;

    iget-object v1, p0, Lwe;->b:Landroid/content/Context;

    iget-object v2, p0, Lwe;->c:Ltl;

    iget-object v3, p0, Lwe;->g:Lwh;

    invoke-direct {v0, p0, v1, v2, v3}, Lwj;-><init>(Lwe;Landroid/content/Context;Ltl;Landroid/view/View;)V

    .line 328
    new-instance v1, Lwg;

    invoke-direct {v1, p0, v0}, Lwg;-><init>(Lwe;Lwj;)V

    iput-object v1, p0, Lwe;->j:Lwg;

    .line 330
    iget-object v0, p0, Lwe;->f:Lub;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lwe;->j:Lwg;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 334
    const/4 v0, 0x0

    invoke-super {p0, v0}, Ltg;->a(Lue;)Z

    .line 336
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 347
    iget-object v0, p0, Lwe;->j:Lwg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwe;->f:Lub;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lwe;->f:Lub;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lwe;->j:Lwg;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lwe;->j:Lwg;

    move v0, v1

    .line 358
    :goto_0
    return v0

    .line 353
    :cond_0
    iget-object v0, p0, Lwe;->h:Lwj;

    .line 354
    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Ltx;->f()V

    move v0, v1

    .line 356
    goto :goto_0

    .line 358
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lwe;->f()Z

    move-result v0

    .line 367
    invoke-virtual {p0}, Lwe;->h()Z

    move-result v1

    or-int/2addr v0, v1

    .line 368
    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lwe;->i:Lwf;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lwe;->i:Lwf;

    invoke-virtual {v0}, Lwf;->f()V

    .line 379
    const/4 v0, 0x1

    .line 381
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lwe;->h:Lwj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwe;->h:Lwj;

    invoke-virtual {v0}, Lwj;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lwe;->j:Lwg;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lwe;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
