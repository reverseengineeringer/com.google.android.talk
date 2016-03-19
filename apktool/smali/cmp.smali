.class final Lcmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilu;
.implements Liop;
.implements Lior;
.implements Liot;
.implements Liox;
.implements Lioy;
.implements Lioz;


# instance fields
.field final a:Lrf;

.field b:Lclp;

.field c:Lcmu;

.field private d:Lcln;

.field private final e:Lcmr;

.field private f:Lchc;


# direct methods
.method constructor <init>(Lrf;Liog;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcmp;->a:Lrf;

    .line 50
    new-instance v0, Lcmr;

    .line 1162
    invoke-direct {v0, p0}, Lcmr;-><init>(Lcmp;)V

    .line 50
    iput-object v0, p0, Lcmp;->e:Lcmr;

    .line 51
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 52
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcmp;->b:Lclp;

    invoke-interface {v0}, Lclp;->a()Lclq;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcmp;->b:Lclp;

    invoke-interface {v1}, Lclp;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lclq;->b:Lclq;

    if-eq v0, v1, :cond_0

    sget-object v1, Lclq;->c:Lclq;

    if-eq v0, v1, :cond_0

    sget-object v1, Lclq;->d:Lclq;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcmp;->d:Lcln;

    .line 159
    invoke-interface {v0}, Lcln;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lclp;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclp;

    iput-object v0, p0, Lcmp;->b:Lclp;

    .line 57
    const-class v0, Lcln;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcln;

    iput-object v0, p0, Lcmp;->d:Lcln;

    .line 58
    const-class v0, Lcmu;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmu;

    iput-object v0, p0, Lcmp;->c:Lcmu;

    .line 59
    return-void
.end method

.method a(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 101
    invoke-direct {p0}, Lcmp;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {p1}, Laal;->c(I)V

    .line 103
    sget-object v1, Lcmq;->a:[I

    iget-object v2, p0, Lcmp;->b:Lclp;

    invoke-interface {v2}, Lclp;->a()Lclq;

    move-result-object v2

    invoke-virtual {v2}, Lclq;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 118
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 105
    :pswitch_0
    new-instance v1, Lclr;

    invoke-direct {v1}, Lclr;-><init>()V

    .line 106
    iget-object v2, p0, Lcmp;->a:Lrf;

    invoke-virtual {v2}, Lrf;->C_()Lbg;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lclr;->a(Lbg;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_1
    new-instance v1, Lcmi;

    invoke-direct {v1}, Lcmi;-><init>()V

    .line 111
    iget-object v2, p0, Lcmp;->a:Lrf;

    invoke-virtual {v2}, Lrf;->C_()Lbg;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcmi;->a(Lbg;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcmp;->a:Lrf;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 78
    sget v1, Laal;->md:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    invoke-virtual {p0, p1}, Lcmp;->b(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Laal;->mb:I

    if-ne v0, v1, :cond_0

    .line 93
    const/16 v0, 0x8c3

    invoke-virtual {p0, v0}, Lcmp;->a(I)Z

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcmp;->a:Lrf;

    invoke-virtual {v0}, Lrf;->y_()V

    .line 124
    iget-object v0, p0, Lcmp;->f:Lchc;

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-direct {p0}, Lcmp;->c()Z

    move-result v2

    .line 130
    if-eqz v2, :cond_1

    .line 131
    iget-object v0, p0, Lcmp;->a:Lrf;

    invoke-virtual {v0}, Lrf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 132
    sget-object v3, Lcmq;->a:[I

    iget-object v4, p0, Lcmp;->b:Lclp;

    invoke-interface {v4}, Lclp;->a()Lclq;

    move-result-object v4

    invoke-virtual {v4}, Lclq;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_1
    move-object v0, v1

    .line 146
    :goto_1
    iget-object v3, p0, Lcmp;->f:Lchc;

    invoke-virtual {v3, v0}, Lchc;->a(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v0, p0, Lcmp;->f:Lchc;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcmp;->e:Lcmr;

    :cond_2
    invoke-virtual {v0, v1}, Lchc;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcmp;->f:Lchc;

    invoke-virtual {v0, v2}, Lchc;->setClickable(Z)V

    goto :goto_0

    .line 134
    :pswitch_0
    sget v3, Laal;->lQ:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 137
    :pswitch_1
    sget v3, Laal;->lT:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 140
    :pswitch_2
    sget v3, Laal;->lW:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 84
    sget v0, Laal;->mb:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 85
    invoke-direct {p0}, Lcmp;->c()Z

    move-result v1

    .line 86
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 87
    return v1
.end method

.method public s_()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcmp;->b:Lclp;

    iget-object v1, p0, Lcmp;->e:Lcmr;

    invoke-interface {v0, v1}, Lclp;->a(Lclo;)V

    .line 64
    iget-object v0, p0, Lcmp;->d:Lcln;

    iget-object v1, p0, Lcmp;->e:Lcmr;

    invoke-interface {v0, v1}, Lcln;->a(Lclm;)V

    .line 65
    iget-object v0, p0, Lcmp;->a:Lrf;

    invoke-virtual {v0}, Lrf;->g()Lqe;

    move-result-object v0

    invoke-virtual {v0}, Lqe;->c()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lchc;

    iput-object v0, p0, Lcmp;->f:Lchc;

    .line 66
    invoke-virtual {p0}, Lcmp;->b()V

    .line 67
    return-void
.end method

.method public t_()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcmp;->b:Lclp;

    iget-object v1, p0, Lcmp;->e:Lcmr;

    invoke-interface {v0, v1}, Lclp;->b(Lclo;)V

    .line 72
    iget-object v0, p0, Lcmp;->d:Lcln;

    iget-object v1, p0, Lcmp;->e:Lcmr;

    invoke-interface {v0, v1}, Lcln;->b(Lclm;)V

    .line 73
    return-void
.end method
