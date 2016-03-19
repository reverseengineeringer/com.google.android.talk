.class final Lcxy;
.super Lcxj;
.source "SourceFile"


# instance fields
.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;ILexn;ILjava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lexn;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p4

    move-object v5, p3

    move-wide v6, p6

    .line 70
    invoke-direct/range {v1 .. v7}, Lcxj;-><init>(Landroid/content/Context;IILexn;J)V

    .line 73
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->bV:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1134
    :goto_0
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 76
    iput-object p5, p0, Lcxy;->h:Ljava/util/List;

    .line 78
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 80
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcxy;->b:Ljava/lang/String;

    .line 81
    invoke-virtual {p3}, Lexn;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxy;->f:Ljava/lang/String;

    .line 82
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->ej:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxy;->c:Ljava/lang/CharSequence;

    .line 83
    iget-object v0, p0, Lcxy;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcxy;->b(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcxy;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcxy;->c(Ljava/lang/String;)V

    .line 90
    :goto_1
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_1
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->el:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 86
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxy;->b:Ljava/lang/String;

    .line 2094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2095
    const/4 v0, 0x0

    .line 2096
    iget-object v1, p0, Lcxy;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2097
    add-int/lit8 v1, v1, 0x1

    .line 2098
    const/16 v5, 0x8

    if-ne v1, v5, :cond_3

    iget-object v5, p0, Lcxy;->h:Ljava/util/List;

    .line 2099
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_3

    .line 2100
    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_2
    iput-object v3, p0, Lcxy;->c:Ljava/lang/CharSequence;

    goto :goto_1

    .line 2103
    :cond_3
    const/4 v5, 0x1

    if-le v1, v5, :cond_4

    .line 2104
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2106
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method static b(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 56
    invoke-static {p0, p1}, Lcxy;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {p0}, Ldu;->a(Landroid/content/Context;)Ldu;

    move-result-object v1

    .line 59
    invoke-static {v0, v2}, Lcyb;->a(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v1, v0, v2}, Ldu;->a(Ljava/lang/String;I)V

    .line 61
    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 114
    iget-object v0, p0, Lcxy;->u:Lcy;

    iget-object v1, p0, Lcxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcy;->a(Ljava/lang/CharSequence;)Lcy;

    move-result-object v0

    iget-object v1, p0, Lcxy;->c:Ljava/lang/CharSequence;

    .line 115
    invoke-virtual {v0, v1}, Lcy;->c(Ljava/lang/CharSequence;)Lcy;

    move-result-object v0

    iget-object v1, p0, Lcxy;->c:Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {v0, v1}, Lcy;->b(Ljava/lang/CharSequence;)Lcy;

    move-result-object v0

    iget-wide v2, p0, Lcxy;->d:J

    .line 117
    invoke-virtual {v0, v2, v3}, Lcy;->a(J)Lcy;

    .line 119
    iget-object v0, p0, Lcxy;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 120
    iget-object v0, p0, Lcxy;->w:Lcy;

    iget-object v1, p0, Lcxy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcy;->a(Ljava/lang/CharSequence;)Lcy;

    .line 125
    :goto_0
    new-instance v2, Ldb;

    iget-object v0, p0, Lcxy;->u:Lcy;

    invoke-direct {v2, v0}, Ldb;-><init>(Lcy;)V

    .line 2134
    iget-object v0, p0, Lcxy;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2135
    if-ne v3, v4, :cond_2

    .line 2136
    iget-object v0, p0, Lcxy;->c:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ldb;->b(Ljava/lang/CharSequence;)Ldb;

    .line 127
    :cond_0
    :goto_1
    iput-object v2, p0, Lcxy;->t:Ldk;

    .line 129
    invoke-super {p0, p1}, Lcxj;->a(Z)V

    .line 130
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcxy;->w:Lcy;

    iget-object v1, p0, Lcxy;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcy;->a(Ljava/lang/CharSequence;)Lcy;

    goto :goto_0

    .line 2138
    :cond_2
    const/4 v0, 0x0

    .line 2139
    iget-object v1, p0, Lcxy;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2140
    add-int/lit8 v1, v1, 0x1

    .line 2141
    if-ne v1, v5, :cond_3

    if-le v3, v5, :cond_3

    .line 2143
    const-string v0, "..."

    invoke-virtual {v2, v0}, Ldb;->b(Ljava/lang/CharSequence;)Ldb;

    goto :goto_1

    .line 2146
    :cond_3
    invoke-virtual {v2, v0}, Ldb;->b(Ljava/lang/CharSequence;)Ldb;

    goto :goto_2
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 237
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->ck:I

    return v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x2

    return v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method protected g()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcxy;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 219
    iget v0, p0, Lcxy;->q:I

    iget-object v1, p0, Lcxy;->f:Ljava/lang/String;

    iget v2, p0, Lcxy;->e:I

    invoke-static {v0, v1, v2}, Laal;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 221
    const-string v1, "opened_from_impression"

    const/16 v2, 0x666

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget v0, p0, Lcxy;->q:I

    .line 225
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    invoke-static {v0}, Laal;->e(Lbfd;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method protected h()V
    .locals 6

    .prologue
    .line 153
    iget-object v0, p0, Lcxy;->p:Landroid/content/Context;

    invoke-static {v0}, Lcww;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Lcxy;->r:Lexn;

    invoke-virtual {v0}, Lexn;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2166
    iget-object v0, p0, Lcxy;->p:Landroid/content/Context;

    invoke-static {v0}, Lcxy;->a(Landroid/content/Context;)Lee;

    move-result-object v0

    .line 2182
    iget-object v1, p0, Lcxy;->p:Landroid/content/Context;

    iget v2, p0, Lcxy;->q:I

    iget-object v3, p0, Lcxy;->r:Lexn;

    .line 2183
    invoke-virtual {v3}, Lexn;->a()Ljava/lang/String;

    move-result-object v3

    .line 2182
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2185
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2187
    const-string v2, "opened_from_impression"

    const/16 v3, 0x8d3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2190
    invoke-virtual {p0}, Lcxy;->x()I

    move-result v2

    .line 2192
    iget-object v3, p0, Lcxy;->p:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, v2, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2168
    new-instance v2, Lcv;

    sget v3, Lcom/google/android/apps/hangouts/R$drawable;->bb:I

    iget-object v4, p0, Lcxy;->p:Landroid/content/Context;

    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->gK:I

    .line 2170
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcv;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2172
    invoke-virtual {v2, v0}, Lcv;->a(Lee;)Lcv;

    .line 2173
    iget-object v0, p0, Lcxy;->v:Ldl;

    invoke-virtual {v2}, Lcv;->b()Lcu;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldl;->a(Lcu;)Ldl;

    .line 156
    :cond_0
    invoke-super {p0}, Lcxj;->h()V

    .line 157
    return-void
.end method
