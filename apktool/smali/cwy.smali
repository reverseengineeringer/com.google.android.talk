.class final Lcwy;
.super Lcxt;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;ILcwx;)V
    .locals 10

    .prologue
    const/4 v3, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcxt;-><init>(Landroid/content/Context;ILcwx;)V

    .line 28
    iget-object v0, p3, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcwz;

    .line 29
    iget-object v0, v6, Lcwz;->h:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcxo;

    .line 31
    iget v0, v6, Lcwz;->i:I

    if-ne v0, v8, :cond_1

    .line 35
    iget-object v0, v6, Lcwz;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcwy;->b(Ljava/lang/String;)V

    .line 36
    iget-object v0, v6, Lcwz;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcwy;->c(Ljava/lang/String;)V

    .line 37
    iget-object v1, v6, Lcwz;->a:Ljava/lang/String;

    iget-object v2, v7, Lcxo;->a:Lczb;

    iget v3, v6, Lcwz;->e:I

    iget-wide v4, v6, Lcwz;->g:J

    move v0, p2

    invoke-static/range {v0 .. v5}, Laal;->a(ILjava/lang/String;Lczb;IJ)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcwy;->g:Landroid/content/Intent;

    .line 40
    iget-object v0, v7, Lcxo;->r:Ljava/lang/String;

    iput-object v0, p0, Lcwy;->e:Ljava/lang/String;

    .line 41
    iget-boolean v0, v6, Lcwz;->c:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->ht:I

    iget v2, v6, Lcwz;->d:I

    new-array v3, v8, [Ljava/lang/Object;

    iget v4, v6, Lcwz;->d:I

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcwy;->f:Ljava/lang/CharSequence;

    .line 77
    :goto_0
    return-void

    .line 46
    :cond_0
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->ii:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcwy;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p1, p2}, Laal;->d(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcwy;->g:Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcwy;->g:Landroid/content/Intent;

    const-string v1, "is_chat_notification"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->ih:I

    new-array v1, v8, [Ljava/lang/Object;

    iget v2, v6, Lcwz;->i:I

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcwy;->e:Ljava/lang/String;

    .line 62
    iget-object v0, v6, Lcwz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 63
    iget-object v0, v6, Lcwz;->h:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcxo;

    .line 64
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->ij:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v7, Lcxo;->r:Ljava/lang/String;

    aput-object v3, v2, v9

    iget-object v0, v0, Lcxo;->r:Ljava/lang/String;

    aput-object v0, v2, v8

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcwy;->f:Ljava/lang/CharSequence;

    goto :goto_0

    .line 68
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcxo;->q:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v8

    .line 69
    :goto_1
    iget-object v0, v6, Lcwz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 70
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v0, v6, Lcwz;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcya;

    .line 72
    iget-object v0, v0, Lcya;->q:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcwy;->f:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method protected a(Z)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lcwy;->u:Lcy;

    iget-object v1, p0, Lcwy;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcy;->a(Ljava/lang/CharSequence;)Lcy;

    move-result-object v0

    iget-object v1, p0, Lcwy;->f:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {v0, v1}, Lcy;->b(Ljava/lang/CharSequence;)Lcy;

    .line 83
    iget-object v0, p0, Lcwy;->l:Lcwx;

    iget-object v0, v0, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwz;

    .line 84
    iget v1, v0, Lcwz;->i:I

    if-ne v1, v10, :cond_0

    .line 85
    new-instance v1, Lcx;

    iget-object v2, p0, Lcwy;->u:Lcy;

    invoke-direct {v1, v2}, Lcx;-><init>(Lcy;)V

    iget-object v2, p0, Lcwy;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcx;->b(Ljava/lang/CharSequence;)Lcx;

    move-result-object v1

    iput-object v1, p0, Lcwy;->t:Ldk;

    .line 86
    iget-object v1, p0, Lcwy;->u:Lcy;

    iget-object v2, p0, Lcwy;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcy;->c(Ljava/lang/CharSequence;)Lcy;

    .line 106
    :goto_0
    iget-object v1, p0, Lcwy;->u:Lcy;

    iget-wide v2, v0, Lcwz;->g:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcy;->a(J)Lcy;

    .line 108
    invoke-super {p0, p1}, Lcxt;->a(Z)V

    .line 109
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcwy;->u:Lcy;

    invoke-virtual {p0}, Lcwy;->m()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcy;->c(Ljava/lang/CharSequence;)Lcy;

    .line 89
    new-instance v5, Ldb;

    iget-object v1, p0, Lcwy;->u:Lcy;

    invoke-direct {v5, v1}, Ldb;-><init>(Lcy;)V

    move v2, v3

    .line 90
    :goto_1
    iget-object v1, v0, Lcwz;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 91
    iget-object v1, v0, Lcwz;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcxo;

    .line 93
    iget-boolean v4, v1, Lcxo;->c:Z

    if-eqz v4, :cond_1

    .line 94
    iget v4, p0, Lcwy;->q:I

    invoke-virtual {v1, v4}, Lcxo;->a(I)I

    move-result v4

    .line 95
    iget-object v6, p0, Lcwy;->p:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laal;->ht:I

    new-array v8, v10, [Ljava/lang/Object;

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 95
    invoke-virtual {v6, v7, v4, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 101
    :goto_2
    iget-object v1, v1, Lcxo;->r:Ljava/lang/String;

    const/4 v6, 0x0

    .line 102
    invoke-virtual {p0, v1, v4, v6, v3}, Lcwy;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 101
    invoke-virtual {v5, v1}, Ldb;->b(Ljava/lang/CharSequence;)Ldb;

    .line 90
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 99
    :cond_1
    iget-object v4, p0, Lcwy;->p:Landroid/content/Context;

    sget v6, Lcom/google/android/apps/hangouts/hangout/StressMode;->gH:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 104
    :cond_2
    iput-object v5, p0, Lcwy;->t:Ldk;

    goto :goto_0
.end method

.method protected i()V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Lcxt;->i()V

    .line 127
    iget-object v0, p0, Lcwy;->l:Lcwx;

    iget-object v0, v0, Lcwx;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwz;

    .line 128
    iget v1, p0, Lcwy;->q:I

    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    iget-object v0, v0, Lcwz;->h:Ljava/util/List;

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 130
    const/16 v0, 0x8ba

    .line 128
    :goto_0
    invoke-static {v1, v0}, Laal;->a(Lbfd;I)V

    .line 133
    return-void

    .line 131
    :cond_0
    const/16 v0, 0x8bb

    goto :goto_0
.end method

.method protected j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcwy;->p:Landroid/content/Context;

    iget v1, p0, Lcwy;->q:I

    iget-object v2, p0, Lcwy;->r:Lexn;

    invoke-virtual {v2}, Lexn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcwy;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected k()V
    .locals 3

    .prologue
    .line 137
    invoke-super {p0}, Lcxt;->k()V

    .line 139
    iget-object v0, p0, Lcwy;->l:Lcwx;

    iget-object v0, v0, Lcwx;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwz;

    .line 140
    iget v1, p0, Lcwy;->q:I

    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    iget-object v0, v0, Lcwz;->h:Ljava/util/List;

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 142
    const/16 v0, 0x8bc

    .line 140
    :goto_0
    invoke-static {v1, v0}, Laal;->a(Lbfd;I)V

    .line 144
    return-void

    .line 143
    :cond_0
    const/16 v0, 0x8bd

    goto :goto_0
.end method
