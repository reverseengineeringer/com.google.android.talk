.class public final Lcqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfct;


# static fields
.field static final a:I

.field static final b:Leyz;


# instance fields
.field c:J

.field private final d:Landroid/content/Context;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/view/View;

.field private final h:Ldlj;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Ldnv;->f:Ldnv;

    iget v0, v0, Ldnv;->l:I

    sput v0, Lcqp;->a:I

    .line 24
    sget-object v0, Leyz;->c:Leyz;

    sput-object v0, Lcqp;->b:Leyz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcqp;->d:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcqp;->g:Landroid/view/View;

    .line 40
    sget v0, Laal;->ns:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcqp;->e:Landroid/widget/TextView;

    .line 41
    sget v0, Laal;->nt:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcqp;->f:Landroid/widget/TextView;

    .line 43
    invoke-static {p1}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    .line 44
    const-class v1, Lino;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liog;

    .line 45
    new-instance v1, Lcqq;

    invoke-direct {v1, p0, p1, v0, p2}, Lcqq;-><init>(Lcqp;Landroid/content/Context;Liog;I)V

    iput-object v1, p0, Lcqp;->h:Ldlj;

    .line 46
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcqp;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 61
    iget-object v1, p0, Lcqp;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcqp;->h:Ldlj;

    invoke-virtual {v0}, Ldlj;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcqp;->i:Z

    if-eqz v0, :cond_2

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :cond_1
    return-void

    .line 63
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcqp;->h:Ldlj;

    invoke-virtual {v0, p1}, Ldlj;->a(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcqp;->i:Z

    .line 56
    invoke-virtual {p0}, Lcqp;->a()V

    .line 57
    return-void
.end method

.method b()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v0, p0, Lcqp;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lcqp;->d:Landroid/content/Context;

    iget-wide v2, p0, Lcqp;->c:J

    const/high16 v6, 0x40000

    invoke-static/range {v1 .. v6}, Laal;->a(Landroid/content/Context;JJI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Lcqp;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcqp;->d:Landroid/content/Context;

    iget-wide v2, p0, Lcqp;->c:J

    move v6, v8

    invoke-static/range {v1 .. v6}, Laal;->a(Landroid/content/Context;JJI)Ljava/lang/CharSequence;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcqp;->f:Landroid/widget/TextView;

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 94
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v0, p0, Lcqp;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v0, p0, Lcqp;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :goto_1
    iget-object v0, p0, Lcqp;->g:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    return-void

    :cond_0
    move-object v0, v1

    .line 93
    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcqp;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
