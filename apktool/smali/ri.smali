.class public Lri;
.super Lrh;
.source "SourceFile"

# interfaces
.implements Ljm;
.implements Ltm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrh;",
        "Landroid/support/v4/view/LayoutInflaterFactory;",
        "Ltm;"
    }
.end annotation


# instance fields
.field public A:Landroid/view/View;

.field B:Z

.field C:Z

.field D:Z

.field E:[Lry;

.field F:Lry;

.field G:Z

.field H:Z

.field I:I

.field final J:Ljava/lang/Runnable;

.field K:Z

.field public L:Landroid/graphics/Rect;

.field public M:Landroid/graphics/Rect;

.field N:Lsf;

.field public final a:Landroid/content/Context;

.field final b:Landroid/view/Window;

.field final c:Landroid/view/Window$Callback;

.field final d:Landroid/view/Window$Callback;

.field final e:Lrg;

.field f:Lqe;

.field g:Landroid/view/MenuInflater;

.field h:Z

.field i:Z

.field public j:Z

.field k:Z

.field l:Z

.field m:Ljava/lang/CharSequence;

.field n:Z

.field o:Lve;

.field p:Lru;

.field q:Lrz;

.field r:Lwb;

.field public s:Landroid/support/v7/internal/widget/ActionBarContextView;

.field t:Landroid/widget/PopupWindow;

.field u:Ljava/lang/Runnable;

.field v:Lmd;

.field w:Z

.field x:Landroid/view/ViewGroup;

.field public y:Landroid/view/ViewGroup;

.field z:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lrg;)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lrh;-><init>()V

    .line 65
    iput-object p1, p0, Lri;->a:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lri;->b:Landroid/view/Window;

    .line 67
    iput-object p3, p0, Lri;->e:Lrg;

    .line 69
    iget-object v0, p0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    .line 70
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Lrk;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    invoke-virtual {p0, v0}, Lri;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Lri;->d:Landroid/view/Window$Callback;

    .line 76
    iget-object v0, p0, Lri;->b:Landroid/view/Window;

    iget-object v1, p0, Lri;->d:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lrg;B)V
    .locals 1

    .prologue
    .line 9147
    invoke-direct {p0, p1, p2, p3}, Lri;-><init>(Landroid/content/Context;Landroid/view/Window;Lrg;)V

    .line 9103
    const/4 v0, 0x0

    iput-object v0, p0, Lri;->v:Lmd;

    .line 9125
    new-instance v0, Lrq;

    invoke-direct {v0, p0}, Lrq;-><init>(Lri;)V

    iput-object v0, p0, Lri;->J:Ljava/lang/Runnable;

    .line 9148
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 25989
    invoke-virtual {p0, p2, p3, p4}, Lri;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 25990
    if-eqz v0, :cond_0

    .line 25995
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lri;->b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26000
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_0

    .line 26001
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 26003
    if-eqz v0, :cond_0

    .line 26007
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lrk;

    invoke-direct {v0, p0, p1}, Lrk;-><init>(Lri;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public a()Lqe;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lri;->k()V

    .line 90
    iget-object v0, p0, Lri;->f:Lqe;

    return-object v0
.end method

.method a(Landroid/view/Menu;)Lry;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 34472
    iget-object v3, p0, Lri;->E:[Lry;

    .line 34473
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 34474
    :goto_1
    if-ge v2, v0, :cond_2

    .line 34475
    aget-object v1, v3, v2

    .line 34476
    if-eqz v1, :cond_1

    iget-object v4, v1, Lry;->j:Ltl;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 34480
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 34473
    goto :goto_0

    .line 34474
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 34480
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method a(Lwc;)Lwb;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6672
    invoke-virtual {p0}, Lri;->o()V

    .line 6673
    iget-object v0, p0, Lri;->r:Lwb;

    if-eqz v0, :cond_0

    .line 6674
    iget-object v0, p0, Lri;->r:Lwb;

    invoke-virtual {v0}, Lwb;->c()V

    .line 6677
    :cond_0
    new-instance v3, Lrv;

    invoke-direct {v3, p0, p1}, Lrv;-><init>(Lri;Lwc;)V

    .line 6690
    iget-object v0, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-nez v0, :cond_1

    .line 6691
    iget-boolean v0, p0, Lri;->k:Z

    if-eqz v0, :cond_5

    .line 6693
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 6694
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 6695
    sget v5, Laen;->y:I

    invoke-virtual {v0, v5, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 6698
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_4

    .line 6699
    iget-object v5, p0, Lri;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 6700
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 6701
    iget v0, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 6703
    new-instance v0, Lst;

    iget-object v6, p0, Lri;->a:Landroid/content/Context;

    invoke-direct {v0, v6, v2}, Lst;-><init>(Landroid/content/Context;I)V

    .line 6704
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 6709
    :goto_0
    new-instance v5, Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-direct {v5, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 6710
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Laen;->B:I

    invoke-direct {v5, v0, v7, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lri;->t:Landroid/widget/PopupWindow;

    .line 6712
    iget-object v5, p0, Lri;->t:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lpj;->a(Landroid/widget/PopupWindow;I)V

    .line 6714
    iget-object v5, p0, Lri;->t:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6715
    iget-object v5, p0, Lri;->t:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6717
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Laen;->u:I

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 6719
    iget v4, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 6721
    iget-object v4, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(I)V

    .line 6722
    iget-object v0, p0, Lri;->t:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6723
    new-instance v0, Lrr;

    invoke-direct {v0, p0}, Lrr;-><init>(Lri;)V

    iput-object v0, p0, Lri;->u:Ljava/lang/Runnable;

    .line 6757
    :cond_1
    :goto_1
    iget-object v0, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    .line 6758
    invoke-virtual {p0}, Lri;->o()V

    .line 6759
    iget-object v0, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->e()V

    .line 6760
    new-instance v4, Lsu;

    iget-object v0, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    iget-object v0, p0, Lri;->t:Landroid/widget/PopupWindow;

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    invoke-direct {v4, v5, v6, v3, v0}, Lsu;-><init>(Landroid/content/Context;Landroid/support/v7/internal/widget/ActionBarContextView;Lwc;Z)V

    .line 6762
    invoke-virtual {v4}, Lwb;->b()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lwc;->a(Lwb;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6763
    invoke-virtual {v4}, Lwb;->d()V

    .line 6764
    iget-object v0, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Lwb;)V

    .line 6765
    iput-object v4, p0, Lri;->r:Lwb;

    .line 6766
    iget-object v0, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lks;->c(Landroid/view/View;F)V

    .line 6767
    iget-object v0, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 7447
    sget-object v1, Lks;->a:Llc;

    invoke-virtual {v1, v0}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v0

    .line 6767
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lmd;->a(F)Lmd;

    move-result-object v0

    iput-object v0, p0, Lri;->v:Lmd;

    .line 6768
    iget-object v0, p0, Lri;->v:Lmd;

    new-instance v1, Lrt;

    invoke-direct {v1, p0}, Lrt;-><init>(Lri;)V

    invoke-virtual {v0, v1}, Lmd;->a(Lmn;)Lmd;

    .line 6786
    iget-object v0, p0, Lri;->t:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 6787
    iget-object v0, p0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lri;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 6794
    :cond_2
    :goto_3
    iget-object v0, p0, Lri;->r:Lwb;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lri;->e:Lrg;

    if-eqz v0, :cond_3

    .line 6795
    iget-object v0, p0, Lri;->e:Lrg;

    iget-object v1, p0, Lri;->r:Lwb;

    invoke-interface {v0, v1}, Lrg;->a(Lwb;)V

    .line 6797
    :cond_3
    iget-object v0, p0, Lri;->r:Lwb;

    return-object v0

    .line 6706
    :cond_4
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    goto/16 :goto_0

    .line 6747
    :cond_5
    iget-object v0, p0, Lri;->y:Landroid/view/ViewGroup;

    sget v4, Laal;->aA:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ViewStubCompat;

    .line 6749
    if-eqz v0, :cond_1

    .line 6751
    invoke-virtual {p0}, Lri;->l()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ViewStubCompat;->a(Landroid/view/LayoutInflater;)V

    .line 6752
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 6760
    goto :goto_2

    .line 6790
    :cond_7
    iput-object v7, p0, Lri;->r:Lwb;

    goto :goto_3
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 10256
    invoke-virtual {p0}, Lri;->n()V

    .line 10257
    iget-object v0, p0, Lri;->y:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 10258
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10259
    iget-object v1, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10260
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 10261
    return-void
.end method

.method a(ILry;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 33445
    if-nez p3, :cond_1

    .line 33447
    if-nez p2, :cond_0

    .line 33448
    if-ltz p1, :cond_0

    iget-object v0, p0, Lri;->E:[Lry;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 33449
    iget-object v0, p0, Lri;->E:[Lry;

    aget-object p2, v0, p1

    .line 33453
    :cond_0
    if-eqz p2, :cond_1

    .line 33455
    iget-object p3, p2, Lry;->j:Ltl;

    .line 33460
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Lry;->o:Z

    if-nez v0, :cond_3

    .line 33469
    :cond_2
    :goto_0
    return-void

    .line 34195
    :cond_3
    iget-boolean v0, p0, Lri;->n:Z

    .line 33463
    if-nez v0, :cond_2

    .line 33467
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 10219
    iget-boolean v0, p0, Lri;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lri;->w:Z

    if-eqz v0, :cond_0

    .line 10222
    invoke-virtual {p0}, Lri;->a()Lqe;

    move-result-object v0

    .line 10223
    if-eqz v0, :cond_0

    .line 10224
    invoke-virtual {v0, p1}, Lqe;->a(Landroid/content/res/Configuration;)V

    .line 10227
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/Toolbar;)V
    .locals 3

    .prologue
    .line 10194
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 10213
    :goto_0
    return-void

    .line 10199
    :cond_0
    invoke-virtual {p0}, Lri;->a()Lqe;

    move-result-object v0

    .line 10200
    instance-of v0, v0, Lsn;

    if-eqz v0, :cond_1

    .line 10201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10206
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lri;->g:Landroid/view/MenuInflater;

    .line 10208
    new-instance v1, Lsh;

    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lri;->d:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v0, v2}, Lsh;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 10210
    iput-object v1, p0, Lri;->f:Lqe;

    .line 10211
    iget-object v0, p0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v1}, Lsh;->k()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 10212
    invoke-virtual {v1}, Lsh;->i()Z

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 10247
    invoke-virtual {p0}, Lri;->n()V

    .line 10248
    iget-object v0, p0, Lri;->y:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 10249
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10250
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10251
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 10252
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 10265
    invoke-virtual {p0}, Lri;->n()V

    .line 10266
    iget-object v0, p0, Lri;->y:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 10267
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10268
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10269
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 10270
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lri;->m:Ljava/lang/CharSequence;

    .line 205
    invoke-virtual {p0, p1}, Lri;->b(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method a(Lry;Landroid/view/KeyEvent;)V
    .locals 10

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    const/4 v9, 0x1

    .line 26012
    iget-boolean v0, p1, Lry;->o:Z

    if-nez v0, :cond_0

    .line 26195
    iget-boolean v0, p0, Lri;->n:Z

    .line 26012
    if-eqz v0, :cond_1

    .line 26108
    :cond_0
    :goto_0
    return-void

    .line 26018
    :cond_1
    iget v0, p1, Lry;->a:I

    if-nez v0, :cond_2

    .line 26019
    iget-object v4, p0, Lri;->a:Landroid/content/Context;

    .line 26020
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 26021
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    move v0, v9

    .line 26023
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    move v4, v9

    .line 26026
    :goto_2
    if-eqz v0, :cond_2

    if-nez v4, :cond_0

    .line 26199
    :cond_2
    iget-object v0, p0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 26032
    if-eqz v0, :cond_5

    iget v4, p1, Lry;->a:I

    iget-object v5, p1, Lry;->j:Ltl;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 26034
    invoke-virtual {p0, p1, v9}, Lri;->a(Lry;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 26021
    goto :goto_1

    :cond_4
    move v4, v3

    .line 26023
    goto :goto_2

    .line 26038
    :cond_5
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 26039
    if-eqz v8, :cond_0

    .line 26044
    invoke-virtual {p0, p1, p2}, Lri;->b(Lry;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26049
    iget-object v0, p1, Lry;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lry;->q:Z

    if-eqz v0, :cond_f

    .line 26050
    :cond_6
    iget-object v0, p1, Lry;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 27111
    invoke-virtual {p0}, Lri;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lry;->a(Landroid/content/Context;)V

    .line 27112
    new-instance v0, Lrx;

    iget-object v1, p1, Lry;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lrx;-><init>(Lri;Landroid/content/Context;)V

    iput-object v0, p1, Lry;->g:Landroid/view/ViewGroup;

    .line 27113
    const/16 v0, 0x51

    iput v0, p1, Lry;->c:I

    .line 26052
    iget-object v0, p1, Lry;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 27205
    :cond_7
    :goto_3
    iget-object v0, p1, Lry;->i:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 27206
    iget-object v0, p1, Lry;->i:Landroid/view/View;

    iput-object v0, p1, Lry;->h:Landroid/view/View;

    move v0, v9

    .line 26060
    :goto_4
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lry;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26064
    iget-object v0, p1, Lry;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 26065
    if-nez v0, :cond_11

    .line 26066
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 26069
    :goto_5
    iget v0, p1, Lry;->b:I

    .line 26070
    iget-object v4, p1, Lry;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 26072
    iget-object v0, p1, Lry;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 26073
    if-eqz v0, :cond_8

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 26074
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Lry;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26076
    :cond_8
    iget-object v0, p1, Lry;->g:Landroid/view/ViewGroup;

    iget-object v4, p1, Lry;->h:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26082
    iget-object v0, p1, Lry;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 26083
    iget-object v0, p1, Lry;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    move v1, v2

    .line 26094
    :cond_a
    :goto_6
    iput-boolean v3, p1, Lry;->n:Z

    .line 26096
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Lry;->d:I

    iget v4, p1, Lry;->e:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 26103
    iget v1, p1, Lry;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 26104
    iget v1, p1, Lry;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 26106
    iget-object v1, p1, Lry;->g:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26107
    iput-boolean v9, p1, Lry;->o:Z

    goto/16 :goto_0

    .line 26054
    :cond_b
    iget-boolean v0, p1, Lry;->q:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Lry;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 26056
    iget-object v0, p1, Lry;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_3

    .line 27210
    :cond_c
    iget-object v0, p1, Lry;->j:Ltl;

    if-eqz v0, :cond_e

    .line 27214
    iget-object v0, p0, Lri;->q:Lrz;

    if-nez v0, :cond_d

    .line 27215
    new-instance v0, Lrz;

    .line 27740
    invoke-direct {v0, p0}, Lrz;-><init>(Lri;)V

    .line 27215
    iput-object v0, p0, Lri;->q:Lrz;

    .line 27218
    :cond_d
    iget-object v0, p0, Lri;->q:Lrz;

    invoke-virtual {p1, v0}, Lry;->a(Lua;)Lub;

    move-result-object v0

    .line 27220
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Lry;->h:Landroid/view/View;

    .line 27222
    iget-object v0, p1, Lry;->h:Landroid/view/View;

    if-eqz v0, :cond_e

    move v0, v9

    goto/16 :goto_4

    :cond_e
    move v0, v3

    goto/16 :goto_4

    .line 26085
    :cond_f
    iget-object v0, p1, Lry;->i:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 26088
    iget-object v0, p1, Lry;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 26089
    if-eqz v0, :cond_10

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_a

    :cond_10
    move v1, v2

    goto :goto_6

    :cond_11
    move-object v1, v0

    goto/16 :goto_5
.end method

.method a(Lry;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 33348
    if-eqz p2, :cond_1

    iget v0, p1, Lry;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lri;->o:Lve;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lri;->o:Lve;

    invoke-interface {v0}, Lve;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33350
    iget-object v0, p1, Lry;->j:Ltl;

    invoke-virtual {p0, v0}, Lri;->b(Ltl;)V

    .line 33377
    :cond_0
    :goto_0
    return-void

    .line 33354
    :cond_1
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 33355
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Lry;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lry;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 33356
    iget-object v1, p1, Lry;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 33358
    if-eqz p2, :cond_2

    .line 33359
    iget v0, p1, Lry;->a:I

    invoke-virtual {p0, v0, p1, v3}, Lri;->a(ILry;Landroid/view/Menu;)V

    .line 33363
    :cond_2
    iput-boolean v2, p1, Lry;->m:Z

    .line 33364
    iput-boolean v2, p1, Lry;->n:Z

    .line 33365
    iput-boolean v2, p1, Lry;->o:Z

    .line 33368
    iput-object v3, p1, Lry;->h:Landroid/view/View;

    .line 33372
    const/4 v0, 0x1

    iput-boolean v0, p1, Lry;->q:Z

    .line 33374
    iget-object v0, p0, Lri;->F:Lry;

    if-ne v0, p1, :cond_0

    .line 33375
    iput-object v3, p0, Lri;->F:Lry;

    goto :goto_0
.end method

.method public a(Ltl;)V
    .locals 6

    .prologue
    const/16 v5, 0x6c

    const/4 v4, 0x0

    .line 17118
    iget-object v0, p0, Lri;->o:Lve;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lri;->o:Lve;

    invoke-interface {v0}, Lve;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 18113
    sget-object v1, Lle;->a:Lli;

    invoke-virtual {v1, v0}, Lli;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    .line 17118
    if-eqz v0, :cond_0

    iget-object v0, p0, Lri;->o:Lve;

    invoke-interface {v0}, Lve;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18199
    :cond_0
    iget-object v0, p0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 17124
    iget-object v1, p0, Lri;->o:Lve;

    invoke-interface {v1}, Lve;->i()Z

    move-result v1

    if-nez v1, :cond_3

    .line 17125
    if-eqz v0, :cond_2

    .line 19195
    iget-boolean v1, p0, Lri;->n:Z

    .line 17125
    if-nez v1, :cond_2

    .line 17127
    iget-boolean v1, p0, Lri;->H:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lri;->I:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 17129
    iget-object v1, p0, Lri;->x:Landroid/view/ViewGroup;

    iget-object v2, p0, Lri;->J:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17130
    iget-object v1, p0, Lri;->J:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 17133
    :cond_1
    invoke-virtual {p0, v4}, Lri;->e(I)Lry;

    move-result-object v1

    .line 17137
    iget-object v2, v1, Lry;->j:Ltl;

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lry;->r:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Lry;->i:Landroid/view/View;

    iget-object v3, v1, Lry;->j:Ltl;

    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17139
    iget-object v1, v1, Lry;->j:Ltl;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 17140
    iget-object v0, p0, Lri;->o:Lve;

    invoke-interface {v0}, Lve;->k()Z

    .line 17150
    :cond_2
    :goto_0
    return-void

    .line 17144
    :cond_3
    iget-object v1, p0, Lri;->o:Lve;

    invoke-interface {v1}, Lve;->l()Z

    .line 20195
    iget-boolean v1, p0, Lri;->n:Z

    .line 17145
    if-nez v1, :cond_2

    .line 17146
    invoke-virtual {p0, v4}, Lri;->e(I)Lry;

    move-result-object v1

    .line 17147
    iget-object v1, v1, Lry;->j:Ltl;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 17153
    :cond_4
    invoke-virtual {p0, v4}, Lri;->e(I)Lry;

    move-result-object v0

    .line 17155
    const/4 v1, 0x1

    iput-boolean v1, v0, Lry;->q:Z

    .line 17156
    invoke-virtual {p0, v0, v4}, Lri;->a(Lry;Z)V

    .line 17158
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lri;->a(Lry;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5826
    invoke-virtual {p0}, Lri;->a()Lqe;

    move-result-object v2

    .line 5827
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lqe;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5857
    :cond_0
    :goto_0
    return v0

    .line 5833
    :cond_1
    iget-object v2, p0, Lri;->F:Lry;

    if-eqz v2, :cond_2

    .line 5834
    iget-object v2, p0, Lri;->F:Lry;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p0, v2, v3, p2}, Lri;->a(Lry;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 5836
    if-eqz v2, :cond_2

    .line 5837
    iget-object v1, p0, Lri;->F:Lry;

    if-eqz v1, :cond_0

    .line 5838
    iget-object v1, p0, Lri;->F:Lry;

    iput-boolean v0, v1, Lry;->n:Z

    goto :goto_0

    .line 5848
    :cond_2
    iget-object v2, p0, Lri;->F:Lry;

    if-nez v2, :cond_3

    .line 5849
    invoke-virtual {p0, v1}, Lri;->e(I)Lry;

    move-result-object v2

    .line 5850
    invoke-virtual {p0, v2, p2}, Lri;->b(Lry;Landroid/view/KeyEvent;)Z

    .line 5851
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p0, v2, v3, p2}, Lri;->a(Lry;ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 5852
    iput-boolean v1, v2, Lry;->m:Z

    .line 5853
    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    .line 5857
    goto :goto_0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4862
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_0

    .line 4864
    iget-object v1, p0, Lri;->c:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4873
    :goto_0
    return v0

    .line 4869
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 4870
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 4871
    if-nez v2, :cond_1

    .line 4873
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, p1}, Lri;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 4871
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4873
    :cond_2
    invoke-virtual {p0, v1, p1}, Lri;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method a(Lry;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34502
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34522
    :cond_0
    :goto_0
    return v0

    .line 34510
    :cond_1
    iget-boolean v1, p1, Lry;->m:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p3}, Lri;->b(Lry;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p1, Lry;->j:Ltl;

    if-eqz v1, :cond_0

    .line 34512
    iget-object v0, p1, Lry;->j:Ltl;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Ltl;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ltl;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 15199
    iget-object v0, p0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 14620
    if-eqz v0, :cond_0

    .line 16195
    iget-boolean v1, p0, Lri;->n:Z

    .line 14620
    if-nez v1, :cond_0

    .line 14621
    invoke-virtual {p1}, Ltl;->r()Ltl;

    move-result-object v1

    invoke-virtual {p0, v1}, Lri;->a(Landroid/view/Menu;)Lry;

    move-result-object v1

    .line 14622
    if-eqz v1, :cond_0

    .line 14623
    iget v1, v1, Lry;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 14626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lri;->g:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lri;->k()V

    .line 102
    new-instance v1, Lsx;

    iget-object v0, p0, Lri;->f:Lqe;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lri;->f:Lqe;

    invoke-virtual {v0}, Lqe;->g()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lsx;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lri;->g:Landroid/view/MenuInflater;

    .line 105
    :cond_0
    iget-object v0, p0, Lri;->g:Landroid/view/MenuInflater;

    return-object v0

    .line 102
    :cond_1
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method public b(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 23931
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4

    move v2, v3

    .line 23933
    :goto_0
    iget-object v0, p0, Lri;->N:Lsf;

    if-nez v0, :cond_0

    .line 23934
    new-instance v0, Lsf;

    invoke-direct {v0}, Lsf;-><init>()V

    iput-object v0, p0, Lri;->N:Lsf;

    .line 23938
    :cond_0
    if-eqz v2, :cond_8

    iget-boolean v0, p0, Lri;->w:Z

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    .line 23948
    if-nez v0, :cond_a

    move v0, v4

    .line 23938
    :goto_1
    if-eqz v0, :cond_8

    move v0, v3

    .line 23941
    :goto_2
    iget-object v5, p0, Lri;->N:Lsf;

    .line 25082
    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 25083
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 25087
    :goto_3
    invoke-static {v0, p4, v2, v3}, Lsf;->a(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object v2

    .line 25090
    const/4 v0, 0x0

    .line 25093
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    move v4, v1

    :goto_4
    packed-switch v4, :pswitch_data_0

    .line 25135
    :goto_5
    if-nez v0, :cond_2

    if-eq p3, v2, :cond_2

    .line 25138
    invoke-virtual {v5, v2, p2, p4}, Lsf;->a(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 25141
    :cond_2
    if-eqz v0, :cond_3

    .line 25143
    invoke-static {v0, p4}, Lsf;->a(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 23941
    :cond_3
    return-object v0

    :cond_4
    move v2, v4

    .line 23931
    goto :goto_0

    .line 23967
    :cond_5
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 23953
    :goto_6
    if-nez v1, :cond_6

    move v0, v3

    .line 23958
    goto :goto_1

    .line 23959
    :cond_6
    iget-object v0, p0, Lri;->x:Landroid/view/ViewGroup;

    if-eq v1, v0, :cond_7

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 24206
    sget-object v5, Lks;->a:Llc;

    invoke-virtual {v5, v0}, Llc;->A(Landroid/view/View;)Z

    move-result v0

    .line 23959
    if-eqz v0, :cond_5

    :cond_7
    move v0, v4

    .line 23965
    goto :goto_1

    :cond_8
    move v0, v4

    .line 23938
    goto :goto_2

    .line 25093
    :sswitch_0
    const-string v3, "TextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :sswitch_1
    const-string v4, "ImageView"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_4

    :sswitch_2
    const-string v3, "Button"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    goto :goto_4

    :sswitch_3
    const-string v3, "EditText"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    goto :goto_4

    :sswitch_4
    const-string v3, "Spinner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x4

    goto :goto_4

    :sswitch_5
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x5

    goto :goto_4

    :sswitch_6
    const-string v3, "CheckBox"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x6

    goto :goto_4

    :sswitch_7
    const-string v3, "RadioButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x7

    goto :goto_4

    :sswitch_8
    const-string v3, "CheckedTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0x8

    goto/16 :goto_4

    :sswitch_9
    const-string v3, "AutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0x9

    goto/16 :goto_4

    :sswitch_a
    const-string v3, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0xa

    goto/16 :goto_4

    :sswitch_b
    const-string v3, "RatingBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0xb

    goto/16 :goto_4

    :sswitch_c
    const-string v3, "SeekBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0xc

    goto/16 :goto_4

    .line 25095
    :pswitch_0
    new-instance v0, Lxr;

    invoke-direct {v0, v2, p4}, Lxr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_5

    .line 25098
    :pswitch_1
    new-instance v0, Lxb;

    invoke-direct {v0, v2, p4}, Lxb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_5

    .line 25101
    :pswitch_2
    new-instance v0, Lwu;

    invoke-direct {v0, v2, p4}, Lwu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_5

    .line 25104
    :pswitch_3
    new-instance v0, Lwy;

    invoke-direct {v0, v2, p4}, Lwy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_5

    .line 25107
    :pswitch_4
    new-instance v0, Lxi;

    invoke-direct {v0, v2, p4}, Lxi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_5

    .line 25110
    :pswitch_5
    new-instance v0, Lwz;

    invoke-direct {v0, v2, p4}, Lwz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_5

    .line 25113
    :pswitch_6
    new-instance v0, Lwv;

    invoke-direct {v0, v2, p4}, Lwv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_5

    .line 25116
    :pswitch_7
    new-instance v0, Lxe;

    invoke-direct {v0, v2, p4}, Lxe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_5

    .line 25119
    :pswitch_8
    new-instance v0, Lww;

    invoke-direct {v0, v2, p4}, Lww;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_5

    .line 25122
    :pswitch_9
    new-instance v0, Lws;

    invoke-direct {v0, v2, p4}, Lws;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_5

    .line 25125
    :pswitch_a
    new-instance v0, Lxc;

    invoke-direct {v0, v2, p4}, Lxc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_5

    .line 25128
    :pswitch_b
    new-instance v0, Lxf;

    invoke-direct {v0, v2, p4}, Lxf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_5

    .line 25131
    :pswitch_c
    new-instance v0, Lxg;

    invoke-direct {v0, v2, p4}, Lxg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_5

    :cond_9
    move-object v0, p3

    goto/16 :goto_3

    :cond_a
    move-object v1, v0

    goto/16 :goto_6

    .line 25093
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_b
        -0x56c015e7 -> :sswitch_8
        -0x503aa7ad -> :sswitch_a
        -0x37f7066e -> :sswitch_0
        -0x37e04bb3 -> :sswitch_5
        -0x274065a5 -> :sswitch_c
        -0x1440b607 -> :sswitch_4
        0x2e46a6ed -> :sswitch_7
        0x431b5280 -> :sswitch_1
        0x5445f9ba -> :sswitch_9
        0x5f7507c3 -> :sswitch_6
        0x63577677 -> :sswitch_3
        0x77471352 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public b(Lwc;)Lwb;
    .locals 3

    .prologue
    .line 20640
    iget-object v0, p0, Lri;->r:Lwb;

    if-eqz v0, :cond_0

    .line 20641
    iget-object v0, p0, Lri;->r:Lwb;

    invoke-virtual {v0}, Lwb;->c()V

    .line 20644
    :cond_0
    new-instance v0, Lrv;

    invoke-direct {v0, p0, p1}, Lrv;-><init>(Lri;Lwc;)V

    .line 20646
    invoke-virtual {p0}, Lri;->a()Lqe;

    move-result-object v1

    .line 20647
    if-eqz v1, :cond_1

    .line 20648
    invoke-virtual {v1, v0}, Lqe;->a(Lwc;)Lwb;

    move-result-object v1

    iput-object v1, p0, Lri;->r:Lwb;

    .line 20649
    iget-object v1, p0, Lri;->r:Lwb;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lri;->e:Lrg;

    if-eqz v1, :cond_1

    .line 20650
    iget-object v1, p0, Lri;->e:Lrg;

    iget-object v2, p0, Lri;->r:Lwb;

    invoke-interface {v1, v2}, Lrg;->a(Lwb;)V

    .line 20654
    :cond_1
    iget-object v1, p0, Lri;->r:Lwb;

    if-nez v1, :cond_2

    .line 20656
    invoke-virtual {p0, v0}, Lri;->a(Lwc;)Lwb;

    move-result-object v0

    iput-object v0, p0, Lri;->r:Lwb;

    .line 20659
    :cond_2
    iget-object v0, p0, Lri;->r:Lwb;

    return-object v0
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 10274
    invoke-virtual {p0}, Lri;->n()V

    .line 10275
    iget-object v0, p0, Lri;->y:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 10276
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10277
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 10278
    return-void
.end method

.method b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 7579
    iget-object v0, p0, Lri;->o:Lve;

    if-eqz v0, :cond_1

    .line 7580
    iget-object v0, p0, Lri;->o:Lve;

    invoke-interface {v0, p1}, Lve;->a(Ljava/lang/CharSequence;)V

    .line 7586
    :cond_0
    :goto_0
    return-void

    .line 8094
    :cond_1
    iget-object v0, p0, Lri;->f:Lqe;

    .line 7581
    if-eqz v0, :cond_2

    .line 9094
    iget-object v0, p0, Lri;->f:Lqe;

    .line 7582
    invoke-virtual {v0, p1}, Lqe;->c(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7583
    :cond_2
    iget-object v0, p0, Lri;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7584
    iget-object v0, p0, Lri;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method b(Ltl;)V
    .locals 2

    .prologue
    .line 31330
    iget-boolean v0, p0, Lri;->D:Z

    if-eqz v0, :cond_0

    .line 31341
    :goto_0
    return-void

    .line 31334
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lri;->D:Z

    .line 31335
    iget-object v0, p0, Lri;->o:Lve;

    invoke-interface {v0}, Lve;->n()V

    .line 32199
    iget-object v0, p0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 31337
    if-eqz v0, :cond_1

    .line 33195
    iget-boolean v1, p0, Lri;->n:Z

    .line 31337
    if-nez v1, :cond_1

    .line 31338
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 31340
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lri;->D:Z

    goto :goto_0
.end method

.method public b(I)Z
    .locals 4

    .prologue
    const/16 v0, 0x6c

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 13645
    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    move p1, v0

    .line 13519
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lri;->l:Z

    if-eqz v3, :cond_2

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 13554
    :goto_1
    return v0

    .line 13649
    :cond_1
    const/16 v3, 0x9

    if-ne p1, v3, :cond_0

    .line 13652
    const/16 p1, 0x6d

    goto :goto_0

    .line 13522
    :cond_2
    iget-boolean v0, p0, Lri;->h:Z

    if-eqz v0, :cond_3

    if-ne p1, v2, :cond_3

    .line 13524
    iput-boolean v1, p0, Lri;->h:Z

    .line 13527
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 13554
    iget-object v0, p0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_1

    .line 13529
    :sswitch_0
    invoke-virtual {p0}, Lri;->q()V

    .line 13530
    iput-boolean v2, p0, Lri;->h:Z

    move v0, v2

    .line 13531
    goto :goto_1

    .line 13533
    :sswitch_1
    invoke-virtual {p0}, Lri;->q()V

    .line 13534
    iput-boolean v2, p0, Lri;->i:Z

    move v0, v2

    .line 13535
    goto :goto_1

    .line 13537
    :sswitch_2
    invoke-virtual {p0}, Lri;->q()V

    .line 13538
    iput-boolean v2, p0, Lri;->j:Z

    move v0, v2

    .line 13539
    goto :goto_1

    .line 13541
    :sswitch_3
    invoke-virtual {p0}, Lri;->q()V

    .line 13542
    iput-boolean v2, p0, Lri;->B:Z

    move v0, v2

    .line 13543
    goto :goto_1

    .line 13545
    :sswitch_4
    invoke-virtual {p0}, Lri;->q()V

    .line 13546
    iput-boolean v2, p0, Lri;->C:Z

    move v0, v2

    .line 13547
    goto :goto_1

    .line 13549
    :sswitch_5
    invoke-virtual {p0}, Lri;->q()V

    .line 13550
    iput-boolean v2, p0, Lri;->l:Z

    move v0, v2

    .line 13551
    goto :goto_1

    .line 13527
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20877
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v2

    .line 20900
    :goto_0
    return v0

    .line 21391
    :sswitch_0
    iget-object v0, p0, Lri;->r:Lwb;

    if-nez v0, :cond_1

    .line 21396
    invoke-virtual {p0, v2}, Lri;->e(I)Lry;

    move-result-object v3

    .line 21397
    iget-object v0, p0, Lri;->o:Lve;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lri;->o:Lve;

    invoke-interface {v0}, Lve;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 22113
    sget-object v4, Lle;->a:Lli;

    invoke-virtual {v4, v0}, Lli;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    .line 21397
    if-nez v0, :cond_3

    .line 21400
    iget-object v0, p0, Lri;->o:Lve;

    invoke-interface {v0}, Lve;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 22195
    iget-boolean v0, p0, Lri;->n:Z

    .line 21401
    if-nez v0, :cond_8

    invoke-virtual {p0, v3, p2}, Lri;->b(Lry;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21402
    iget-object v0, p0, Lri;->o:Lve;

    invoke-interface {v0}, Lve;->k()Z

    move-result v0

    .line 21431
    :goto_1
    if-eqz v0, :cond_1

    .line 21432
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 21434
    if-eqz v0, :cond_1

    .line 21435
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    move v0, v1

    .line 20880
    goto :goto_0

    .line 21405
    :cond_2
    iget-object v0, p0, Lri;->o:Lve;

    invoke-interface {v0}, Lve;->l()Z

    move-result v0

    goto :goto_1

    .line 21408
    :cond_3
    iget-boolean v0, v3, Lry;->o:Z

    if-nez v0, :cond_4

    iget-boolean v0, v3, Lry;->n:Z

    if-eqz v0, :cond_5

    .line 21411
    :cond_4
    iget-boolean v0, v3, Lry;->o:Z

    .line 21413
    invoke-virtual {p0, v3, v1}, Lri;->a(Lry;Z)V

    goto :goto_1

    .line 21414
    :cond_5
    iget-boolean v0, v3, Lry;->m:Z

    if-eqz v0, :cond_8

    .line 21416
    iget-boolean v0, v3, Lry;->r:Z

    if-eqz v0, :cond_9

    .line 21419
    iput-boolean v2, v3, Lry;->m:Z

    .line 21420
    invoke-virtual {p0, v3, p2}, Lri;->b(Lry;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 21423
    :goto_2
    if-eqz v0, :cond_8

    .line 21425
    invoke-virtual {p0, v3, p2}, Lri;->a(Lry;Landroid/view/KeyEvent;)V

    move v0, v1

    .line 21426
    goto :goto_1

    .line 20882
    :sswitch_1
    iget-boolean v0, p0, Lri;->G:Z

    .line 20883
    iput-boolean v2, p0, Lri;->G:Z

    .line 20885
    invoke-virtual {p0, v2}, Lri;->e(I)Lry;

    move-result-object v3

    .line 20886
    if-eqz v3, :cond_7

    iget-boolean v4, v3, Lry;->o:Z

    if-eqz v4, :cond_7

    .line 20887
    if-nez v0, :cond_6

    .line 20891
    invoke-virtual {p0, v3, v1}, Lri;->a(Lry;Z)V

    :cond_6
    move v0, v1

    .line 20893
    goto/16 :goto_0

    .line 20895
    :cond_7
    invoke-virtual {p0}, Lri;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 20896
    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_2

    .line 20877
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method b(Lry;Landroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    const/16 v5, 0x6c

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 29195
    iget-boolean v0, p0, Lri;->n:Z

    .line 28226
    if-eqz v0, :cond_1

    .line 28326
    :cond_0
    :goto_0
    return v4

    .line 28231
    :cond_1
    iget-boolean v0, p1, Lry;->m:Z

    if-eqz v0, :cond_2

    move v4, v3

    .line 28232
    goto :goto_0

    .line 28235
    :cond_2
    iget-object v0, p0, Lri;->F:Lry;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lri;->F:Lry;

    if-eq v0, p1, :cond_3

    .line 28237
    iget-object v0, p0, Lri;->F:Lry;

    invoke-virtual {p0, v0, v4}, Lri;->a(Lry;Z)V

    .line 29199
    :cond_3
    iget-object v0, p0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    .line 28242
    if-eqz v7, :cond_4

    .line 28243
    iget v0, p1, Lry;->a:I

    invoke-interface {v7, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lry;->i:Landroid/view/View;

    .line 28246
    :cond_4
    iget v0, p1, Lry;->a:I

    if-eqz v0, :cond_5

    iget v0, p1, Lry;->a:I

    if-ne v0, v5, :cond_f

    :cond_5
    move v6, v3

    .line 28249
    :goto_1
    if-eqz v6, :cond_6

    iget-object v0, p0, Lri;->o:Lve;

    if-eqz v0, :cond_6

    .line 28252
    iget-object v0, p0, Lri;->o:Lve;

    invoke-interface {v0}, Lve;->m()V

    .line 28255
    :cond_6
    iget-object v0, p1, Lry;->i:Landroid/view/View;

    if-nez v0, :cond_16

    if-eqz v6, :cond_7

    .line 30094
    iget-object v0, p0, Lri;->f:Lqe;

    .line 28255
    instance-of v0, v0, Lsh;

    if-nez v0, :cond_16

    .line 28259
    :cond_7
    iget-object v0, p1, Lry;->j:Ltl;

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Lry;->r:Z

    if-eqz v0, :cond_12

    .line 28260
    :cond_8
    iget-object v0, p1, Lry;->j:Ltl;

    if-nez v0, :cond_c

    .line 30162
    iget-object v2, p0, Lri;->a:Landroid/content/Context;

    .line 30165
    iget v0, p1, Lry;->a:I

    if-eqz v0, :cond_9

    iget v0, p1, Lry;->a:I

    if-ne v0, v5, :cond_19

    :cond_9
    iget-object v0, p0, Lri;->o:Lve;

    if-eqz v0, :cond_19

    .line 30167
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 30168
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 30169
    sget v0, Laen;->y:I

    invoke-virtual {v8, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 30172
    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_10

    .line 30173
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 30174
    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 30175
    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v9, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 30176
    sget v9, Laen;->z:I

    invoke-virtual {v0, v9, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 30183
    :goto_2
    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    .line 30184
    if-nez v0, :cond_a

    .line 30185
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 30186
    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 30188
    :cond_a
    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    move-object v5, v0

    .line 30191
    if-eqz v5, :cond_19

    .line 30192
    new-instance v0, Lst;

    invoke-direct {v0, v2, v4}, Lst;-><init>(Landroid/content/Context;I)V

    .line 30193
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 30197
    :goto_3
    new-instance v2, Ltl;

    invoke-direct {v2, v0}, Ltl;-><init>(Landroid/content/Context;)V

    .line 30198
    invoke-virtual {v2, p0}, Ltl;->a(Ltm;)V

    .line 30199
    invoke-virtual {p1, v2}, Lry;->a(Ltl;)V

    .line 28261
    iget-object v0, p1, Lry;->j:Ltl;

    if-eqz v0, :cond_0

    .line 28266
    :cond_c
    if-eqz v6, :cond_e

    iget-object v0, p0, Lri;->o:Lve;

    if-eqz v0, :cond_e

    .line 28267
    iget-object v0, p0, Lri;->p:Lru;

    if-nez v0, :cond_d

    .line 28268
    new-instance v0, Lru;

    .line 30770
    invoke-direct {v0, p0}, Lru;-><init>(Lri;)V

    .line 28268
    iput-object v0, p0, Lri;->p:Lru;

    .line 28270
    :cond_d
    iget-object v0, p0, Lri;->o:Lve;

    iget-object v2, p1, Lry;->j:Ltl;

    iget-object v5, p0, Lri;->p:Lru;

    invoke-interface {v0, v2, v5}, Lve;->a(Landroid/view/Menu;Lua;)V

    .line 28275
    :cond_e
    iget-object v0, p1, Lry;->j:Ltl;

    invoke-virtual {v0}, Ltl;->g()V

    .line 28276
    iget v0, p1, Lry;->a:I

    iget-object v2, p1, Lry;->j:Ltl;

    invoke-interface {v7, v0, v2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 28278
    invoke-virtual {p1, v1}, Lry;->a(Ltl;)V

    .line 28280
    if-eqz v6, :cond_0

    iget-object v0, p0, Lri;->o:Lve;

    if-eqz v0, :cond_0

    .line 28282
    iget-object v0, p0, Lri;->o:Lve;

    iget-object v2, p0, Lri;->p:Lru;

    invoke-interface {v0, v1, v2}, Lve;->a(Landroid/view/Menu;Lua;)V

    goto/16 :goto_0

    :cond_f
    move v6, v4

    .line 28246
    goto/16 :goto_1

    .line 30179
    :cond_10
    sget v0, Laen;->z:I

    invoke-virtual {v8, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v0, v1

    goto :goto_2

    .line 28288
    :cond_11
    iput-boolean v4, p1, Lry;->r:Z

    .line 28293
    :cond_12
    iget-object v0, p1, Lry;->j:Ltl;

    invoke-virtual {v0}, Ltl;->g()V

    .line 28297
    iget-object v0, p1, Lry;->s:Landroid/os/Bundle;

    if-eqz v0, :cond_13

    .line 28298
    iget-object v0, p1, Lry;->j:Ltl;

    iget-object v2, p1, Lry;->s:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ltl;->b(Landroid/os/Bundle;)V

    .line 28299
    iput-object v1, p1, Lry;->s:Landroid/os/Bundle;

    .line 28303
    :cond_13
    iget-object v0, p1, Lry;->i:Landroid/view/View;

    iget-object v2, p1, Lry;->j:Ltl;

    invoke-interface {v7, v4, v0, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 28304
    if-eqz v6, :cond_14

    iget-object v0, p0, Lri;->o:Lve;

    if-eqz v0, :cond_14

    .line 28307
    iget-object v0, p0, Lri;->o:Lve;

    iget-object v2, p0, Lri;->p:Lru;

    invoke-interface {v0, v1, v2}, Lve;->a(Landroid/view/Menu;Lua;)V

    .line 28309
    :cond_14
    iget-object v0, p1, Lry;->j:Ltl;

    invoke-virtual {v0}, Ltl;->h()V

    goto/16 :goto_0

    .line 28314
    :cond_15
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_4
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 28316
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v3, :cond_18

    move v0, v3

    :goto_5
    iput-boolean v0, p1, Lry;->p:Z

    .line 28317
    iget-object v0, p1, Lry;->j:Ltl;

    iget-boolean v1, p1, Lry;->p:Z

    invoke-virtual {v0, v1}, Ltl;->setQwertyMode(Z)V

    .line 28318
    iget-object v0, p1, Lry;->j:Ltl;

    invoke-virtual {v0}, Ltl;->h()V

    .line 28322
    :cond_16
    iput-boolean v3, p1, Lry;->m:Z

    .line 28323
    iput-boolean v4, p1, Lry;->n:Z

    .line 28324
    iput-object p1, p0, Lri;->F:Lry;

    move v4, v3

    .line 28326
    goto/16 :goto_0

    .line 28314
    :cond_17
    const/4 v0, -0x1

    goto :goto_4

    :cond_18
    move v0, v4

    .line 28316
    goto :goto_5

    :cond_19
    move-object v0, v2

    goto/16 :goto_3
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9152
    iget-object v0, p0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lri;->x:Landroid/view/ViewGroup;

    .line 9154
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 9155
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcn;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10094
    iget-object v0, p0, Lri;->f:Lqe;

    .line 9158
    if-nez v0, :cond_1

    .line 9159
    iput-boolean v1, p0, Lri;->K:Z

    .line 9165
    :cond_0
    :goto_0
    return-void

    .line 9161
    :cond_1
    invoke-virtual {v0, v1}, Lqe;->b(Z)V

    goto :goto_0
.end method

.method c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4590
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    .line 4591
    invoke-virtual {p0}, Lri;->a()Lqe;

    move-result-object v0

    .line 4592
    if-eqz v0, :cond_0

    .line 4593
    invoke-virtual {v0, v2}, Lqe;->d(Z)V

    .line 4603
    :cond_0
    :goto_0
    return-void

    .line 4595
    :cond_1
    if-nez p1, :cond_0

    .line 4598
    invoke-virtual {p0, p1}, Lri;->e(I)Lry;

    move-result-object v0

    .line 4599
    iget-boolean v1, v0, Lry;->o:Z

    if-eqz v1, :cond_0

    .line 4600
    invoke-virtual {p0, v0, v2}, Lri;->a(Lry;Z)V

    goto :goto_0
.end method

.method c(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22904
    sparse-switch p1, :sswitch_data_0

    .line 22920
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 22923
    invoke-virtual {p0, p1, p2}, Lri;->a(ILandroid/view/KeyEvent;)Z

    :cond_0
    move v0, v1

    .line 22925
    :cond_1
    :goto_1
    return v0

    .line 23380
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 23381
    invoke-virtual {p0, v1}, Lri;->e(I)Lry;

    move-result-object v1

    .line 23382
    iget-boolean v2, v1, Lry;->o:Z

    if-nez v2, :cond_1

    .line 23383
    invoke-virtual {p0, v1, p2}, Lri;->b(Lry;Landroid/view/KeyEvent;)Z

    goto :goto_1

    .line 22914
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lri;->G:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 22904
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public d()V
    .locals 0

    .prologue
    .line 10170
    invoke-virtual {p0}, Lri;->n()V

    .line 10171
    return-void
.end method

.method d(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4607
    const/16 v1, 0x6c

    if-ne p1, v1, :cond_1

    .line 4608
    invoke-virtual {p0}, Lri;->a()Lqe;

    move-result-object v1

    .line 4609
    if-eqz v1, :cond_0

    .line 4610
    invoke-virtual {v1, v0}, Lqe;->d(Z)V

    .line 4614
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(I)Lry;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34485
    iget-object v0, p0, Lri;->E:[Lry;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 34486
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Lry;

    .line 34487
    if-eqz v0, :cond_1

    .line 34488
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34490
    :cond_1
    iput-object v1, p0, Lri;->E:[Lry;

    move-object v0, v1

    .line 34493
    :cond_2
    aget-object v1, v0, p1

    .line 34494
    if-nez v1, :cond_3

    .line 34495
    new-instance v1, Lry;

    invoke-direct {v1, p1}, Lry;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 34497
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 10231
    invoke-virtual {p0}, Lri;->a()Lqe;

    move-result-object v0

    .line 10232
    if-eqz v0, :cond_0

    .line 10233
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqe;->c(Z)V

    .line 10235
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 10239
    invoke-virtual {p0}, Lri;->a()Lqe;

    move-result-object v0

    .line 10240
    if-eqz v0, :cond_0

    .line 10241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lqe;->c(Z)V

    .line 10243
    :cond_0
    return-void
.end method

.method f(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 34526
    iget v0, p0, Lri;->I:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lri;->I:I

    .line 34528
    iget-boolean v0, p0, Lri;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lri;->x:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 34529
    iget-object v0, p0, Lri;->x:Landroid/view/ViewGroup;

    iget-object v1, p0, Lri;->J:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lks;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 34530
    iput-boolean v2, p0, Lri;->H:Z

    .line 34532
    :cond_0
    return-void
.end method

.method public g(I)I
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34570
    iget-object v0, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    .line 34571
    iget-object v0, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 34572
    iget-object v0, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 34576
    iget-object v1, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 34577
    iget-object v1, p0, Lri;->L:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 34578
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lri;->L:Landroid/graphics/Rect;

    .line 34579
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lri;->M:Landroid/graphics/Rect;

    .line 34581
    :cond_0
    iget-object v1, p0, Lri;->L:Landroid/graphics/Rect;

    .line 34582
    iget-object v4, p0, Lri;->M:Landroid/graphics/Rect;

    .line 34583
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 34585
    iget-object v5, p0, Lri;->y:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Lvz;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 34586
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    .line 34587
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    .line 34589
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 34591
    iget-object v1, p0, Lri;->A:Landroid/view/View;

    if-nez v1, :cond_5

    .line 34592
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Lri;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lri;->A:Landroid/view/View;

    .line 34593
    iget-object v1, p0, Lri;->A:Landroid/view/View;

    iget-object v4, p0, Lri;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laal;->B:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 34595
    iget-object v1, p0, Lri;->y:Landroid/view/ViewGroup;

    iget-object v4, p0, Lri;->A:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 34609
    :goto_1
    iget-object v4, p0, Lri;->A:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 34615
    :goto_2
    iget-boolean v4, p0, Lri;->j:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v7, v1

    move v1, v3

    move v3, v7

    .line 34625
    :goto_3
    if-eqz v3, :cond_2

    .line 34626
    iget-object v3, p0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v1

    .line 34630
    :goto_4
    iget-object v1, p0, Lri;->A:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 34631
    iget-object v1, p0, Lri;->A:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34634
    :cond_3
    return p1

    :cond_4
    move v1, v2

    .line 34586
    goto :goto_0

    .line 34599
    :cond_5
    iget-object v1, p0, Lri;->A:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 34600
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    .line 34601
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34602
    iget-object v4, p0, Lri;->A:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    .line 34609
    goto :goto_2

    .line 34620
    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 34622
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_3

    .line 34631
    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v3, v2

    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method public g()V
    .locals 1

    .prologue
    .line 20664
    invoke-virtual {p0}, Lri;->a()Lqe;

    move-result-object v0

    .line 20665
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lqe;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20668
    :goto_0
    return-void

    .line 20667
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lri;->f(I)V

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lri;->n:Z

    .line 181
    return-void
.end method

.method public final i()Lqi;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lrj;

    .line 6137
    invoke-direct {v0, p0}, Lrj;-><init>(Lri;)V

    .line 119
    return-object v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 25973
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 25974
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 25975
    invoke-static {v0, p0}, Ljg;->a(Landroid/view/LayoutInflater;Ljm;)V

    .line 25980
    :cond_0
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    .line 4175
    invoke-virtual {p0}, Lri;->n()V

    .line 4177
    iget-boolean v0, p0, Lri;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lri;->f:Lqe;

    if-eqz v0, :cond_1

    .line 4190
    :cond_0
    :goto_0
    return-void

    .line 4181
    :cond_1
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 4182
    new-instance v1, Lsn;

    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Lri;->i:Z

    invoke-direct {v1, v0, v2}, Lsn;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lri;->f:Lqe;

    .line 4187
    :cond_2
    :goto_1
    iget-object v0, p0, Lri;->f:Lqe;

    if-eqz v0, :cond_0

    .line 4188
    iget-object v0, p0, Lri;->f:Lqe;

    iget-boolean v1, p0, Lri;->K:Z

    invoke-virtual {v0, v1}, Lqe;->b(Z)V

    goto :goto_0

    .line 4184
    :cond_3
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 4185
    new-instance v1, Lsn;

    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lsn;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Lri;->f:Lqe;

    goto :goto_1
.end method

.method final l()Landroid/content/Context;
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0}, Lri;->a()Lqe;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1}, Lqe;->g()Landroid/content/Context;

    move-result-object v0

    .line 131
    :cond_0
    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    .line 134
    :cond_1
    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method n()V
    .locals 9

    .prologue
    const/16 v8, 0x6c

    const v7, 0x1020002

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 10281
    iget-boolean v0, p0, Lri;->w:Z

    if-nez v0, :cond_17

    .line 10309
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    sget-object v1, Lsb;->cp:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 10311
    sget v1, Lsb;->ct:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10312
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 10313
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10317
    :cond_0
    sget v1, Lsb;->cC:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10318
    invoke-virtual {p0, v6}, Lri;->b(I)Z

    .line 10323
    :cond_1
    :goto_0
    sget v1, Lsb;->cu:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10324
    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Lri;->b(I)Z

    .line 10326
    :cond_2
    sget v1, Lsb;->cv:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10327
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lri;->b(I)Z

    .line 10329
    :cond_3
    sget v1, Lsb;->cr:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lri;->k:Z

    .line 10330
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 10332
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 10336
    iget-boolean v1, p0, Lri;->l:Z

    if-nez v1, :cond_a

    .line 10337
    iget-boolean v1, p0, Lri;->k:Z

    if-eqz v1, :cond_5

    .line 10339
    sget v1, Laal;->bg:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 10343
    iput-boolean v5, p0, Lri;->i:Z

    iput-boolean v5, p0, Lri;->h:Z

    move-object v2, v0

    .line 10424
    :goto_1
    if-nez v2, :cond_d

    .line 10425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lri;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lri;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lri;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lri;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lri;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10319
    :cond_4
    sget v1, Lsb;->ct:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10321
    invoke-virtual {p0, v8}, Lri;->b(I)Z

    goto/16 :goto_0

    .line 10344
    :cond_5
    iget-boolean v0, p0, Lri;->h:Z

    if-eqz v0, :cond_19

    .line 10350
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 10351
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Laen;->y:I

    invoke-virtual {v0, v2, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 10354
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_9

    .line 10355
    new-instance v0, Lst;

    iget-object v2, p0, Lri;->a:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Lst;-><init>(Landroid/content/Context;I)V

    .line 10361
    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laal;->bp:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 10364
    sget v1, Laal;->aI:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lve;

    iput-object v1, p0, Lri;->o:Lve;

    .line 10366
    iget-object v1, p0, Lri;->o:Lve;

    .line 11199
    iget-object v2, p0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 10366
    invoke-interface {v1, v2}, Lve;->a(Landroid/view/Window$Callback;)V

    .line 10371
    iget-boolean v1, p0, Lri;->i:Z

    if-eqz v1, :cond_6

    .line 10372
    iget-object v1, p0, Lri;->o:Lve;

    const/16 v2, 0x6d

    invoke-interface {v1, v2}, Lve;->b(I)V

    .line 10374
    :cond_6
    iget-boolean v1, p0, Lri;->B:Z

    if-eqz v1, :cond_7

    .line 10375
    iget-object v1, p0, Lri;->o:Lve;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lve;->b(I)V

    .line 10377
    :cond_7
    iget-boolean v1, p0, Lri;->C:Z

    if-eqz v1, :cond_8

    .line 10378
    iget-object v1, p0, Lri;->o:Lve;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lve;->b(I)V

    :cond_8
    move-object v2, v0

    .line 10380
    goto/16 :goto_1

    .line 10357
    :cond_9
    iget-object v0, p0, Lri;->a:Landroid/content/Context;

    goto :goto_2

    .line 10382
    :cond_a
    iget-boolean v1, p0, Lri;->j:Z

    if-eqz v1, :cond_b

    .line 10383
    sget v1, Laal;->bo:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 10389
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_c

    .line 10392
    new-instance v0, Lkg;

    invoke-direct {v0, p0}, Lkg;-><init>(Lri;)V

    .line 11787
    sget-object v2, Lks;->a:Llc;

    invoke-virtual {v2, v1, v0}, Llc;->a(Landroid/view/View;Lkg;)V

    move-object v2, v1

    .line 10392
    goto/16 :goto_1

    .line 10386
    :cond_b
    sget v1, Laal;->bn:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    .line 10414
    check-cast v0, Lvh;

    new-instance v2, Lvi;

    invoke-direct {v2, p0}, Lvi;-><init>(Lri;)V

    invoke-interface {v0, v2}, Lvh;->a(Lvi;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 10435
    :cond_d
    iget-object v0, p0, Lri;->o:Lve;

    if-nez v0, :cond_e

    .line 10436
    sget v0, Laal;->aW:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lri;->z:Landroid/widget/TextView;

    .line 10440
    :cond_e
    invoke-static {v2}, Lvz;->b(Landroid/view/View;)V

    .line 10442
    iget-object v0, p0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 10443
    sget v1, Laal;->au:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ContentFrameLayout;

    .line 10448
    :goto_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_f

    .line 10449
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 10450
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 10451
    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 10455
    :cond_f
    iget-object v4, p0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v4, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 10459
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 10460
    invoke-virtual {v1, v7}, Landroid/support/v7/internal/widget/ContentFrameLayout;->setId(I)V

    .line 10464
    instance-of v4, v0, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_10

    .line 10465
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 10468
    :cond_10
    new-instance v0, Lvd;

    invoke-direct {v0, p0}, Lvd;-><init>(Lri;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->a(Lvd;)V

    .line 10282
    iput-object v2, p0, Lri;->y:Landroid/view/ViewGroup;

    .line 12212
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_18

    .line 12213
    iget-object v0, p0, Lri;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 10286
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 10287
    invoke-virtual {p0, v0}, Lri;->b(Ljava/lang/CharSequence;)V

    .line 12484
    :cond_11
    iget-object v0, p0, Lri;->y:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ContentFrameLayout;

    .line 12490
    iget-object v1, p0, Lri;->x:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lri;->x:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lri;->x:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lri;->x:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ContentFrameLayout;->a(IIII)V

    .line 12494
    iget-object v1, p0, Lri;->a:Landroid/content/Context;

    sget-object v2, Lsb;->cp:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 12495
    sget v2, Lsb;->cA:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->a()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 12496
    sget v2, Lsb;->cB:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->b()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 12498
    sget v2, Lsb;->cy:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 12499
    sget v2, Lsb;->cy:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->c()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 12501
    :cond_12
    sget v2, Lsb;->cz:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 12502
    sget v2, Lsb;->cz:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->d()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 12504
    :cond_13
    sget v2, Lsb;->cw:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 12505
    sget v2, Lsb;->cw:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->e()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 12507
    :cond_14
    sget v2, Lsb;->cx:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 12508
    sget v2, Lsb;->cx:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->f()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 12510
    :cond_15
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12512
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->requestLayout()V

    .line 10294
    iput-boolean v6, p0, Lri;->w:Z

    .line 10301
    invoke-virtual {p0, v5}, Lri;->e(I)Lry;

    move-result-object v0

    .line 13195
    iget-boolean v1, p0, Lri;->n:Z

    .line 10302
    if-nez v1, :cond_17

    if-eqz v0, :cond_16

    iget-object v0, v0, Lry;->j:Ltl;

    if-nez v0, :cond_17

    .line 10303
    :cond_16
    invoke-virtual {p0, v8}, Lri;->f(I)V

    .line 10306
    :cond_17
    return-void

    .line 12216
    :cond_18
    iget-object v0, p0, Lri;->m:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_19
    move-object v2, v3

    goto/16 :goto_1
.end method

.method o()V
    .locals 1

    .prologue
    .line 20801
    iget-object v0, p0, Lri;->v:Lmd;

    if-eqz v0, :cond_0

    .line 20802
    iget-object v0, p0, Lri;->v:Lmd;

    invoke-virtual {v0}, Lmd;->b()V

    .line 20804
    :cond_0
    return-void
.end method

.method p()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 20808
    iget-object v1, p0, Lri;->r:Lwb;

    if-eqz v1, :cond_1

    .line 20809
    iget-object v1, p0, Lri;->r:Lwb;

    invoke-virtual {v1}, Lwb;->c()V

    .line 20820
    :cond_0
    :goto_0
    return v0

    .line 20814
    :cond_1
    invoke-virtual {p0}, Lri;->a()Lqe;

    move-result-object v1

    .line 20815
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lqe;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 20820
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q()V
    .locals 2

    .prologue
    .line 34638
    iget-boolean v0, p0, Lri;->w:Z

    if-eqz v0, :cond_0

    .line 34639
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34642
    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 34663
    iget-object v0, p0, Lri;->o:Lve;

    if-eqz v0, :cond_0

    .line 34664
    iget-object v0, p0, Lri;->o:Lve;

    invoke-interface {v0}, Lve;->n()V

    .line 34667
    :cond_0
    iget-object v0, p0, Lri;->t:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 34668
    iget-object v0, p0, Lri;->x:Landroid/view/ViewGroup;

    iget-object v1, p0, Lri;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 34669
    iget-object v0, p0, Lri;->t:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34671
    :try_start_0
    iget-object v0, p0, Lri;->t:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34677
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lri;->t:Landroid/widget/PopupWindow;

    .line 34679
    :cond_2
    invoke-virtual {p0}, Lri;->o()V

    .line 34681
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lri;->e(I)Lry;

    move-result-object v0

    .line 34682
    if-eqz v0, :cond_3

    iget-object v1, v0, Lry;->j:Ltl;

    if-eqz v1, :cond_3

    .line 34683
    iget-object v0, v0, Lry;->j:Ltl;

    invoke-virtual {v0}, Ltl;->close()V

    .line 34685
    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
