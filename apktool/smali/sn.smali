.class public final Lsn;
.super Lqe;
.source "SourceFile"

# interfaces
.implements Luo;


# static fields
.field private static final r:Landroid/view/animation/Interpolator;

.field private static final s:Landroid/view/animation/Interpolator;

.field private static final t:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lqg;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field a:Landroid/content/Context;

.field b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

.field public c:Landroid/support/v7/internal/widget/ActionBarContainer;

.field d:Lvf;

.field e:Landroid/support/v7/internal/widget/ActionBarContextView;

.field f:Landroid/view/View;

.field g:Lsq;

.field h:Lwb;

.field i:Lwc;

.field j:Z

.field k:Z

.field l:Z

.field m:Lta;

.field n:Z

.field final o:Lmn;

.field final p:Lmn;

.field final q:Lmp;

.field private u:Landroid/content/Context;

.field private v:Landroid/app/Activity;

.field private w:Landroid/app/Dialog;

.field private x:Lvn;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lsn;->r:Landroid/view/animation/Interpolator;

    .line 79
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lsn;->s:Landroid/view/animation/Interpolator;

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lsn;->t:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-direct {p0}, Lqe;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsn;->y:Ljava/util/ArrayList;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lsn;->z:I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsn;->C:Ljava/util/ArrayList;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lsn;->E:I

    .line 123
    iput-boolean v1, p0, Lsn;->j:Z

    .line 128
    iput-boolean v1, p0, Lsn;->G:Z

    .line 136
    new-instance v0, Lso;

    invoke-direct {v0, p0}, Lso;-><init>(Lsn;)V

    iput-object v0, p0, Lsn;->o:Lmn;

    .line 153
    new-instance v0, Lsp;

    invoke-direct {v0, p0}, Lsp;-><init>(Lsn;)V

    iput-object v0, p0, Lsn;->p:Lmn;

    .line 161
    new-instance v0, Lmp;

    invoke-direct {v0, p0}, Lmp;-><init>(Lsn;)V

    iput-object v0, p0, Lsn;->q:Lmp;

    .line 171
    iput-object p1, p0, Lsn;->v:Landroid/app/Activity;

    .line 172
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 174
    invoke-direct {p0, v0}, Lsn;->b(Landroid/view/View;)V

    .line 175
    if-nez p2, :cond_0

    .line 176
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsn;->f:Landroid/view/View;

    .line 178
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 180
    invoke-direct {p0}, Lqe;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsn;->y:Ljava/util/ArrayList;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lsn;->z:I

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsn;->C:Ljava/util/ArrayList;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lsn;->E:I

    .line 123
    iput-boolean v1, p0, Lsn;->j:Z

    .line 128
    iput-boolean v1, p0, Lsn;->G:Z

    .line 136
    new-instance v0, Lso;

    invoke-direct {v0, p0}, Lso;-><init>(Lsn;)V

    iput-object v0, p0, Lsn;->o:Lmn;

    .line 153
    new-instance v0, Lsp;

    invoke-direct {v0, p0}, Lsp;-><init>(Lsn;)V

    iput-object v0, p0, Lsn;->p:Lmn;

    .line 161
    new-instance v0, Lmp;

    invoke-direct {v0, p0}, Lmp;-><init>(Lsn;)V

    iput-object v0, p0, Lsn;->q:Lmp;

    .line 181
    iput-object p1, p0, Lsn;->w:Landroid/app/Dialog;

    .line 182
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lsn;->b(Landroid/view/View;)V

    .line 183
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0}, Lvf;->l()I

    move-result v0

    .line 453
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 454
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsn;->A:Z

    .line 456
    :cond_0
    iget-object v1, p0, Lsn;->d:Lvf;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lvf;->a(I)V

    .line 457
    return-void
.end method

.method static a(ZZZ)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 724
    if-eqz p2, :cond_1

    .line 729
    :cond_0
    :goto_0
    return v0

    .line 726
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 727
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    sget v0, Laal;->aI:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 196
    iget-object v0, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Luo;)V

    .line 199
    :cond_0
    sget v0, Laal;->at:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3237
    instance-of v3, v0, Lvf;

    if-eqz v3, :cond_2

    .line 3238
    check-cast v0, Lvf;

    .line 199
    :goto_0
    iput-object v0, p0, Lsn;->d:Lvf;

    .line 200
    sget v0, Laal;->ay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 202
    sget v0, Laal;->av:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 205
    iget-object v0, p0, Lsn;->d:Lvf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-nez v0, :cond_5

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3239
    :cond_2
    instance-of v3, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v3, :cond_3

    .line 3240
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->s()Lvf;

    move-result-object v0

    goto :goto_0

    .line 3242
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t make a decor toolbar out of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "null"

    goto :goto_1

    .line 210
    :cond_5
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0}, Lvf;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lsn;->a:Landroid/content/Context;

    .line 213
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0}, Lvf;->l()I

    move-result v0

    .line 214
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    move v0, v1

    .line 215
    :goto_2
    if-eqz v0, :cond_6

    .line 216
    iput-boolean v1, p0, Lsn;->A:Z

    .line 219
    :cond_6
    iget-object v0, p0, Lsn;->a:Landroid/content/Context;

    invoke-static {v0}, Lss;->a(Landroid/content/Context;)Lss;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lss;->f()Z

    .line 221
    invoke-virtual {v0}, Lss;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lsn;->g(Z)V

    .line 223
    iget-object v0, p0, Lsn;->a:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v3, Lsb;->a:[I

    sget v4, Laen;->v:I

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 226
    sget v1, Lsb;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 227
    invoke-virtual {p0}, Lsn;->h()V

    .line 229
    :cond_7
    sget v1, Lsb;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 230
    if-eqz v1, :cond_8

    .line 231
    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lsn;->a(F)V

    .line 233
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    return-void

    :cond_9
    move v0, v2

    .line 214
    goto :goto_2
.end method

.method private g(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    iput-boolean p1, p0, Lsn;->D:Z

    .line 264
    iget-boolean v0, p0, Lsn;->D:Z

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0, v3}, Lvf;->a(Lvn;)V

    .line 266
    iget-object v0, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lsn;->x:Lvn;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Lvn;)V

    .line 271
    :goto_0
    invoke-direct {p0}, Lsn;->o()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 272
    :goto_1
    iget-object v3, p0, Lsn;->x:Lvn;

    if-eqz v3, :cond_0

    .line 273
    if-eqz v0, :cond_3

    .line 274
    iget-object v3, p0, Lsn;->x:Lvn;

    invoke-virtual {v3, v2}, Lvn;->setVisibility(I)V

    .line 275
    iget-object v3, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 276
    iget-object v3, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 3736
    sget-object v4, Lks;->a:Llc;

    invoke-virtual {v4, v3}, Llc;->r(Landroid/view/View;)V

    .line 282
    :cond_0
    :goto_2
    iget-object v4, p0, Lsn;->d:Lvf;

    iget-boolean v3, p0, Lsn;->D:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Lvf;->a(Z)V

    .line 283
    iget-object v3, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lsn;->D:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Z)V

    .line 284
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Lvn;)V

    .line 269
    iget-object v0, p0, Lsn;->d:Lvf;

    iget-object v3, p0, Lsn;->x:Lvn;

    invoke-virtual {v0, v3}, Lvf;->a(Lvn;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 271
    goto :goto_1

    .line 279
    :cond_3
    iget-object v3, p0, Lsn;->x:Lvn;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lvn;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 282
    goto :goto_3

    :cond_5
    move v1, v2

    .line 283
    goto :goto_4
.end method

.method private h(Z)V
    .locals 3

    .prologue
    .line 735
    iget-boolean v0, p0, Lsn;->k:Z

    iget-boolean v1, p0, Lsn;->l:Z

    iget-boolean v2, p0, Lsn;->F:Z

    invoke-static {v0, v1, v2}, Lsn;->a(ZZZ)Z

    move-result v0

    .line 738
    if-eqz v0, :cond_1

    .line 739
    iget-boolean v0, p0, Lsn;->G:Z

    if-nez v0, :cond_0

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsn;->G:Z

    .line 741
    invoke-direct {p0, p1}, Lsn;->i(Z)V

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    iget-boolean v0, p0, Lsn;->G:Z

    if-eqz v0, :cond_0

    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsn;->G:Z

    .line 746
    invoke-direct {p0, p1}, Lsn;->j(Z)V

    goto :goto_0
.end method

.method private i(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 752
    iget-object v0, p0, Lsn;->m:Lta;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lsn;->m:Lta;

    invoke-virtual {v0}, Lta;->b()V

    .line 755
    :cond_0
    iget-object v0, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 757
    iget v0, p0, Lsn;->E:I

    if-nez v0, :cond_5

    sget-boolean v0, Lsn;->t:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lsn;->H:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_5

    .line 760
    :cond_1
    iget-object v0, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Lks;->b(Landroid/view/View;F)V

    .line 761
    iget-object v0, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 762
    if-eqz p1, :cond_2

    .line 763
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 764
    iget-object v2, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 765
    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 767
    :cond_2
    iget-object v1, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v1, v0}, Lks;->b(Landroid/view/View;F)V

    .line 768
    new-instance v1, Lta;

    invoke-direct {v1}, Lta;-><init>()V

    .line 769
    iget-object v2, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 4447
    sget-object v3, Lks;->a:Llc;

    invoke-virtual {v3, v2}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v2

    .line 769
    invoke-virtual {v2, v4}, Lmd;->c(F)Lmd;

    move-result-object v2

    .line 770
    iget-object v3, p0, Lsn;->q:Lmp;

    invoke-virtual {v2, v3}, Lmd;->a(Lmp;)Lmd;

    .line 771
    invoke-virtual {v1, v2}, Lta;->a(Lmd;)Lta;

    .line 772
    iget-boolean v2, p0, Lsn;->j:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lsn;->f:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 773
    iget-object v2, p0, Lsn;->f:Landroid/view/View;

    invoke-static {v2, v0}, Lks;->b(Landroid/view/View;F)V

    .line 774
    iget-object v0, p0, Lsn;->f:Landroid/view/View;

    .line 5447
    sget-object v2, Lks;->a:Llc;

    invoke-virtual {v2, v0}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v0

    .line 774
    invoke-virtual {v0, v4}, Lmd;->c(F)Lmd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lta;->a(Lmd;)Lta;

    .line 776
    :cond_3
    sget-object v0, Lsn;->s:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Lta;->a(Landroid/view/animation/Interpolator;)Lta;

    .line 777
    invoke-virtual {v1}, Lta;->c()Lta;

    .line 785
    iget-object v0, p0, Lsn;->p:Lmn;

    invoke-virtual {v1, v0}, Lta;->a(Lmn;)Lta;

    .line 786
    iput-object v1, p0, Lsn;->m:Lta;

    .line 787
    invoke-virtual {v1}, Lta;->a()V

    .line 796
    :goto_0
    iget-object v0, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_4

    .line 797
    iget-object v0, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 5736
    sget-object v1, Lks;->a:Llc;

    invoke-virtual {v1, v0}, Llc;->r(Landroid/view/View;)V

    .line 799
    :cond_4
    return-void

    .line 789
    :cond_5
    iget-object v0, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lks;->c(Landroid/view/View;F)V

    .line 790
    iget-object v0, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Lks;->b(Landroid/view/View;F)V

    .line 791
    iget-boolean v0, p0, Lsn;->j:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lsn;->f:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 792
    iget-object v0, p0, Lsn;->f:Landroid/view/View;

    invoke-static {v0, v4}, Lks;->b(Landroid/view/View;F)V

    .line 794
    :cond_6
    iget-object v0, p0, Lsn;->p:Lmn;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmn;->b(Landroid/view/View;)V

    goto :goto_0

    .line 763
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private j(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 802
    iget-object v0, p0, Lsn;->m:Lta;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lsn;->m:Lta;

    invoke-virtual {v0}, Lta;->b()V

    .line 806
    :cond_0
    iget v0, p0, Lsn;->E:I

    if-nez v0, :cond_4

    sget-boolean v0, Lsn;->t:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lsn;->H:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 808
    :cond_1
    iget-object v0, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lks;->c(Landroid/view/View;F)V

    .line 809
    iget-object v0, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Z)V

    .line 810
    new-instance v1, Lta;

    invoke-direct {v1}, Lta;-><init>()V

    .line 811
    iget-object v0, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 812
    if-eqz p1, :cond_2

    .line 813
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 814
    iget-object v3, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 815
    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 817
    :cond_2
    iget-object v2, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 6447
    sget-object v3, Lks;->a:Llc;

    invoke-virtual {v3, v2}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v2

    .line 817
    invoke-virtual {v2, v0}, Lmd;->c(F)Lmd;

    move-result-object v2

    .line 818
    iget-object v3, p0, Lsn;->q:Lmp;

    invoke-virtual {v2, v3}, Lmd;->a(Lmp;)Lmd;

    .line 819
    invoke-virtual {v1, v2}, Lta;->a(Lmd;)Lta;

    .line 820
    iget-boolean v2, p0, Lsn;->j:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lsn;->f:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 821
    iget-object v2, p0, Lsn;->f:Landroid/view/View;

    .line 7447
    sget-object v3, Lks;->a:Llc;

    invoke-virtual {v3, v2}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v2

    .line 821
    invoke-virtual {v2, v0}, Lmd;->c(F)Lmd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lta;->a(Lmd;)Lta;

    .line 823
    :cond_3
    sget-object v0, Lsn;->r:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Lta;->a(Landroid/view/animation/Interpolator;)Lta;

    .line 824
    invoke-virtual {v1}, Lta;->c()Lta;

    .line 825
    iget-object v0, p0, Lsn;->o:Lmn;

    invoke-virtual {v1, v0}, Lta;->a(Lmn;)Lta;

    .line 826
    iput-object v1, p0, Lsn;->m:Lta;

    .line 827
    invoke-virtual {v1}, Lta;->a()V

    .line 831
    :goto_0
    return-void

    .line 829
    :cond_4
    iget-object v0, p0, Lsn;->o:Lmn;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmn;->b(Landroid/view/View;)V

    goto :goto_0

    .line 813
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private o()I
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0}, Lvf;->m()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lwc;)Lwb;
    .locals 3

    .prologue
    .line 492
    iget-object v0, p0, Lsn;->g:Lsq;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lsn;->g:Lsq;

    invoke-virtual {v0}, Lsq;->c()V

    .line 496
    :cond_0
    iget-object v0, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b(Z)V

    .line 497
    iget-object v0, p0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->e()V

    .line 498
    new-instance v0, Lsq;

    iget-object v1, p0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lsq;-><init>(Lsn;Landroid/content/Context;Lwc;)V

    .line 499
    invoke-virtual {v0}, Lsq;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    invoke-virtual {v0}, Lsq;->d()V

    .line 501
    iget-object v1, p0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Lwb;)V

    .line 502
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lsn;->f(Z)V

    .line 503
    iget-object v1, p0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 504
    iput-object v0, p0, Lsn;->g:Lsq;

    .line 507
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 379
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lsn;->a(II)V

    .line 380
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, p1}, Lks;->f(Landroid/view/View;F)V

    .line 250
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lsn;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsn;->a(Ljava/lang/CharSequence;)V

    .line 395
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lsn;->a:Landroid/content/Context;

    invoke-static {v0}, Lss;->a(Landroid/content/Context;)Lss;

    move-result-object v0

    invoke-virtual {v0}, Lss;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lsn;->g(Z)V

    .line 259
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0, p1}, Lvf;->a(Landroid/graphics/drawable/Drawable;)V

    .line 892
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0, p1}, Lvf;->a(Landroid/view/View;)V

    .line 1231
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0, p1}, Lvf;->b(Ljava/lang/CharSequence;)V

    .line 433
    return-void
.end method

.method public a(Lqg;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lsn;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 374
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lsn;->a(II)V

    .line 375
    return-void

    .line 374
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 384
    invoke-direct {p0, v0, v0}, Lsn;->a(II)V

    .line 385
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0, p1}, Lvf;->b(I)V

    .line 897
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0, p1}, Lvf;->c(Ljava/lang/CharSequence;)V

    .line 442
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 1338
    iget-boolean v0, p0, Lsn;->A:Z

    if-nez v0, :cond_0

    .line 1339
    invoke-virtual {p0, p1}, Lsn;->a(Z)V

    .line 1341
    :cond_0
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0}, Lvf;->n()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0, p1}, Lvf;->c(I)V

    .line 907
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0, p1}, Lvf;->a(Ljava/lang/CharSequence;)V

    .line 438
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 330
    iput-boolean p1, p0, Lsn;->H:Z

    .line 331
    if-nez p1, :cond_0

    iget-object v0, p0, Lsn;->m:Lta;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lsn;->m:Lta;

    invoke-virtual {v0}, Lta;->b()V

    .line 334
    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0}, Lvf;->l()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 319
    iput p1, p0, Lsn;->E:I

    .line 320
    return-void
.end method

.method public d(Z)V
    .locals 3

    .prologue
    .line 345
    iget-boolean v0, p0, Lsn;->B:Z

    if-ne p1, v0, :cond_1

    .line 354
    :cond_0
    return-void

    .line 348
    :cond_1
    iput-boolean p1, p0, Lsn;->B:Z

    .line 350
    iget-object v0, p0, Lsn;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 351
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 352
    iget-object v0, p0, Lsn;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqg;

    invoke-virtual {v0, p1}, Lqg;->a(Z)V

    .line 351
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 645
    iget-boolean v0, p0, Lsn;->k:Z

    if-eqz v0, :cond_0

    .line 646
    iput-boolean v1, p0, Lsn;->k:Z

    .line 647
    invoke-direct {p0, v1}, Lsn;->h(Z)V

    .line 649
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 640
    iput-boolean p1, p0, Lsn;->j:Z

    .line 641
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Lsn;->k:Z

    if-nez v0, :cond_0

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsn;->k:Z

    .line 672
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsn;->h(Z)V

    .line 674
    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const-wide/16 v4, 0x64

    const/4 v2, 0x0

    .line 840
    if-eqz p1, :cond_2

    .line 7652
    iget-boolean v0, p0, Lsn;->F:Z

    if-nez v0, :cond_1

    .line 7653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsn;->F:Z

    .line 7654
    iget-object v0, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 7655
    iget-object v0, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->c()V

    .line 7657
    :cond_0
    invoke-direct {p0, v2}, Lsn;->h(Z)V

    .line 847
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 852
    iget-object v0, p0, Lsn;->d:Lvf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4, v5}, Lvf;->a(IJ)Lmd;

    move-result-object v0

    .line 854
    iget-object v1, p0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v2, v6, v7}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(IJ)Lmd;

    move-result-object v1

    .line 862
    :goto_1
    new-instance v2, Lta;

    invoke-direct {v2}, Lta;-><init>()V

    .line 863
    invoke-virtual {v2, v0, v1}, Lta;->a(Lmd;Lmd;)Lta;

    .line 864
    invoke-virtual {v2}, Lta;->a()V

    .line 866
    return-void

    .line 7677
    :cond_2
    iget-boolean v0, p0, Lsn;->F:Z

    if-eqz v0, :cond_1

    .line 7678
    iput-boolean v2, p0, Lsn;->F:Z

    .line 7679
    iget-object v0, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    .line 7680
    iget-object v0, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->c()V

    .line 7682
    :cond_3
    invoke-direct {p0, v2}, Lsn;->h(Z)V

    goto :goto_0

    .line 857
    :cond_4
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0, v2, v6, v7}, Lvf;->a(IJ)Lmd;

    move-result-object v1

    .line 859
    iget-object v0, p0, Lsn;->e:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v4, v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(IJ)Lmd;

    move-result-object v0

    goto :goto_1
.end method

.method public g()Landroid/content/Context;
    .locals 4

    .prologue
    .line 869
    iget-object v0, p0, Lsn;->u:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 870
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 871
    iget-object v1, p0, Lsn;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 872
    sget v2, Laen;->z:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 873
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 875
    if-eqz v0, :cond_1

    .line 876
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lsn;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lsn;->u:Landroid/content/Context;

    .line 881
    :cond_0
    :goto_0
    iget-object v0, p0, Lsn;->u:Landroid/content/Context;

    return-object v0

    .line 878
    :cond_1
    iget-object v0, p0, Lsn;->a:Landroid/content/Context;

    iput-object v0, p0, Lsn;->u:Landroid/content/Context;

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 695
    iget-object v0, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_0
    iput-boolean v1, p0, Lsn;->n:Z

    .line 700
    iget-object v0, p0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b(Z)V

    .line 701
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lsn;->d:Lvf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0}, Lvf;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lsn;->d:Lvf;

    invoke-virtual {v0}, Lvf;->d()V

    .line 925
    const/4 v0, 0x1

    .line 927
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lsn;->i:Lwc;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lsn;->i:Lwc;

    iget-object v1, p0, Lsn;->h:Lwb;

    invoke-interface {v0, v1}, Lwc;->a(Lwb;)V

    .line 313
    iput-object v2, p0, Lsn;->h:Lwb;

    .line 314
    iput-object v2, p0, Lsn;->i:Lwc;

    .line 316
    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lsn;->l:Z

    if-eqz v0, :cond_0

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsn;->l:Z

    .line 664
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsn;->h(Z)V

    .line 666
    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 687
    iget-boolean v0, p0, Lsn;->l:Z

    if-nez v0, :cond_0

    .line 688
    iput-boolean v1, p0, Lsn;->l:Z

    .line 689
    invoke-direct {p0, v1}, Lsn;->h(Z)V

    .line 691
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lsn;->m:Lta;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lsn;->m:Lta;

    invoke-virtual {v0}, Lta;->b()V

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Lsn;->m:Lta;

    .line 915
    :cond_0
    return-void
.end method
