.class public final Lre;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lqw;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lrd;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lre;-><init>(Landroid/content/Context;I)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Lqw;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lrd;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lqw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lre;->a:Lqw;

    .line 282
    iput p2, p0, Lre;->b:I

    .line 283
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lre;->a:Lqw;

    iget-object v0, v0, Lqw;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)Lre;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lre;->a:Lqw;

    iput p1, v0, Lqw;->c:I

    .line 362
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Lre;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p1, v0, Lqw;->r:Landroid/content/DialogInterface$OnKeyListener;

    .line 515
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lre;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p1, v0, Lqw;->d:Landroid/graphics/drawable/Drawable;

    .line 372
    return-object p0
.end method

.method public a(Landroid/view/View;)Lre;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p1, v0, Lqw;->g:Landroid/view/View;

    .line 330
    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lre;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p1, v0, Lqw;->t:Landroid/widget/ListAdapter;

    .line 555
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p2, v0, Lqw;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 556
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lre;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p1, v0, Lqw;->f:Ljava/lang/CharSequence;

    .line 315
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lre;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p1, v0, Lqw;->i:Ljava/lang/CharSequence;

    .line 413
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p2, v0, Lqw;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 414
    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lre;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p1, v0, Lqw;->s:[Ljava/lang/CharSequence;

    .line 540
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p2, v0, Lqw;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 541
    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lre;
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p1, v0, Lqw;->s:[Ljava/lang/CharSequence;

    .line 631
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p3, v0, Lqw;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 632
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p2, v0, Lqw;->C:[Z

    .line 633
    iget-object v0, p0, Lre;->a:Lqw;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lqw;->D:Z

    .line 634
    return-object p0
.end method

.method public b()Lrd;
    .locals 3

    .prologue
    .line 882
    new-instance v0, Lrd;

    iget-object v1, p0, Lre;->a:Lqw;

    iget-object v1, v1, Lqw;->a:Landroid/content/Context;

    iget v2, p0, Lre;->b:I

    invoke-direct {v0, v1, v2}, Lrd;-><init>(Landroid/content/Context;I)V

    .line 883
    iget-object v1, p0, Lre;->a:Lqw;

    .line 1063
    iget-object v2, v0, Lrd;->a:Lqr;

    .line 883
    invoke-virtual {v1, v2}, Lqw;->a(Lqr;)V

    .line 884
    iget-object v1, p0, Lre;->a:Lqw;

    iget-boolean v1, v1, Lqw;->o:Z

    invoke-virtual {v0, v1}, Lrd;->setCancelable(Z)V

    .line 885
    iget-object v1, p0, Lre;->a:Lqw;

    iget-boolean v1, v1, Lqw;->o:Z

    if-eqz v1, :cond_0

    .line 886
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrd;->setCanceledOnTouchOutside(Z)V

    .line 888
    :cond_0
    iget-object v1, p0, Lre;->a:Lqw;

    iget-object v1, v1, Lqw;->p:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lrd;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 889
    iget-object v1, p0, Lre;->a:Lqw;

    iget-object v1, v1, Lqw;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lrd;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 890
    iget-object v1, p0, Lre;->a:Lqw;

    iget-object v1, v1, Lqw;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 891
    iget-object v1, p0, Lre;->a:Lqw;

    iget-object v1, v1, Lqw;->r:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lrd;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 893
    :cond_1
    return-object v0
.end method

.method public b(I)Lre;
    .locals 3

    .prologue
    .line 385
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 386
    iget-object v1, p0, Lre;->a:Lqw;

    iget-object v1, v1, Lqw;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 387
    iget-object v1, p0, Lre;->a:Lqw;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, v1, Lqw;->c:I

    .line 388
    return-object p0
.end method

.method public b(Landroid/view/View;)Lre;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 814
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p1, v0, Lqw;->w:Landroid/view/View;

    .line 815
    iget-object v0, p0, Lre;->a:Lqw;

    iput v1, v0, Lqw;->v:I

    .line 816
    iget-object v0, p0, Lre;->a:Lqw;

    iput-boolean v1, v0, Lqw;->B:Z

    .line 817
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lre;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p1, v0, Lqw;->h:Ljava/lang/CharSequence;

    .line 350
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lre;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p1, v0, Lqw;->k:Ljava/lang/CharSequence;

    .line 439
    iget-object v0, p0, Lre;->a:Lqw;

    iput-object p2, v0, Lqw;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 440
    return-object p0
.end method
