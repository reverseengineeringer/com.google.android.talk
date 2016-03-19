.class public final Lhwp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liny;
.implements Lioo;
.implements Lios;
.implements Liov;
.implements Lioz;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Ljava/lang/CharSequence;

.field private i:Landroid/view/View$OnClickListener;

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Z

.field private m:Z

.field private n:Lhws;

.field private final o:Lhwr;


# direct methods
.method public constructor <init>(Liog;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v0, p0, Lhwp;->e:Z

    .line 61
    iput-boolean v0, p0, Lhwp;->f:Z

    .line 71
    sget-object v0, Lhws;->a:Lhws;

    iput-object v0, p0, Lhwp;->n:Lhws;

    .line 74
    new-instance v0, Lhwr;

    invoke-direct {v0, p0}, Lhwr;-><init>(Lhwp;)V

    iput-object v0, p0, Lhwp;->o:Lhwr;

    .line 78
    invoke-virtual {p1, p0}, Liog;->a(Lioz;)Lioz;

    .line 79
    return-void
.end method

.method private static a(Landroid/widget/TextView;ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 368
    if-nez p0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 371
    :cond_0
    if-eqz p1, :cond_1

    .line 372
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 374
    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 291
    iget-boolean v0, p0, Lhwp;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhwp;->a:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2324
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    sget-object v0, Lhwq;->a:[I

    iget-object v1, p0, Lhwp;->n:Lhws;

    invoke-virtual {v1}, Lhws;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 297
    :pswitch_0
    iget-boolean v0, p0, Lhwp;->l:Z

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lhwp;->o:Lhwr;

    invoke-virtual {v0}, Lhwr;->a()V

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {p0}, Lhwp;->c()V

    goto :goto_0

    .line 2320
    :pswitch_1
    iget-object v0, p0, Lhwp;->o:Lhwr;

    invoke-virtual {v0}, Lhwr;->b()V

    .line 2321
    iget-boolean v0, p0, Lhwp;->e:Z

    if-eqz v0, :cond_3

    .line 2322
    iget-object v0, p0, Lhwp;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2323
    iget-object v0, p0, Lhwp;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2324
    iget-object v0, p0, Lhwp;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2326
    :cond_3
    iget-object v0, p0, Lhwp;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2349
    :pswitch_2
    iget-object v0, p0, Lhwp;->o:Lhwr;

    invoke-virtual {v0}, Lhwr;->b()V

    .line 2350
    iget-object v0, p0, Lhwp;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public X_()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhwp;->m:Z

    .line 282
    invoke-direct {p0}, Lhwp;->d()V

    .line 283
    return-void
.end method

.method public a()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhwp;->m:Z

    .line 288
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhwp;->l:Z

    .line 258
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 263
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhwp;->a:Landroid/view/View;

    .line 1268
    iget-object v0, p0, Lhwp;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lhwp;->a:Landroid/view/View;

    sget v1, Laal;->ub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhwp;->b:Landroid/widget/TextView;

    .line 1273
    iget-object v0, p0, Lhwp;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lhwp;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1274
    iget-object v0, p0, Lhwp;->a:Landroid/view/View;

    sget v1, Laal;->tZ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhwp;->c:Landroid/view/View;

    .line 1275
    iget-object v0, p0, Lhwp;->a:Landroid/view/View;

    sget v1, Laal;->ua:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhwp;->d:Landroid/widget/TextView;

    .line 1357
    iget-object v0, p0, Lhwp;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lhwp;->b:Landroid/widget/TextView;

    iget v1, p0, Lhwp;->g:I

    iget-object v2, p0, Lhwp;->h:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lhwp;->a(Landroid/widget/TextView;ILjava/lang/CharSequence;)V

    .line 1361
    iget-object v0, p0, Lhwp;->d:Landroid/widget/TextView;

    iget v1, p0, Lhwp;->j:I

    iget-object v2, p0, Lhwp;->k:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lhwp;->a(Landroid/widget/TextView;ILjava/lang/CharSequence;)V

    .line 265
    :cond_0
    return-void
.end method

.method public a(Lhws;)V
    .locals 1

    .prologue
    .line 89
    invoke-static {p1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhws;

    iput-object v0, p0, Lhwp;->n:Lhws;

    .line 90
    invoke-direct {p0}, Lhwp;->d()V

    .line 91
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 334
    iget-boolean v0, p0, Lhwp;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhwp;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhwp;->n:Lhws;

    sget-object v1, Lhws;->a:Lhws;

    if-ne v0, v1, :cond_0

    .line 335
    iget-boolean v0, p0, Lhwp;->f:Z

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lhwp;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lhwp;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lhwp;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lhwp;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
