.class public Lcom/google/android/libraries/componentview/components/elements/CardComponent;
.super Lcom/google/android/libraries/componentview/components/base/ViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/componentview/components/elements/Expandable;
.implements Lcom/google/android/libraries/componentview/core/ContainerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/componentview/components/base/ViewComponent",
        "<",
        "Lgvm;",
        ">;",
        "Lcom/google/android/libraries/componentview/components/elements/Expandable;",
        "Lcom/google/android/libraries/componentview/core/ContainerInterface;"
    }
.end annotation


# instance fields
.field e:Lcom/google/android/libraries/componentview/components/elements/api/nano/CardProto$CardArgs;

.field f:Z

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/componentview/core/ComponentInterface;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/componentview/components/elements/CardComponent$CardChild;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private a(ZILjava/lang/Runnable;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/componentview/services/internal/Graft;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 365
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/componentview/core/ComponentInterface;

    .line 366
    invoke-static {v0}, Lcom/google/android/libraries/componentview/core/Utils;->a(Lcom/google/android/libraries/componentview/core/ComponentInterface;)Lcom/google/android/libraries/componentview/core/ComponentInterface;

    move-result-object v1

    .line 367
    instance-of v0, v1, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionControl;

    if-eqz v0, :cond_f

    move-object v0, v1

    .line 368
    check-cast v0, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionControl;

    invoke-interface {v0, p0}, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionControl;->a(Lcom/google/android/libraries/componentview/components/elements/Expandable;)V

    .line 369
    check-cast v1, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionControl;

    invoke-interface {v1, p1}, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionControl;->a(Z)V

    move v0, v6

    :goto_1
    move v2, v0

    .line 372
    goto :goto_0

    .line 375
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 376
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 377
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 378
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$CardChild;

    .line 380
    iget-object v1, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$CardChild;->a:Lcom/google/android/libraries/componentview/core/ComponentInterface;

    instance-of v1, v1, Lcom/google/android/libraries/componentview/components/elements/CardLayoutParamsComponent;

    if-eqz v1, :cond_8

    .line 381
    iget-boolean v1, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$CardChild;->b:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$CardChild;->c:Z

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    :cond_3
    move v1, v6

    .line 394
    :goto_3
    iget-object v9, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$CardChild;->a:Lcom/google/android/libraries/componentview/core/ComponentInterface;

    invoke-interface {v9}, Lcom/google/android/libraries/componentview/core/ComponentInterface;->a()Landroid/view/View;

    move-result-object v9

    .line 395
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    .line 396
    if-eqz v1, :cond_4

    if-nez v10, :cond_5

    :cond_4
    if-nez v1, :cond_1

    if-nez v10, :cond_1

    .line 398
    :cond_5
    if-eqz v1, :cond_a

    .line 402
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 403
    if-eqz p2, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 404
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_6
    new-instance v1, Lcom/google/android/libraries/componentview/services/internal/Graft;

    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$CardChild;->a:Lcom/google/android/libraries/componentview/core/ComponentInterface;

    invoke-interface {v0}, Lcom/google/android/libraries/componentview/core/ComponentInterface;->b()Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    move-result-object v0

    sget-object v9, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;->a:Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    invoke-direct {v1, v0, v9}, Lcom/google/android/libraries/componentview/services/internal/Graft;-><init>(Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;Lcom/google/android/libraries/componentview/services/internal/Graft$Action;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move v1, v5

    .line 381
    goto :goto_3

    .line 382
    :cond_8
    if-eqz v2, :cond_9

    iget-object v1, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$CardChild;->a:Lcom/google/android/libraries/componentview/core/ComponentInterface;

    .line 383
    invoke-static {v1}, Lcom/google/android/libraries/componentview/core/Utils;->a(Lcom/google/android/libraries/componentview/core/ComponentInterface;)Lcom/google/android/libraries/componentview/core/ComponentInterface;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionControl;

    if-nez v1, :cond_9

    .line 385
    const-string v1, "CardComponent"

    const-string v9, "Children of cards with an expander need to be wrapped in a <card-layout-params> (unless they are an expander). Hiding the child."

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 389
    goto :goto_3

    :cond_9
    move v1, v6

    .line 392
    goto :goto_3

    .line 410
    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_c

    .line 411
    :cond_b
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :goto_4
    new-instance v1, Lcom/google/android/libraries/componentview/services/internal/Graft;

    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$CardChild;->a:Lcom/google/android/libraries/componentview/core/ComponentInterface;

    invoke-interface {v0}, Lcom/google/android/libraries/componentview/core/ComponentInterface;->b()Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    move-result-object v0

    sget-object v9, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;->b:Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    invoke-direct {v1, v0, v9}, Lcom/google/android/libraries/componentview/services/internal/Graft;-><init>(Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;Lcom/google/android/libraries/componentview/services/internal/Graft$Action;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 413
    :cond_c
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 422
    :cond_d
    if-eqz p2, :cond_e

    .line 423
    iput-boolean v6, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->f:Z

    .line 425
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->c:Landroid/view/View;

    check-cast v0, Lgvm;

    invoke-virtual {v0}, Lgvm;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;

    move-object v1, p0

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;-><init>(Lcom/google/android/libraries/componentview/components/elements/CardComponent;ILjava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 426
    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 463
    :goto_5
    return-object v7

    .line 459
    :cond_e
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    :cond_f
    move v0, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Z)Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 205
    iget-boolean v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->f:Z

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionResult;

    .line 1064
    sget-object v1, Lkxr;->a:Lksf;

    .line 206
    invoke-direct {v0, v3, v1}, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionResult;-><init>(ZLjava/util/List;)V

    .line 237
    :goto_0
    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->e:Lcom/google/android/libraries/componentview/components/elements/api/nano/CardProto$CardArgs;

    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/components/elements/api/nano/CardProto$CardArgs;->d()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 209
    new-instance v0, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionResult;

    .line 2064
    sget-object v1, Lkxr;->a:Lksf;

    .line 209
    invoke-direct {v0, v2, v1}, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionResult;-><init>(ZLjava/util/List;)V

    goto :goto_0

    .line 212
    :cond_1
    if-eqz p1, :cond_2

    .line 213
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->h:I

    new-instance v1, Lcom/google/android/libraries/componentview/components/elements/CardComponent$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/componentview/components/elements/CardComponent$1;-><init>(Lcom/google/android/libraries/componentview/components/elements/CardComponent;)V

    .line 214
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->a(ZILjava/lang/Runnable;)Ljava/util/List;

    move-result-object v0

    .line 237
    :goto_1
    new-instance v1, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionResult;

    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/componentview/components/elements/Expandable$ExpansionResult;-><init>(ZLjava/util/List;)V

    move-object v0, v1

    goto :goto_0

    .line 225
    :cond_2
    iget v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->h:I

    new-instance v1, Lcom/google/android/libraries/componentview/components/elements/CardComponent$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/componentview/components/elements/CardComponent$2;-><init>(Lcom/google/android/libraries/componentview/components/elements/CardComponent;)V

    .line 226
    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->a(ZILjava/lang/Runnable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
