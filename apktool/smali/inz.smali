.class public final Linz;
.super Liog;
.source "SourceFile"


# instance fields
.field private c:Liol;

.field private d:Liol;

.field private e:Liol;

.field private f:Liol;

.field private g:Liol;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Liog;-><init>()V

    return-void
.end method

.method static a(Lioz;Z)V
    .locals 1

    .prologue
    .line 73
    instance-of v0, p0, Linx;

    if-eqz v0, :cond_0

    .line 74
    check-cast p0, Linx;

    invoke-interface {p0, p1}, Linx;->a(Z)V

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Linz;->e:Liol;

    invoke-virtual {p0, v0}, Linz;->b(Liol;)V

    .line 104
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Linz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 105
    iget-object v0, p0, Linz;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioz;

    .line 106
    instance-of v2, v0, Linv;

    if-eqz v2, :cond_0

    .line 107
    check-cast v0, Linv;

    invoke-interface {v0}, Linv;->a()V

    .line 104
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lioa;

    invoke-direct {v0, p0, p1}, Lioa;-><init>(Linz;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Linz;->a(Liol;)Liol;

    move-result-object v0

    iput-object v0, p0, Linz;->c:Liol;

    .line 38
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Liob;

    invoke-direct {v0, p0, p1}, Liob;-><init>(Linz;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Linz;->a(Liol;)Liol;

    move-result-object v0

    iput-object v0, p0, Linz;->d:Liol;

    .line 50
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lioe;

    invoke-direct {v0, p0, p2, p1}, Lioe;-><init>(Linz;Landroid/os/Bundle;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Linz;->a(Liol;)Liol;

    move-result-object v0

    iput-object v0, p0, Linz;->e:Liol;

    .line 100
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Linz;->g:Liol;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Linz;->g:Liol;

    invoke-virtual {p0, v0}, Linz;->b(Liol;)V

    .line 57
    :cond_0
    if-nez p1, :cond_2

    .line 59
    new-instance v0, Lioc;

    invoke-direct {v0, p0, p1}, Lioc;-><init>(Linz;Z)V

    invoke-virtual {p0, v0}, Linz;->a(Liol;)Liol;

    move-result-object v0

    iput-object v0, p0, Linz;->g:Liol;

    .line 70
    :cond_1
    return-void

    .line 66
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Linz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 67
    iget-object v0, p0, Linz;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioz;

    invoke-static {v0, p1}, Linz;->a(Lioz;Z)V

    .line 66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Liod;

    invoke-direct {v0, p0, p1}, Liod;-><init>(Linz;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Linz;->a(Liol;)Liol;

    move-result-object v0

    iput-object v0, p0, Linz;->f:Liol;

    .line 88
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Liog;->c()V

    .line 115
    iget-object v0, p0, Linz;->d:Liol;

    invoke-virtual {p0, v0}, Linz;->b(Liol;)V

    .line 116
    iget-object v0, p0, Linz;->f:Liol;

    invoke-virtual {p0, v0}, Linz;->b(Liol;)V

    .line 117
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Linz;->c:Liol;

    invoke-virtual {p0, v0}, Linz;->b(Liol;)V

    .line 122
    return-void
.end method
