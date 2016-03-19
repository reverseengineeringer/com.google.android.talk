.class public final Lcjm;
.super Lciu;
.source "SourceFile"

# interfaces
.implements Lhjl;


# instance fields
.field private final p:Lciy;

.field private q:Z


# direct methods
.method public constructor <init>(Lchu;Lhkx;Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lciu;-><init>(Lchu;Lhkx;Lcom/google/android/apps/hangouts/hangout/ParticipantTrayView;Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;)V

    .line 19
    new-instance v1, Lciy;

    invoke-direct {v1, p0}, Lciy;-><init>(Lciu;)V

    iput-object v1, p0, Lcjm;->p:Lciy;

    .line 30
    invoke-virtual {p0}, Lcjm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->eC:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcjm;->a(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcjm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 33
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcjm;->q:Z

    .line 34
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcgn;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lciu;->a(Lcgn;)V

    .line 39
    iget-object v0, p0, Lcjm;->b:Lcfc;

    iget-object v1, p0, Lcjm;->p:Lciy;

    invoke-virtual {v0, v1}, Lcfc;->a(Lhku;)V

    .line 42
    iget-object v0, p0, Lcjm;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->k()Lhjk;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p0}, Lhjk;->a(Lhjl;)V

    .line 46
    :cond_0
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lhjk;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    const/4 v0, 0x3

    .line 46
    :goto_0
    invoke-virtual {p0, v0}, Lcjm;->d(I)V

    .line 50
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcjm;->b:Lcfc;

    iget-object v1, p0, Lcjm;->p:Lciy;

    invoke-virtual {v0, v1}, Lcfc;->b(Lhku;)V

    .line 64
    invoke-super {p0}, Lciu;->b()V

    .line 65
    return-void
.end method

.method protected c(I)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcjm;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->k()Lhjk;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Lhjk;->i()I

    move-result v1

    int-to-float v1, v1

    .line 85
    invoke-virtual {v0}, Lhjk;->j()I

    move-result v0

    int-to-float v0, v0

    .line 86
    int-to-float v3, p1

    div-float v0, v1, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 90
    :goto_0
    if-nez v0, :cond_0

    .line 92
    new-instance v1, Lhlp;

    const/16 v0, 0x10

    const/16 v3, 0xa

    invoke-direct {v1, v0, v3}, Lhlp;-><init>(II)V

    .line 94
    iget-boolean v0, p0, Lcjm;->q:Z

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Lhlp;

    iget v3, v1, Lhlp;->b:I

    iget v1, v1, Lhlp;->a:I

    invoke-direct {v0, v3, v1}, Lhlp;-><init>(II)V

    .line 97
    :goto_1
    iget v1, v0, Lhlp;->a:I

    int-to-float v1, v1

    iget v0, v0, Lhlp;->b:I

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 98
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 100
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 102
    return v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected d(I)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lciu;->d(I)V

    .line 110
    iget-object v0, p0, Lcjm;->m:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lcjm;->c:Lcgn;

    invoke-virtual {v0}, Lcgn;->a()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->q()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Lcjm;->c(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "localParticipant"

    return-object v0
.end method

.method public o()V
    .locals 3

    .prologue
    .line 125
    const-string v0, "Babel_calls"

    const-string v1, "Camera encountered an error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 70
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcjm;->q:Z

    .line 73
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    .line 75
    iput-boolean v0, p0, Lcjm;->q:Z

    .line 76
    invoke-super {p0, p1}, Lciu;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 77
    return-void

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0
.end method

.method public p()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcjm;->f()V

    .line 131
    return-void
.end method

.method public r_()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcjm;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->k()Lhjk;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhjk;->a(Lhjl;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcjm;->b:Lcfc;

    iget-object v1, p0, Lcjm;->p:Lciy;

    invoke-virtual {v0, v1}, Lcfc;->b(Lhku;)V

    .line 59
    return-void
.end method
