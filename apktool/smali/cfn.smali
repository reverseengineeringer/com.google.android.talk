.class public final Lcfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lios;
.implements Liov;
.implements Lioz;


# static fields
.field private static final k:Z


# instance fields
.field final a:Lcfc;

.field private final b:Lcfq;

.field private final c:Lba;

.field private final d:Landroid/content/res/Resources;

.field private final e:Landroid/os/Handler;

.field private f:I

.field private g:Lcfr;

.field private h:Z

.field private i:Z

.field private j:Z

.field private final l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcfn;->k:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lba;Liog;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    iput-object v0, p0, Lcfn;->a:Lcfc;

    .line 51
    new-instance v0, Lcfq;

    .line 1341
    invoke-direct {v0, p0}, Lcfq;-><init>(Lcfn;)V

    .line 51
    iput-object v0, p0, Lcfn;->b:Lcfq;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcfn;->e:Landroid/os/Handler;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcfn;->f:I

    .line 56
    sget-object v0, Lcfr;->a:Lcfr;

    iput-object v0, p0, Lcfn;->g:Lcfr;

    .line 63
    new-instance v0, Lcfo;

    invoke-direct {v0, p0}, Lcfo;-><init>(Lcfn;)V

    iput-object v0, p0, Lcfn;->l:Ljava/lang/Runnable;

    .line 72
    iput-object p1, p0, Lcfn;->c:Lba;

    .line 73
    invoke-virtual {p1}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcfn;->d:Landroid/content/res/Resources;

    .line 74
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 75
    return-void
.end method

.method private a(ZZ)V
    .locals 5

    .prologue
    .line 194
    iget-boolean v0, p0, Lcfn;->i:Z

    if-ne v0, p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-boolean p1, p0, Lcfn;->i:Z

    .line 199
    iget-object v0, p0, Lcfn;->c:Lba;

    sget v1, Laen;->cG:I

    invoke-virtual {v0, v1}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 200
    iget-object v0, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v1, Laal;->eL:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 202
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p2, :cond_1

    .line 203
    int-to-long v0, v2

    :goto_1
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 7020
    new-instance v1, Laxa;

    invoke-direct {v1, v3}, Laxa;-><init>(Landroid/view/View;)V

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 205
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 207
    iget-object v0, p0, Lcfn;->c:Lba;

    sget v1, Laen;->di:I

    invoke-virtual {v0, v1}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 209
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 210
    if-eqz p2, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    goto :goto_0

    .line 203
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 205
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 210
    :cond_3
    const/4 v1, 0x0

    goto :goto_3
.end method


# virtual methods
.method public X_()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcfn;->a:Lcfc;

    iget-object v1, p0, Lcfn;->b:Lcfq;

    invoke-virtual {v0, v1}, Lcfc;->a(Lhku;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcfn;->h:Z

    .line 81
    invoke-virtual {p0}, Lcfn;->c()V

    .line 82
    return-void
.end method

.method public a()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcfn;->a:Lcfc;

    iget-object v1, p0, Lcfn;->b:Lcfq;

    invoke-virtual {v0, v1}, Lcfc;->b(Lhku;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcfn;->h:Z

    .line 88
    invoke-virtual {p0}, Lcfn;->c()V

    .line 89
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcfn;->f:I

    .line 93
    invoke-virtual {p0}, Lcfn;->c()V

    .line 94
    return-void
.end method

.method a(Lcgw;)V
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 302
    iget-object v0, p0, Lcfn;->c:Lba;

    sget v1, Laen;->cu:I

    invoke-virtual {v0, v1}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 303
    sget v1, Laen;->aT:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 304
    sget-boolean v1, Lcfn;->k:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lks;->e(Landroid/view/View;I)V

    .line 311
    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1}, Lcgw;->F()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 313
    invoke-virtual {p1}, Lcgw;->J()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 314
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    .line 308
    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {p1}, Lcgw;->T()Ljava/util/List;

    move-result-object v1

    .line 320
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_6

    .line 321
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchb;

    .line 322
    invoke-virtual {v1}, Lchb;->b()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 324
    iget-object v5, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v6, Lcom/google/android/apps/hangouts/hangout/StressMode;->bv:I

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v1, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v5, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v6, Lcom/google/android/apps/hangouts/hangout/StressMode;->bw:I

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v1, v7, v3

    .line 326
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 329
    iget-boolean v1, p0, Lcfn;->j:Z

    if-nez v1, :cond_4

    .line 330
    iput-boolean v2, p0, Lcfn;->j:Z

    .line 331
    const/16 v1, 0x65f

    invoke-static {v1}, Laal;->c(I)V

    .line 335
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    if-eqz v2, :cond_1

    sget-boolean v1, Lcfn;->k:Z

    if-nez v1, :cond_1

    .line 337
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lezc;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 335
    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_2
.end method

.method a(Z)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcfn;->c:Lba;

    sget v1, Laen;->cA:I

    invoke-virtual {v0, v1}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v2, Laal;->eL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_0

    int-to-long v0, v1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcfn;->a(ZZ)V

    .line 191
    return-void

    .line 189
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 97
    iget-object v0, p0, Lcfn;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v5

    .line 2121
    iget-boolean v0, p0, Lcfn;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcfn;->f:I

    if-ne v0, v9, :cond_0

    if-eqz v5, :cond_0

    .line 2124
    invoke-virtual {v5}, Lcgw;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2125
    :cond_0
    sget-object v0, Lcfr;->a:Lcfr;

    move-object v1, v0

    .line 99
    :goto_0
    iget-object v0, p0, Lcfn;->g:Lcfr;

    if-eq v1, v0, :cond_1

    .line 100
    iget-object v0, p0, Lcfn;->g:Lcfr;

    sget-object v4, Lcfr;->d:Lcfr;

    if-ne v0, v4, :cond_7

    move v4, v2

    .line 3214
    :goto_1
    iget-object v0, p0, Lcfn;->c:Lba;

    sget v6, Laen;->cu:I

    invoke-virtual {v0, v6}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3215
    sget v0, Laen;->cr:I

    .line 3216
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;

    .line 3217
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->a()V

    .line 3218
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3222
    iget-object v0, p0, Lcfn;->c:Lba;

    sget v6, Laen;->cA:I

    invoke-virtual {v0, v6}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3223
    iget-object v0, p0, Lcfn;->c:Lba;

    sget v7, Laen;->cr:I

    .line 3224
    invoke-virtual {v0, v7}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;

    .line 3225
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->a()V

    .line 3226
    iget-object v0, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v7, Laal;->eL:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3228
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    if-eqz v4, :cond_8

    .line 3229
    int-to-long v6, v0

    :goto_2
    invoke-virtual {v8, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v6, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v7, Laal;->eb:I

    .line 3230
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 3231
    iget-object v0, p0, Lcfn;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcfn;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3232
    invoke-direct {p0, v3, v4}, Lcfn;->a(ZZ)V

    .line 101
    iput-object v1, p0, Lcfn;->g:Lcfr;

    .line 102
    sget-object v0, Lcfp;->a:[I

    iget-object v1, p0, Lcfn;->g:Lcfr;

    invoke-virtual {v1}, Lcfr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    iget-object v0, p0, Lcfn;->g:Lcfr;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported overlay type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 118
    :cond_1
    :goto_3
    :pswitch_0
    return-void

    .line 2128
    :cond_2
    invoke-virtual {v5}, Lcgw;->C()Z

    move-result v1

    .line 2129
    invoke-virtual {v5}, Lcgw;->H()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 2130
    :goto_4
    invoke-virtual {v5}, Lcgw;->K()Z

    move-result v4

    .line 2131
    iget-object v6, p0, Lcfn;->a:Lcfc;

    invoke-virtual {v6}, Lcfc;->l()Z

    move-result v6

    .line 2132
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 2133
    if-eqz v4, :cond_4

    sget-object v0, Lcfr;->b:Lcfr;

    move-object v1, v0

    goto/16 :goto_0

    :cond_3
    move v0, v3

    .line 2129
    goto :goto_4

    .line 2133
    :cond_4
    sget-object v0, Lcfr;->c:Lcfr;

    move-object v1, v0

    goto/16 :goto_0

    .line 2134
    :cond_5
    if-nez v1, :cond_6

    if-nez v6, :cond_6

    .line 2135
    sget-object v0, Lcfr;->d:Lcfr;

    move-object v1, v0

    goto/16 :goto_0

    .line 2137
    :cond_6
    sget-object v0, Lcfr;->a:Lcfr;

    move-object v1, v0

    goto/16 :goto_0

    :cond_7
    move v4, v3

    .line 100
    goto/16 :goto_1

    .line 3229
    :cond_8
    const-wide/16 v6, 0x0

    goto/16 :goto_2

    .line 4142
    :pswitch_1
    iget-object v0, p0, Lcfn;->c:Lba;

    sget v1, Laen;->cu:I

    invoke-virtual {v0, v1}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 4143
    sget v0, Laen;->eK:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4144
    sget v1, Laen;->cr:I

    .line 4145
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;

    .line 4147
    invoke-virtual {v5}, Lcgw;->F()Ljava/util/List;

    move-result-object v7

    .line 4149
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_b

    sget v4, Lcom/google/android/apps/hangouts/R$drawable;->ax:I

    .line 4148
    :goto_5
    invoke-virtual {v1, v4}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->setBackgroundResource(I)V

    .line 4150
    invoke-virtual {v5}, Lcgw;->l()Lbfd;

    move-result-object v4

    invoke-virtual {v1, v4, v7}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->a(Lbfd;Ljava/util/List;)V

    .line 4151
    invoke-virtual {v5}, Lcgw;->K()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4152
    invoke-virtual {v5}, Lcgw;->l()Lbfd;

    move-result-object v4

    .line 4241
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    .line 4249
    invoke-virtual {v1}, Lcyx;->e()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 4250
    iget-object v4, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v7, Lcom/google/android/apps/hangouts/hangout/StressMode;->dL:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 4253
    invoke-virtual {v1}, Lcyx;->e()Ljava/lang/String;

    move-result-object v1

    sget v8, Lezp;->b:I

    .line 4252
    invoke-static {v1, v8}, Lezm;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 4250
    invoke-virtual {v4, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4152
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4153
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4154
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4156
    :cond_a
    invoke-virtual {p0, v5}, Lcfn;->a(Lcgw;)V

    goto/16 :goto_3

    :cond_b
    move v4, v3

    .line 4149
    goto :goto_5

    .line 4254
    :cond_c
    invoke-virtual {v1}, Lcyx;->h()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v4}, Lbfd;->t()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4255
    iget-object v7, p0, Lcfn;->d:Landroid/content/res/Resources;

    .line 4256
    invoke-virtual {v4}, Lbfd;->R()Z

    move-result v1

    if-nez v1, :cond_d

    .line 4257
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->dM:I

    .line 4258
    :goto_7
    new-array v2, v2, [Ljava/lang/Object;

    .line 4259
    invoke-virtual {v4}, Lbfd;->v()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4255
    invoke-virtual {v7, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 4258
    :cond_d
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->dN:I

    goto :goto_7

    .line 4262
    :cond_e
    iget-object v1, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->dG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 5160
    :pswitch_2
    invoke-virtual {v5}, Lcgw;->F()Ljava/util/List;

    move-result-object v4

    .line 5161
    iget-object v0, p0, Lcfn;->c:Lba;

    sget v1, Laen;->cA:I

    invoke-virtual {v0, v1}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5162
    sget v1, Laen;->eK:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5163
    iget-object v1, p0, Lcfn;->c:Lba;

    sget v6, Laen;->cr:I

    .line 5164
    invoke-virtual {v1, v6}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;

    .line 5166
    invoke-virtual {v5}, Lcgw;->l()Lbfd;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->a(Lbfd;Ljava/util/List;)V

    .line 5167
    invoke-virtual {v1, v3}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->setVisibility(I)V

    .line 5266
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 5292
    iget-object v1, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->dO:I

    .line 5293
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    .line 5294
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    invoke-static {v1, v2}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    .line 5295
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    invoke-static {v1, v2}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    .line 5296
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    invoke-static {v1, v2}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v9

    .line 5297
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v10

    .line 5292
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5168
    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5169
    invoke-virtual {p0, v3}, Lcfn;->a(Z)V

    goto/16 :goto_3

    .line 5268
    :pswitch_3
    iget-object v1, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->dG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 5270
    :pswitch_4
    iget-object v1, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->dH:I

    .line 5271
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    .line 5272
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    invoke-static {v1, v2}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    .line 5270
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 5274
    :pswitch_5
    iget-object v1, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->dI:I

    .line 5275
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 5276
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    invoke-static {v1, v2}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    .line 5277
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    invoke-static {v1, v2}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    .line 5274
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 5279
    :pswitch_6
    iget-object v1, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->dJ:I

    .line 5280
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    .line 5281
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    invoke-static {v1, v2}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    .line 5282
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    invoke-static {v1, v2}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    .line 5283
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    invoke-static {v1, v2}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v9

    .line 5279
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    .line 5285
    :pswitch_7
    iget-object v1, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->dK:I

    .line 5286
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    .line 5287
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    invoke-static {v1, v2}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    .line 5288
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    invoke-static {v1, v2}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    .line 5289
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    invoke-static {v1, v2}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v9

    .line 5290
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyx;

    invoke-static {v1, v2}, Laal;->a(Lcyx;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    .line 5285
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    .line 6173
    :pswitch_8
    iget-object v0, p0, Lcfn;->c:Lba;

    sget v1, Laen;->cA:I

    invoke-virtual {v0, v1}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 6174
    sget v0, Laen;->eK:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6175
    iget-object v1, p0, Lcfn;->c:Lba;

    sget v3, Laen;->cr:I

    .line 6176
    invoke-virtual {v1, v3}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;

    .line 6178
    iget-object v3, p0, Lcfn;->d:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->dC:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6179
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6180
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->a()V

    .line 6181
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsView;->setVisibility(I)V

    .line 6182
    iget-object v0, p0, Lcfn;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcfn;->l:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6183
    const/4 v0, 0x0

    invoke-static {v2, v0, v3}, Lezc;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 5266
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
