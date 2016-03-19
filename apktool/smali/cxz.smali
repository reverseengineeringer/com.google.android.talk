.class final Lcxz;
.super Lcxt;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final y:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ILcwx;Lcxt;ZZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcxt;-><init>(Landroid/content/Context;ILcwx;)V

    .line 64
    iput-boolean p5, p0, Lcxz;->a:Z

    .line 65
    iput-boolean p6, p0, Lcxz;->y:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcxz;->h:Ljava/lang/String;

    .line 67
    iput v2, p0, Lcxz;->i:I

    .line 74
    iget-object v0, p4, Lcxt;->e:Ljava/lang/String;

    iput-object v0, p0, Lcxz;->c:Ljava/lang/String;

    .line 75
    iget-object v0, p4, Lcxt;->f:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcxz;->d:Ljava/lang/CharSequence;

    .line 78
    invoke-static {p1, p2}, Lbff;->e(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->M:I

    new-array v1, v6, [Ljava/lang/Object;

    iget v3, p3, Lcwx;->a:I

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxz;->e:Ljava/lang/String;

    .line 88
    :goto_0
    invoke-static {p2}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 87
    invoke-static {v0}, Laal;->e(Lbfd;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcxz;->g:Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Lcxz;->g:Landroid/content/Intent;

    const-string v1, "is_chat_notification"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v1, v2

    .line 93
    :goto_1
    iget-object v0, p3, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 94
    iget-object v0, p3, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwz;

    .line 95
    iget-object v3, v0, Lcwz;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcxq;

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, v0, Lcwz;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcxz;->c(Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcww;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v4, Lcwx;

    iget v0, v0, Lcwz;->i:I

    invoke-direct {v4, v0, v3}, Lcwx;-><init>(ILjava/util/List;)V

    .line 105
    iget-object v0, p0, Lcxz;->k:Ljava/util/List;

    new-instance v3, Lcws;

    invoke-direct {v3, p1, p2, v4, v1}, Lcws;-><init>(Landroid/content/Context;ILcwx;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->hz:I

    iget v3, p3, Lcwx;->a:I

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p3, Lcwx;->a:I

    .line 84
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 82
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxz;->e:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_2
    return-void
.end method

.method static b(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-static {p0, p1}, Lcxz;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {p0}, Ldu;->a(Landroid/content/Context;)Ldu;

    move-result-object v1

    .line 48
    invoke-static {v0, v2}, Lcyb;->a(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v1, v0, v2}, Ldu;->a(Ljava/lang/String;I)V

    .line 50
    sget-boolean v1, Lcxz;->b:Z

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x38

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "MultiConversationNotifier.cancel [tag=]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [id=]0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 13

    .prologue
    .line 116
    new-instance v6, Ldb;

    iget-object v0, p0, Lcxz;->u:Lcy;

    invoke-direct {v6, v0}, Ldb;-><init>(Lcy;)V

    .line 117
    iput-object v6, p0, Lcxz;->t:Ldk;

    .line 118
    iget-object v0, p0, Lcxz;->u:Lcy;

    iget-object v1, p0, Lcxz;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcy;->a(Ljava/lang/CharSequence;)Lcy;

    .line 121
    iget-object v0, p0, Lcxz;->p:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->bV:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    const-wide/16 v2, 0x0

    .line 124
    const/4 v0, 0x0

    move-wide v4, v2

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcxz;->l:Lcwx;

    iget-object v0, v0, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 125
    iget-object v0, p0, Lcxz;->l:Lcwx;

    iget-object v0, v0, Lcwx;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwz;

    .line 126
    iget-wide v10, v0, Lcwz;->g:J

    cmp-long v1, v10, v4

    if-lez v1, :cond_0

    .line 127
    iget-wide v4, v0, Lcwz;->g:J

    .line 131
    :cond_0
    iget-object v1, v0, Lcwz;->h:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcya;

    .line 132
    instance-of v3, v1, Lcxo;

    if-eqz v3, :cond_4

    .line 133
    check-cast v1, Lcxo;

    .line 137
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcxo;->q:Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x1

    move v3, v1

    :goto_1
    iget-object v1, v0, Lcwz;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 139
    const-string v1, ", "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, v0, Lcwz;->h:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcya;

    .line 141
    iget-object v1, v1, Lcya;->q:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 144
    :cond_1
    iget-object v1, p0, Lcxz;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laal;->hx:I

    iget v10, v0, Lcwz;->i:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v0, v0, Lcwz;->i:I

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v12

    .line 144
    invoke-virtual {v1, v3, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    const/4 v3, 0x0

    iput-object v3, p0, Lcxz;->h:Ljava/lang/String;

    .line 150
    const/4 v3, 0x0

    iput v3, p0, Lcxz;->i:I

    .line 166
    :goto_2
    iget-object v3, p0, Lcxz;->h:Ljava/lang/String;

    iget v9, p0, Lcxz;->i:I

    invoke-virtual {p0, v1, v0, v3, v9}, Lcxz;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Ldb;->b(Ljava/lang/CharSequence;)Ldb;

    .line 167
    if-eqz v1, :cond_3

    .line 168
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 169
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_2
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 151
    :cond_4
    iget-boolean v3, v0, Lcwz;->c:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcxz;->p:Landroid/content/Context;

    iget v9, p0, Lcxz;->q:I

    .line 152
    invoke-static {v3, v9}, Lbff;->e(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 155
    iget-object v1, v0, Lcwz;->f:Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    .line 157
    const/4 v3, 0x0

    iput-object v3, p0, Lcxz;->h:Ljava/lang/String;

    .line 158
    const/4 v3, 0x0

    iput v3, p0, Lcxz;->i:I

    goto :goto_2

    .line 160
    :cond_5
    check-cast v1, Lcxq;

    .line 161
    iget-object v0, v1, Lcxq;->b:Ljava/lang/CharSequence;

    .line 162
    iget-object v3, v1, Lcxq;->c:Ljava/lang/String;

    iput-object v3, p0, Lcxz;->h:Ljava/lang/String;

    .line 163
    iget v3, v1, Lcxq;->d:I

    iput v3, p0, Lcxz;->i:I

    .line 164
    iget-object v1, v1, Lcxq;->r:Ljava/lang/String;

    goto :goto_2

    .line 175
    :cond_6
    iput-object v8, p0, Lcxz;->f:Ljava/lang/CharSequence;

    .line 176
    iget-object v0, p0, Lcxz;->u:Lcy;

    invoke-virtual {v0, v8}, Lcy;->b(Ljava/lang/CharSequence;)Lcy;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcxz;->m()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcy;->c(Ljava/lang/CharSequence;)Lcy;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    .line 178
    invoke-virtual {v0, v2, v3}, Lcy;->a(J)Lcy;

    .line 180
    invoke-super {p0, p1}, Lcxt;->a(Z)V

    .line 181
    return-void
.end method

.method protected h()V
    .locals 6

    .prologue
    const/high16 v5, 0x8000000

    .line 185
    iget-object v0, p0, Lcxz;->u:Lcy;

    iget v1, p0, Lcxz;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcy;->b(Ljava/lang/String;)Lcy;

    move-result-object v0

    invoke-virtual {v0}, Lcy;->e()Lcy;

    .line 1192
    iget-object v0, p0, Lcxz;->p:Landroid/content/Context;

    iget v1, p0, Lcxz;->q:I

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/notifications/DndDialogActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 1193
    iget-object v1, p0, Lcxz;->p:Landroid/content/Context;

    .line 1238
    invoke-super {p0}, Lcxt;->w()I

    move-result v2

    .line 1193
    invoke-static {v1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1197
    iget-object v1, p0, Lcxz;->u:Lcy;

    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->br:I

    iget-object v3, p0, Lcxz;->p:Landroid/content/Context;

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->bB:I

    .line 1198
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1197
    invoke-virtual {v1, v2, v3, v0}, Lcy;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcy;

    .line 1201
    iget-object v0, p0, Lcxz;->p:Landroid/content/Context;

    invoke-static {v0}, Lcww;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcxz;->p:Landroid/content/Context;

    iget v1, p0, Lcxz;->q:I

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/notifications/DndDialogActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 1203
    const-string v1, "opened_from_impression"

    const/16 v2, 0x8d2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1206
    iget-object v1, p0, Lcxz;->p:Landroid/content/Context;

    .line 1242
    invoke-super {p0}, Lcxt;->w()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1206
    invoke-static {v1, v2, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1210
    new-instance v1, Lcv;

    sget v2, Lcom/google/android/apps/hangouts/R$drawable;->ba:I

    iget-object v3, p0, Lcxz;->p:Landroid/content/Context;

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->bB:I

    .line 1212
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcv;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1213
    iget-object v0, p0, Lcxz;->p:Landroid/content/Context;

    const-class v2, Lekq;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekq;

    .line 1214
    invoke-virtual {v0}, Lekq;->a()Ljava/util/List;

    move-result-object v0

    .line 1215
    new-instance v2, Lef;

    const-string v3, "dnd_duration_choice"

    invoke-direct {v2, v3}, Lef;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcxz;->p:Landroid/content/Context;

    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->bA:I

    .line 1216
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lef;->a(Ljava/lang/CharSequence;)Lef;

    move-result-object v2

    .line 1217
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lef;->a([Ljava/lang/CharSequence;)Lef;

    move-result-object v0

    .line 1218
    invoke-virtual {v0}, Lef;->a()Lef;

    move-result-object v0

    invoke-virtual {v0}, Lef;->b()Lee;

    move-result-object v0

    .line 1219
    invoke-virtual {v1, v0}, Lcv;->a(Lee;)Lcv;

    .line 1220
    iget-object v0, p0, Lcxz;->v:Ldl;

    invoke-virtual {v1}, Lcv;->b()Lcu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldl;->a(Lcu;)Ldl;

    .line 187
    :cond_0
    invoke-super {p0}, Lcxt;->h()V

    .line 188
    return-void
.end method

.method protected i()V
    .locals 8

    .prologue
    .line 247
    invoke-super {p0}, Lcxt;->i()V

    .line 248
    iget v0, p0, Lcxz;->q:I

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    const/16 v1, 0x788

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 251
    invoke-virtual {p0}, Lcxz;->p()V

    .line 254
    iget v0, p0, Lcxz;->q:I

    iget-object v1, p0, Lcxz;->l:Lcwx;

    iget-object v1, v1, Lcwx;->b:Ljava/util/List;

    const/16 v2, 0x1c9

    const/16 v3, 0x195

    const/16 v4, 0x1cf

    iget-boolean v5, p0, Lcxz;->a:Z

    iget-boolean v6, p0, Lcxz;->y:Z

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcxq;->a(ILjava/util/List;IIIZZLbgc;)V

    .line 263
    return-void
.end method

.method protected k()V
    .locals 8

    .prologue
    .line 268
    iget v0, p0, Lcxz;->q:I

    iget-object v1, p0, Lcxz;->l:Lcwx;

    iget-object v1, v1, Lcwx;->b:Ljava/util/List;

    const/16 v2, 0x1ca

    const/16 v3, 0x196

    const/16 v4, 0x1d0

    iget-boolean v5, p0, Lcxz;->a:Z

    iget-boolean v6, p0, Lcxz;->y:Z

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcxq;->a(ILjava/util/List;IIIZZLbgc;)V

    .line 277
    return-void
.end method

.method protected q()I
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcxt;->q()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
