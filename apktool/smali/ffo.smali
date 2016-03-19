.class final Lffo;
.super Lfbg;
.source "SourceFile"


# instance fields
.field n:Lffv;

.field final synthetic o:Lffl;

.field private p:Ljava/lang/String;

.field private q:Landroid/net/Uri;

.field private r:Lffm;

.field private s:J


# direct methods
.method public constructor <init>(Lffl;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lgrp;JLffm;)V
    .locals 2

    .prologue
    .line 176
    iput-object p1, p0, Lffo;->o:Lffl;

    .line 177
    invoke-direct {p0, p2}, Lfbg;-><init>(Landroid/content/Context;)V

    .line 178
    iput-object p8, p0, Lffo;->r:Lffm;

    .line 179
    new-instance v0, Lffv;

    invoke-direct {v0, p5}, Lffv;-><init>(Lgrp;)V

    iput-object v0, p0, Lffo;->n:Lffv;

    .line 180
    iput-object p3, p0, Lffo;->p:Ljava/lang/String;

    .line 181
    iput-object p4, p0, Lffo;->q:Landroid/net/Uri;

    .line 182
    iget-object v0, p0, Lffo;->n:Lffv;

    invoke-virtual {v0, p3}, Lffv;->a(Ljava/lang/String;)V

    .line 183
    iput-wide p6, p0, Lffo;->s:J

    .line 184
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public a(III)V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method public a(Landroid/database/Cursor;ILjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    invoke-static {p2}, Ldvd;->e(I)Lbfd;

    move-result-object v5

    .line 193
    invoke-static {p2}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    iget-object v3, p0, Lffo;->p:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v2, v3}, Lffo;->a(Landroid/database/Cursor;Lbfd;ZLjava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lffo;->o:Lffl;

    iget-object v3, p0, Lffo;->p:Ljava/lang/String;

    .line 195
    invoke-virtual {v0, p2, v3, v2, p3}, Lffl;->a(ILjava/lang/String;ILjava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    .line 196
    iget-object v3, p0, Lffo;->n:Lffv;

    invoke-virtual {v3, v0}, Lffv;->a(Ljava/util/ArrayList;)V

    .line 197
    iget-object v0, p0, Lffo;->n:Lffv;

    const/16 v3, 0x29

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lffv;->e(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lffo;->t()I

    move-result v3

    .line 200
    invoke-virtual {p0}, Lffo;->s()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    move v0, v1

    .line 201
    :goto_0
    iget-object v6, p0, Lffo;->n:Lffv;

    invoke-virtual {v6, v3}, Lffv;->b(I)V

    .line 202
    iget-object v6, p0, Lffo;->n:Lffv;

    .line 203
    invoke-virtual {p0}, Lffo;->t()I

    move-result v3

    .line 1262
    invoke-static {v3}, Laal;->f(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1263
    if-eqz v0, :cond_1

    .line 2258
    invoke-static {}, Lenn;->c()Z

    move-result v3

    .line 1263
    if-eqz v3, :cond_1

    .line 1264
    sget v3, Lfft;->c:I

    .line 202
    :goto_1
    invoke-virtual {v6, v3}, Lffv;->a(I)V

    .line 204
    iget-object v3, p0, Lffo;->n:Lffv;

    invoke-virtual {p0}, Lffo;->u()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lffv;->a(J)V

    .line 205
    iget-object v3, p0, Lffo;->n:Lffv;

    invoke-virtual {p0}, Lffo;->r()Z

    move-result v6

    invoke-virtual {v3, v6}, Lffv;->a(Z)V

    .line 206
    iget-object v3, p0, Lffo;->n:Lffv;

    invoke-virtual {v3, v0}, Lffv;->b(Z)V

    .line 207
    iget-object v3, p0, Lffo;->n:Lffv;

    const/16 v6, 0x28

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eq v6, v1, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Lffv;->c(Z)V

    .line 210
    iget-object v1, p0, Lffo;->p:Ljava/lang/String;

    .line 3253
    new-instance v2, Lbfz;

    iget-object v3, p0, Lffo;->o:Lffl;

    .line 4051
    iget-object v3, v3, Lffl;->a:Landroid/content/Context;

    .line 3253
    invoke-direct {v2, v3, p2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 3254
    invoke-virtual {v2, v1}, Lbfz;->H(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 211
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 212
    if-nez v0, :cond_a

    .line 215
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v4

    move-object v2, v4

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 216
    invoke-virtual {v5}, Lbfd;->b()Lczb;

    move-result-object v7

    iget-object v8, v0, Lcyx;->b:Lczb;

    invoke-virtual {v7, v8}, Lczb;->a(Lczb;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v2, v0

    .line 217
    goto :goto_3

    :cond_0
    move v0, v2

    .line 200
    goto :goto_0

    .line 1266
    :cond_1
    sget v3, Lfft;->b:I

    goto :goto_1

    .line 1268
    :cond_2
    sget v3, Lfft;->a:I

    goto :goto_1

    :cond_3
    move v1, v2

    .line 207
    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 221
    goto :goto_3

    .line 223
    :cond_5
    if-eqz v1, :cond_d

    .line 224
    if-eqz v2, :cond_9

    iget-object v0, v1, Lcyx;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lcyx;->f:Ljava/lang/String;

    iget-object v2, v2, Lcyx;->f:Ljava/lang/String;

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 226
    iget-object v0, v1, Lcyx;->f:Ljava/lang/String;

    .line 230
    :goto_4
    invoke-virtual {v5}, Lbfd;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v1, v1, Lcyx;->y:Z

    if-nez v1, :cond_6

    .line 231
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_6
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 235
    iget-object v0, p0, Lffo;->n:Lffv;

    invoke-virtual {v0}, Lffv;->a()Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_7
    iget-object v1, p0, Lffo;->n:Lffv;

    invoke-virtual {v1, v0}, Lffv;->d(Ljava/lang/String;)V

    .line 249
    :cond_8
    iget-object v0, p0, Lffo;->n:Lffv;

    invoke-virtual {v0, v3}, Lffv;->b(Ljava/util/ArrayList;)V

    .line 250
    return-void

    .line 228
    :cond_9
    iget-object v0, v1, Lcyx;->e:Ljava/lang/String;

    goto :goto_4

    .line 238
    :cond_a
    invoke-virtual {v5}, Lbfd;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 239
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 240
    iget-boolean v2, v0, Lcyx;->y:Z

    if-nez v2, :cond_b

    invoke-virtual {v5}, Lbfd;->j()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 241
    invoke-virtual {v5}, Lbfd;->b()Lczb;

    move-result-object v2

    iget-object v4, v0, Lcyx;->b:Lczb;

    invoke-virtual {v2, v4}, Lczb;->a(Lczb;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 242
    iget-object v2, v0, Lcyx;->f:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v0, v0, Lcyx;->f:Ljava/lang/String;

    .line 243
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 244
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 242
    :cond_c
    iget-object v0, v0, Lcyx;->e:Ljava/lang/String;

    goto :goto_7

    :cond_d
    move-object v0, v4

    goto :goto_5
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lffo;->n:Lffv;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lffv;->c(Ljava/lang/String;)V

    .line 330
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public a(ZLandroid/graphics/Bitmap;ZLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 279
    if-eqz p4, :cond_0

    iget-object v0, p0, Lffo;->p:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 281
    iget-object v0, p0, Lffo;->r:Lffm;

    iget-object v1, p0, Lffo;->q:Landroid/net/Uri;

    invoke-virtual {v0, v1, p2}, Lffm;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 283
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 287
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 288
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lffo;->n:Lffv;

    invoke-virtual {v1, v0}, Lffv;->b(Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public e()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return-object v0
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public h(I)V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public i(I)V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public j(I)V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public k()I
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public k(I)V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method protected l()V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public l(I)V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public n()Z
    .locals 4

    .prologue
    .line 273
    invoke-virtual {p0}, Lffo;->u()J

    move-result-wide v0

    iget-wide v2, p0, Lffo;->s:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
