.class public final Lchu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcgm;
.implements Lcjc;
.implements Lcje;


# static fields
.field static final a:J

.field private static final i:J

.field private static final r:Lksm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lksm",
            "<",
            "Lhke;",
            "Lhkd;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Lksm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lksm",
            "<",
            "Lhkd;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Lcfc;

.field final c:Ljava/lang/Runnable;

.field final d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

.field final e:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

.field f:Lcgn;

.field g:Z

.field h:Lcic;

.field private final j:Lcib;

.field private final k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

.field private final l:Landroid/view/View;

.field private final m:Ljava/lang/Runnable;

.field private final n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

.field private final o:I

.field private p:Z

.field private q:Z

.field private final t:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 122
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lchu;->i:J

    .line 124
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lchu;->a:J

    .line 172
    sget-object v0, Lhke;->a:Lhke;

    sget-object v1, Lhkd;->a:Lhkd;

    sget-object v2, Lhke;->d:Lhke;

    sget-object v3, Lhkd;->c:Lhkd;

    sget-object v4, Lhke;->b:Lhke;

    sget-object v5, Lhkd;->b:Lhkd;

    sget-object v6, Lhke;->c:Lhke;

    sget-object v7, Lhkd;->d:Lhkd;

    .line 173
    invoke-static/range {v0 .. v7}, Lksm;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lksm;

    move-result-object v0

    sput-object v0, Lchu;->r:Lksm;

    .line 180
    sget-object v0, Lhkd;->a:Lhkd;

    const/16 v1, 0x80f

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lhkd;->c:Lhkd;

    const/16 v3, 0x80e

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lhkd;->b:Lhkd;

    const/16 v5, 0x810

    .line 186
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lhkd;->d:Lhkd;

    const/16 v7, 0x811

    .line 188
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 181
    invoke-static/range {v0 .. v7}, Lksm;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lksm;

    move-result-object v0

    sput-object v0, Lchu;->s:Lksm;

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/HangoutFragment;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    iput-object v0, p0, Lchu;->b:Lcfc;

    .line 133
    new-instance v0, Lcib;

    .line 1055
    invoke-direct {v0, p0}, Lcib;-><init>(Lchu;)V

    .line 133
    iput-object v0, p0, Lchu;->j:Lcib;

    .line 136
    new-instance v0, Lchv;

    invoke-direct {v0, p0}, Lchv;-><init>(Lchu;)V

    iput-object v0, p0, Lchu;->m:Ljava/lang/Runnable;

    .line 144
    new-instance v0, Lchw;

    invoke-direct {v0, p0}, Lchw;-><init>(Lchu;)V

    iput-object v0, p0, Lchu;->c:Ljava/lang/Runnable;

    .line 167
    iput-boolean v2, p0, Lchu;->q:Z

    .line 169
    sget-object v0, Lcic;->a:Lcic;

    iput-object v0, p0, Lchu;->h:Lcic;

    .line 222
    new-instance v0, Lchx;

    invoke-direct {v0, p0}, Lchx;-><init>(Lchu;)V

    iput-object v0, p0, Lchu;->t:Landroid/view/View$OnClickListener;

    .line 191
    iput-object p2, p0, Lchu;->l:Landroid/view/View;

    .line 192
    invoke-virtual {p1}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->getActivity()Lba;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    iput-object v0, p0, Lchu;->k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 193
    iget-object v0, p0, Lchu;->k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 194
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->ed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lchu;->o:I

    .line 196
    sget v0, Laen;->cX:I

    .line 197
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    iput-object v0, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    .line 198
    sget v0, Laen;->cY:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    iput-object v0, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    .line 199
    sget v0, Laen;->cH:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    iput-object v0, p0, Lchu;->e:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    .line 202
    iget-object v0, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->setVisibility(I)V

    .line 204
    iput-boolean v2, p0, Lchu;->g:Z

    .line 206
    sget v0, Laen;->dJ:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 207
    iget-object v1, p0, Lchu;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    return-void
.end method

.method private b(Z)V
    .locals 5

    .prologue
    .line 503
    if-eqz p1, :cond_0

    .line 504
    iget-object v0, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    .line 506
    invoke-direct {p0}, Lchu;->q()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lchu;->o:I

    iget-object v3, p0, Lchu;->l:Landroid/view/View;

    iget-object v4, p0, Lchu;->k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 507
    invoke-static {v3, v4}, Lexa;->a(Landroid/view/View;Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    const/4 v4, 0x1

    .line 505
    invoke-virtual {p0, v1, v2, v3, v4}, Lchu;->a(IILandroid/widget/LinearLayout;Z)Landroid/view/animation/Animation;

    move-result-object v1

    .line 504
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 518
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    iget v1, p0, Lchu;->o:I

    iget-object v2, p0, Lchu;->k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 513
    invoke-static {v2}, Lexa;->b(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    .line 514
    invoke-direct {p0}, Lchu;->q()I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    const/4 v4, 0x0

    .line 512
    invoke-virtual {p0, v1, v2, v3, v4}, Lchu;->a(IILandroid/widget/LinearLayout;Z)Landroid/view/animation/Animation;

    move-result-object v1

    .line 511
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private p()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 303
    iget-object v2, p0, Lchu;->b:Lcfc;

    invoke-virtual {v2}, Lcfc;->r()Lcgw;

    move-result-object v2

    .line 304
    if-nez v2, :cond_0

    move-object v2, v1

    .line 305
    :goto_0
    if-nez v2, :cond_1

    .line 307
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v0, :cond_2

    :goto_2
    return v0

    .line 304
    :cond_0
    invoke-virtual {v2}, Lcgw;->q()Lhcs;

    move-result-object v2

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {v2}, Lhcs;->l()Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    .line 307
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private q()I
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v1, :cond_0

    .line 427
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 431
    :goto_0
    return v0

    .line 429
    :cond_0
    iget-object v0, p0, Lchu;->k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 430
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->ec:I

    .line 431
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 451
    :cond_0
    iget-object v0, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 455
    :cond_1
    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lchu;->k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->g()Lqe;

    move-result-object v0

    invoke-virtual {v0}, Lqe;->f()V

    .line 832
    iget-object v0, p0, Lchu;->l:Landroid/view/View;

    invoke-static {v0}, Lexa;->a(Landroid/view/View;)V

    .line 833
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lchu;->k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->g()Lqe;

    move-result-object v0

    invoke-virtual {v0}, Lqe;->e()V

    .line 837
    iget-object v0, p0, Lchu;->l:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lexa;->a(Landroid/view/View;Z)V

    .line 838
    return-void
.end method


# virtual methods
.method public a(IILandroid/widget/LinearLayout;Z)Landroid/view/animation/Animation;
    .locals 8

    .prologue
    .line 525
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 526
    sub-int v4, p2, p1

    .line 527
    const-string v3, "Babel_calls"

    iget-object v0, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    if-ne p3, v0, :cond_0

    .line 530
    const-string v0, "menu"

    move-object v1, v0

    :goto_0
    if-eqz p4, :cond_1

    .line 536
    const-string v0, "up"

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x44

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "createAnimation for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " -> "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 527
    invoke-static {v3, v0, v1}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    new-instance v0, Lchy;

    move-object v1, p0

    move v3, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lchy;-><init>(Lchu;Landroid/view/ViewGroup$LayoutParams;IILandroid/widget/LinearLayout;Z)V

    .line 556
    iget-object v1, p0, Lchu;->k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 558
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->eL:I

    .line 559
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    .line 556
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 560
    return-object v0

    .line 530
    :cond_0
    const-string v0, "filmstrip"

    move-object v1, v0

    goto :goto_0

    .line 536
    :cond_1
    const-string v0, "down"

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 732
    const-string v0, ""

    .line 733
    iget-object v1, p0, Lchu;->h:Lcic;

    sget-object v2, Lcic;->b:Lcic;

    if-ne v1, v2, :cond_1

    .line 734
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->dP:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    :cond_0
    :goto_0
    return-object v0

    .line 735
    :cond_1
    iget-object v1, p0, Lchu;->h:Lcic;

    sget-object v2, Lcic;->c:Lcic;

    if-ne v1, v2, :cond_0

    .line 736
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->et:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 665
    invoke-virtual {p0}, Lchu;->c()V

    .line 667
    :cond_0
    return-void
.end method

.method public a(Lcgn;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 603
    iput-object p1, p0, Lchu;->f:Lcgn;

    .line 605
    invoke-virtual {p1}, Lcgn;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 606
    invoke-virtual {p1, v2}, Lcgn;->a(I)V

    .line 607
    iget-object v0, p0, Lchu;->e:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    invoke-virtual {p0, v0}, Lchu;->a(Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;)V

    .line 613
    :goto_0
    invoke-static {}, Lewz;->b()Z

    move-result v0

    iput-boolean v0, p0, Lchu;->p:Z

    .line 615
    invoke-virtual {p0}, Lchu;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lchu;->p:Z

    if-nez v0, :cond_1

    .line 616
    sget-object v0, Lcic;->c:Lcic;

    iput-object v0, p0, Lchu;->h:Lcic;

    .line 617
    iget-object v0, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->setVisibility(I)V

    .line 618
    invoke-direct {p0}, Lchu;->s()V

    .line 625
    :goto_1
    iget-object v0, p0, Lchu;->b:Lcfc;

    iget-object v1, p0, Lchu;->j:Lcib;

    invoke-virtual {v0, v1}, Lcfc;->a(Lhku;)V

    .line 627
    invoke-virtual {p0}, Lchu;->d()V

    .line 630
    invoke-virtual {p0}, Lchu;->m()V

    .line 633
    invoke-virtual {p1}, Lcgn;->b()Lba;

    move-result-object v0

    const-class v1, Lcla;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcla;

    .line 634
    new-instance v1, Lcia;

    invoke-direct {v1, p0}, Lcia;-><init>(Lchu;)V

    invoke-interface {v0, v1}, Lcla;->a(Ljava/lang/Runnable;)V

    .line 649
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    invoke-virtual {p0, v0}, Lchu;->a(Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;)V

    goto :goto_0

    .line 621
    :cond_1
    sget-object v0, Lcic;->b:Lcic;

    iput-object v0, p0, Lchu;->h:Lcic;

    .line 622
    invoke-virtual {p0}, Lchu;->c()V

    goto :goto_1
.end method

.method a(Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;)V
    .locals 3

    .prologue
    .line 580
    invoke-virtual {p1}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lchu;->f:Lcgn;

    new-instance v1, Lhkx;

    invoke-direct {v1}, Lhkx;-><init>()V

    .line 583
    invoke-virtual {v1}, Lhkx;->f()Lhkx;

    move-result-object v1

    iget-object v2, p0, Lchu;->b:Lcfc;

    .line 584
    invoke-virtual {v2}, Lcfc;->r()Lcgw;

    move-result-object v2

    .line 581
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->a(Lcgn;Lhkx;Lcgw;)V

    .line 586
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 700
    if-eqz p1, :cond_0

    .line 701
    invoke-virtual {p0}, Lchu;->k()V

    .line 705
    :goto_0
    return-void

    .line 703
    :cond_0
    invoke-virtual {p0}, Lchu;->j()V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 2

    .prologue
    .line 805
    if-nez p2, :cond_0

    .line 806
    if-eqz p1, :cond_1

    .line 808
    invoke-direct {p0}, Lchu;->s()V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v0, p0, Lchu;->h:Lcic;

    sget-object v1, Lcic;->a:Lcic;

    if-eq v0, v1, :cond_0

    .line 811
    invoke-direct {p0}, Lchu;->t()V

    .line 814
    invoke-virtual {p0}, Lchu;->m()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 827
    invoke-virtual {p0}, Lchu;->o()Z

    move-result v0

    return v0
.end method

.method b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 742
    const-string v0, ""

    .line 743
    iget-object v1, p0, Lchu;->h:Lcic;

    sget-object v2, Lcic;->b:Lcic;

    if-ne v1, v2, :cond_1

    .line 744
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->cv:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 748
    :cond_0
    :goto_0
    return-object v0

    .line 745
    :cond_1
    iget-object v1, p0, Lchu;->h:Lcic;

    sget-object v2, Lcic;->c:Lcic;

    if-ne v1, v2, :cond_0

    .line 746
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->cw:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lchu;->k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 212
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->g()Lqe;

    move-result-object v0

    new-instance v1, Lqg;

    invoke-direct {v1, p0}, Lqg;-><init>(Lchu;)V

    .line 213
    invoke-virtual {v0, v1}, Lqe;->a(Lqg;)V

    .line 220
    return-void
.end method

.method c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    invoke-virtual {p0}, Lchu;->d()V

    .line 247
    invoke-virtual {p0}, Lchu;->m()V

    .line 249
    iget-object v0, p0, Lchu;->f:Lcgn;

    invoke-virtual {v0}, Lcgn;->j()V

    .line 251
    invoke-direct {p0}, Lchu;->t()V

    .line 1488
    invoke-direct {p0}, Lchu;->r()V

    .line 1490
    iget-object v0, p0, Lchu;->f:Lcgn;

    invoke-virtual {v0}, Lcgn;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1491
    const-string v0, "Babel_calls"

    iget-object v1, p0, Lchu;->h:Lcic;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "animateControlsUp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1492
    iget-object v0, p0, Lchu;->h:Lcic;

    sget-object v1, Lcic;->b:Lcic;

    if-eq v0, v1, :cond_0

    .line 1493
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lchu;->b(Z)V

    .line 1495
    :cond_0
    iget-object v0, p0, Lchu;->h:Lcic;

    sget-object v1, Lcic;->c:Lcic;

    if-ne v0, v1, :cond_1

    .line 1496
    iget-object v0, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->a(Z)V

    .line 1498
    :cond_1
    iget-object v0, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->setVisibility(I)V

    .line 256
    :cond_2
    invoke-virtual {p0}, Lchu;->j()V

    .line 258
    sget-object v0, Lcic;->b:Lcic;

    iput-object v0, p0, Lchu;->h:Lcic;

    .line 259
    return-void
.end method

.method d()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    iget-object v3, p0, Lchu;->b:Lcfc;

    invoke-virtual {v3}, Lcfc;->r()Lcgw;

    move-result-object v3

    .line 264
    if-nez v3, :cond_3

    move-object v3, v0

    .line 265
    :goto_0
    if-nez v3, :cond_4

    .line 267
    :goto_1
    iget-object v3, p0, Lchu;->b:Lcfc;

    invoke-virtual {v3}, Lcfc;->t()Z

    move-result v6

    .line 268
    if-nez v0, :cond_5

    move v0, v1

    .line 269
    :goto_2
    iget-object v3, p0, Lchu;->f:Lcgn;

    if-nez v3, :cond_7

    move v3, v2

    .line 271
    :goto_3
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_8

    move v5, v1

    .line 273
    :goto_4
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    move v3, v1

    .line 276
    :goto_5
    iget-object v4, p0, Lchu;->b:Lcfc;

    invoke-virtual {v4}, Lcfc;->k()Lhjk;

    move-result-object v7

    .line 278
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lhjk;->a()Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v1

    .line 281
    :goto_6
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lhjk;->b()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 282
    add-int/lit8 v4, v4, 0x1

    .line 285
    :cond_0
    if-eqz v5, :cond_a

    invoke-direct {p0}, Lchu;->p()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_a

    :cond_1
    move v0, v1

    .line 288
    :goto_7
    if-nez v0, :cond_b

    if-eqz v3, :cond_b

    if-nez v6, :cond_b

    if-le v4, v1, :cond_b

    if-eqz v7, :cond_b

    .line 294
    invoke-virtual {v7}, Lhjk;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 296
    :goto_8
    iget-object v0, p0, Lchu;->f:Lcgn;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lchu;->f:Lcgn;

    if-eqz v1, :cond_c

    :goto_9
    invoke-virtual {v0, v2}, Lcgn;->b(I)V

    .line 300
    :cond_2
    return-void

    .line 264
    :cond_3
    invoke-virtual {v3}, Lcgw;->q()Lhcs;

    move-result-object v3

    goto :goto_0

    .line 266
    :cond_4
    invoke-virtual {v3}, Lhcs;->l()Ljava/util/Collection;

    move-result-object v0

    goto :goto_1

    .line 268
    :cond_5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_2

    .line 270
    :cond_7
    iget-object v3, p0, Lchu;->f:Lcgn;

    invoke-virtual {v3}, Lcgn;->g()I

    move-result v3

    goto :goto_3

    :cond_8
    move v5, v2

    .line 271
    goto :goto_4

    :cond_9
    move v3, v2

    .line 273
    goto :goto_5

    :cond_a
    move v0, v2

    .line 285
    goto :goto_7

    :cond_b
    move v1, v2

    .line 294
    goto :goto_8

    .line 298
    :cond_c
    const/16 v2, 0x8

    goto :goto_9

    :cond_d
    move v4, v2

    goto :goto_6
.end method

.method public e()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lchu;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcgw;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v6, v0

    .line 320
    :goto_0
    invoke-virtual {v1}, Lcgw;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lbkw;->c:Lbkw;

    move-object v7, v0

    .line 321
    :goto_1
    iget-object v0, p0, Lchu;->f:Lcgn;

    .line 323
    invoke-virtual {v0}, Lcgn;->a()Lbfd;

    move-result-object v8

    .line 2334
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2335
    iget-object v0, p0, Lchu;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lhkx;

    .line 2338
    invoke-virtual {v3}, Lhkx;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lhkx;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2341
    invoke-virtual {v3}, Lhkx;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v2}, Laal;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lczb;

    move-result-object v0

    .line 2342
    invoke-virtual {v3}, Lhkx;->b()Ljava/lang/String;

    move-result-object v1

    .line 2345
    invoke-virtual {v3}, Lhkx;->c()Ljava/lang/String;

    move-result-object v4

    move-object v3, v2

    move-object v5, v2

    .line 2340
    invoke-static/range {v0 .. v5}, Laal;->a(Lczb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcyx;

    move-result-object v0

    .line 2347
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 317
    :cond_1
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 320
    :cond_2
    sget-object v0, Lbkw;->d:Lbkw;

    move-object v7, v0

    goto :goto_1

    .line 325
    :cond_3
    if-eqz v6, :cond_4

    .line 327
    sget-object v0, Ldhm;->e:Ldhm;

    .line 322
    :goto_3
    invoke-static {v8, v2, v9, v0, v7}, Laal;->a(Lbfd;Ljava/lang/String;Ljava/util/Collection;Ldhm;Lbkw;)Landroid/content/Intent;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lchu;->k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 331
    return-void

    .line 328
    :cond_4
    sget-object v0, Ldhm;->f:Ldhm;

    goto :goto_3
.end method

.method public f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 356
    const/16 v0, 0x5fd

    invoke-static {v0}, Laal;->c(I)V

    .line 357
    iget-object v0, p0, Lchu;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->k()Lhjk;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lhjk;->h()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 359
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lhjk;->a(I)V

    .line 360
    const-string v0, "Babel_calls"

    const-string v1, "Switching to rear camera"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :goto_0
    invoke-virtual {p0}, Lchu;->j()V

    .line 367
    iget-object v0, p0, Lchu;->f:Lcgn;

    invoke-virtual {v0}, Lcgn;->j()V

    .line 370
    invoke-static {}, Lewz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lchu;->l:Landroid/view/View;

    sget v1, Laen;->cP:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 372
    const-string v1, "Switch camera button view is null after being tapped."

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {v0, v3}, Lhjk;->a(I)V

    .line 363
    const-string v0, "Babel_calls"

    const-string v1, "Switching to front camera"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public g()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 378
    const/16 v1, 0x5fb

    invoke-static {v1}, Laal;->c(I)V

    .line 2395
    iget-object v1, p0, Lchu;->b:Lcfc;

    invoke-virtual {v1}, Lcfc;->j()Lhjz;

    move-result-object v1

    .line 2396
    if-nez v1, :cond_1

    .line 382
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 392
    :goto_1
    return-void

    .line 2399
    :cond_1
    invoke-virtual {v1}, Lhjz;->c()Lhke;

    move-result-object v2

    .line 2400
    invoke-virtual {v1}, Lhjz;->d()Ljava/util/Set;

    move-result-object v1

    .line 2404
    sget-object v4, Lhke;->e:Lhke;

    if-eq v2, v4, :cond_0

    sget-object v4, Lhke;->f:Lhke;

    if-eq v2, v4, :cond_0

    .line 2409
    sget-object v0, Lchu;->r:Lksm;

    invoke-virtual {v0, v2}, Lksm;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkd;

    .line 2411
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lhkd;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lhkd;

    .line 2412
    aget-object v4, v1, v3

    move v2, v3

    .line 2414
    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 2415
    aget-object v5, v1, v2

    invoke-virtual {v5, v0}, Lhkd;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2416
    add-int/lit8 v0, v2, 0x1

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v0, v1, v0

    goto :goto_0

    .line 2414
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 386
    :cond_3
    sget-object v1, Lchu;->s:Lksm;

    invoke-virtual {v1, v0}, Lksm;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 3134
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v1}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 388
    iget-object v1, p0, Lchu;->b:Lcfc;

    invoke-virtual {v1}, Lcfc;->j()Lhjz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhjz;->a(Lhkd;)V

    .line 389
    iget-object v1, p0, Lchu;->f:Lcgn;

    invoke-virtual {v1}, Lcgn;->k()V

    .line 391
    sget-object v1, Lchu;->s:Lksm;

    invoke-virtual {v1, v0}, Lksm;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4043
    invoke-static {v0, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 391
    invoke-static {v0}, Laal;->c(I)V

    goto :goto_1

    :cond_4
    move-object v0, v4

    goto :goto_0
.end method

.method h()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 564
    const-string v0, "Babel_calls"

    const-string v1, "MenuController.dismissAllMenus"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    invoke-virtual {p0}, Lchu;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lchu;->c()V

    .line 577
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-direct {p0}, Lchu;->s()V

    .line 4461
    invoke-direct {p0}, Lchu;->r()V

    .line 4462
    const-string v0, "Babel_calls"

    iget-object v1, p0, Lchu;->f:Lcgn;

    .line 4464
    invoke-virtual {v1}, Lcgn;->c()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "MenuController.animateControlsDown uiState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 4462
    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4466
    iget-object v0, p0, Lchu;->f:Lcgn;

    invoke-virtual {v0}, Lcgn;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4467
    const-string v0, "Babel_calls"

    iget-object v1, p0, Lchu;->h:Lcic;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "MenuController.animateControlsDown visibleMenu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4468
    iget-object v0, p0, Lchu;->h:Lcic;

    sget-object v1, Lcic;->b:Lcic;

    if-ne v0, v1, :cond_1

    .line 4469
    invoke-direct {p0, v4}, Lchu;->b(Z)V

    .line 4471
    :cond_1
    iget-object v0, p0, Lchu;->h:Lcic;

    sget-object v1, Lcic;->c:Lcic;

    if-eq v0, v1, :cond_2

    .line 4472
    iget-object v0, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->a(Z)V

    .line 4475
    :cond_2
    iget-object v0, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->setVisibility(I)V

    .line 4478
    iget-boolean v0, p0, Lchu;->q:Z

    if-nez v0, :cond_3

    .line 4479
    iget-object v0, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->b()V

    .line 4480
    iput-boolean v5, p0, Lchu;->q:Z

    .line 575
    :cond_3
    sget-object v0, Lcic;->c:Lcic;

    iput-object v0, p0, Lchu;->h:Lcic;

    .line 4696
    iget-object v0, p0, Lchu;->m:Ljava/lang/Runnable;

    .line 5089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method i()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 670
    iget-object v1, p0, Lchu;->b:Lcfc;

    invoke-virtual {v1}, Lcfc;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    :cond_0
    :goto_0
    return v0

    .line 674
    :cond_1
    iget-object v1, p0, Lchu;->b:Lcfc;

    invoke-virtual {v1}, Lcfc;->r()Lcgw;

    move-result-object v1

    .line 675
    if-eqz v1, :cond_2

    .line 676
    invoke-virtual {v1}, Lcgw;->J()I

    move-result v1

    .line 677
    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    invoke-direct {p0}, Lchu;->p()Z

    move-result v1

    if-nez v1, :cond_0

    .line 683
    :cond_2
    iget-object v1, p0, Lchu;->f:Lcgn;

    invoke-virtual {v1}, Lcgn;->i()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lchu;->b:Lcfc;

    invoke-virtual {v1}, Lcfc;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method j()V
    .locals 4

    .prologue
    .line 688
    iget-boolean v0, p0, Lchu;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lchu;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8696
    iget-object v0, p0, Lchu;->m:Ljava/lang/Runnable;

    .line 9089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 690
    iget-object v0, p0, Lchu;->m:Ljava/lang/Runnable;

    sget-wide v2, Lchu;->i:J

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 692
    :cond_0
    return-void
.end method

.method k()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lchu;->m:Ljava/lang/Runnable;

    .line 10089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 697
    return-void
.end method

.method l()V
    .locals 0

    .prologue
    .line 728
    invoke-virtual {p0}, Lchu;->j()V

    .line 729
    return-void
.end method

.method m()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 753
    invoke-direct {p0}, Lchu;->r()V

    .line 756
    iget-object v0, p0, Lchu;->h:Lcic;

    sget-object v1, Lcic;->b:Lcic;

    if-ne v0, v1, :cond_0

    move v1, v2

    .line 757
    :goto_0
    iget-object v0, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    .line 758
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 759
    if-eqz v1, :cond_1

    .line 761
    iget v4, p0, Lchu;->o:I

    iget-object v7, p0, Lchu;->l:Landroid/view/View;

    iget-object v8, p0, Lchu;->k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    invoke-static {v7, v8}, Lexa;->a(Landroid/view/View;Landroid/content/Context;)I

    move-result v7

    add-int/2addr v4, v7

    .line 762
    :goto_1
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 763
    iget-object v4, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    iget-object v4, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    if-eqz v1, :cond_2

    move v0, v5

    :goto_2
    invoke-virtual {v4, v0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->setAlpha(F)V

    .line 767
    iget-object v0, p0, Lchu;->h:Lcic;

    sget-object v1, Lcic;->c:Lcic;

    if-ne v0, v1, :cond_3

    .line 768
    :goto_3
    iget-object v0, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    .line 769
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 770
    if-eqz v2, :cond_4

    .line 772
    iget v1, p0, Lchu;->o:I

    iget-object v3, p0, Lchu;->l:Landroid/view/View;

    iget-object v4, p0, Lchu;->k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    invoke-static {v3, v4}, Lexa;->a(Landroid/view/View;Landroid/content/Context;)I

    move-result v3

    add-int/2addr v1, v3

    .line 773
    :goto_4
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 774
    iget-object v1, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    iget-object v0, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    if-eqz v2, :cond_6

    :goto_5
    invoke-virtual {v0, v5}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->setAlpha(F)V

    .line 776
    return-void

    :cond_0
    move v1, v3

    .line 756
    goto :goto_0

    .line 762
    :cond_1
    invoke-direct {p0}, Lchu;->q()I

    move-result v4

    neg-int v4, v4

    goto :goto_1

    :cond_2
    move v0, v6

    .line 764
    goto :goto_2

    :cond_3
    move v2, v3

    .line 767
    goto :goto_3

    .line 10436
    :cond_4
    iget-object v1, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 10437
    if-eqz v1, :cond_5

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v3, :cond_5

    .line 10438
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 773
    :goto_6
    neg-int v1, v1

    goto :goto_4

    .line 10440
    :cond_5
    iget-object v1, p0, Lchu;->k:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 10441
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laal;->ef:I

    .line 10442
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_6

    :cond_6
    move v5, v6

    .line 775
    goto :goto_5
.end method

.method n()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lchu;->h:Lcic;

    sget-object v1, Lcic;->c:Lcic;

    if-ne v0, v1, :cond_1

    .line 786
    iget-object v0, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lchu;->n:Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;->a(Z)V

    .line 794
    :goto_0
    return-void

    .line 789
    :cond_0
    invoke-virtual {p0}, Lchu;->c()V

    goto :goto_0

    .line 792
    :cond_1
    invoke-virtual {p0}, Lchu;->h()V

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lchu;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->j()Lhjz;

    move-result-object v0

    .line 821
    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {v0}, Lhjz;->c()Lhke;

    move-result-object v0

    sget-object v1, Lhke;->b:Lhke;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 590
    iget-object v0, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    new-instance v1, Lchz;

    invoke-direct {v1, p0}, Lchz;-><init>(Lchu;)V

    .line 5717
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    .line 5718
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 5719
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 5720
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 598
    invoke-virtual {p0}, Lchu;->m()V

    .line 599
    return-void
.end method

.method public r_()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lchu;->b:Lcfc;

    iget-object v1, p0, Lchu;->j:Lcib;

    invoke-virtual {v0, v1}, Lcfc;->b(Lhku;)V

    .line 654
    iget-object v0, p0, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->b()V

    .line 655
    iget-object v0, p0, Lchu;->e:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->b()V

    .line 6696
    iget-object v0, p0, Lchu;->m:Ljava/lang/Runnable;

    .line 7089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 657
    iget-object v0, p0, Lchu;->c:Ljava/lang/Runnable;

    .line 8089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lchu;->f:Lcgn;

    .line 659
    return-void
.end method
