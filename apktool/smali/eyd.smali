.class public Leyd;
.super Leyg;
.source "SourceFile"


# instance fields
.field private a:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Lbeo;

.field private n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0, p1, p2}, Leyg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput v0, p0, Leyd;->a:I

    .line 23
    iput v0, p0, Leyd;->e:I

    .line 43
    return-void
.end method

.method public static a(IIZZZ)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    if-eqz p4, :cond_0

    .line 194
    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, "-ip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :goto_0
    return-object v0

    .line 200
    :cond_0
    if-ne p1, p0, :cond_3

    .line 201
    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    if-eqz p2, :cond_1

    .line 203
    const-string v1, "-c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 212
    const-string v1, "-k"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_2
    const-string v1, "-no"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 206
    :cond_3
    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    if-eqz p2, :cond_1

    .line 208
    const-string v1, "-n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public a(I)Leyd;
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Leyd;->g:I

    .line 54
    iput p1, p0, Leyd;->f:I

    .line 55
    return-object p0
.end method

.method public a(II)Leyd;
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Leyd;->g:I

    .line 48
    iput p2, p0, Leyd;->f:I

    .line 49
    return-object p0
.end method

.method public a(Lbeo;)Leyd;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Leyd;->m:Lbeo;

    .line 104
    return-object p0
.end method

.method public a(Z)Leyd;
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Leyd;->h:Z

    .line 69
    return-object p0
.end method

.method public a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 222
    invoke-virtual {p0}, Leyd;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v2

    move-object v1, p0

    .line 230
    :goto_0
    iput-object v0, v1, Leyd;->b:Ljava/lang/String;

    .line 234
    iget v0, p0, Leyd;->g:I

    iget v1, p0, Leyd;->f:I

    iget-boolean v2, p0, Leyd;->h:Z

    iget-boolean v3, p0, Leyd;->k:Z

    iget-boolean v4, p0, Leyd;->d:Z

    .line 235
    invoke-static {v0, v1, v2, v3, v4}, Leyd;->a(IIZZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    iget-object v1, p0, Leyd;->m:Lbeo;

    sget-object v2, Lbeo;->c:Lbeo;

    if-ne v1, v2, :cond_c

    .line 239
    const-string v1, "-gvsms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_0
    :goto_1
    iget-boolean v1, p0, Leyd;->l:Z

    if-eqz v1, :cond_1

    .line 244
    const-string v1, "-force"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_1
    iget-boolean v1, p0, Leyd;->n:Z

    if-eqz v1, :cond_2

    .line 247
    const-string v1, "-rounded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_2
    invoke-virtual {p0}, Leyd;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Leyd;->c:Ljava/lang/String;

    .line 250
    return-void

    .line 224
    :cond_3
    invoke-virtual {p0}, Leyd;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    invoke-virtual {p0}, Leyd;->n()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    goto :goto_0

    .line 227
    :cond_4
    iget v0, p0, Leyd;->e:I

    if-ne v0, v3, :cond_5

    iget v0, p0, Leyd;->g:I

    .line 228
    :goto_3
    iget v1, p0, Leyd;->a:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Leyd;->f:I

    .line 231
    :goto_4
    invoke-virtual {p0}, Leyd;->n()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Leyd;->h:Z

    iget-boolean v5, p0, Leyd;->k:Z

    iget-boolean v6, p0, Leyd;->d:Z

    .line 232
    invoke-static {v0, v1, v4, v5, v6}, Leyd;->a(IIZZZ)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1155
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v2

    move-object v1, p0

    .line 1156
    goto :goto_0

    .line 227
    :cond_5
    iget v0, p0, Leyd;->e:I

    goto :goto_3

    .line 228
    :cond_6
    iget v1, p0, Leyd;->a:I

    goto :goto_4

    .line 1161
    :cond_7
    invoke-static {v3}, Leia;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v3

    move-object v1, p0

    .line 1162
    goto/16 :goto_0

    .line 1165
    :cond_8
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1166
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1167
    const/4 v1, 0x0

    .line 1168
    const-string v2, "content"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1169
    const/4 v0, 0x1

    .line 1174
    :goto_5
    if-eqz v0, :cond_b

    .line 1175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v1, p0

    .line 1182
    goto/16 :goto_0

    .line 1170
    :cond_9
    if-nez v0, :cond_e

    .line 1171
    const-string v2, "https:"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    move-object v3, v0

    move v0, v1

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 1180
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ldhr;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 240
    :cond_c
    iget-object v1, p0, Leyd;->m:Lbeo;

    sget-object v2, Lbeo;->b:Lbeo;

    if-ne v1, v2, :cond_0

    .line 241
    const-string v1, "-sms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 249
    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    move v0, v1

    goto :goto_5
.end method

.method public b()Leyd;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput v0, p0, Leyd;->j:I

    .line 84
    return-object p0
.end method

.method public b(II)Leyd;
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Leyd;->e:I

    .line 63
    iput p2, p0, Leyd;->a:I

    .line 64
    return-object p0
.end method

.method public b(Z)Leyd;
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Leyd;->n:Z

    .line 74
    return-object p0
.end method

.method public c()Leyd;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Leyd;->d:Z

    .line 94
    return-object p0
.end method

.method public c(Z)Leyd;
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Leyd;->i:Z

    .line 79
    return-object p0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Leyd;->g:I

    return v0
.end method

.method public d(Z)Leyd;
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Leyd;->k:Z

    .line 89
    return-object p0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Leyd;->f:I

    return v0
.end method

.method public e(Z)Leyd;
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Leyd;->l:Z

    .line 99
    return-object p0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Leyd;->h:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Leyd;->i:Z

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Leyd;->j:I

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Leyd;->n:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Leyd;->k:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Leyd;->l:Z

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Leyd;->m:Lbeo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leyd;->m:Lbeo;

    sget-object v1, Lbeo;->a:Lbeo;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lbeo;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Leyd;->m:Lbeo;

    return-object v0
.end method
