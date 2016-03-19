.class public final Ldas;
.super Ldci;
.source "SourceFile"


# instance fields
.field final e:Lbfd;

.field final f:Laxq;

.field g:Z

.field h:Ldbc;

.field i:Ljava/lang/String;

.field private final j:Z

.field private final k:Landroid/app/Activity;

.field private final l:Lhba;

.field private m:Lbec;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/view/View$OnCreateContextMenuListener;

.field private final q:Lbis;

.field private final r:Lbis;

.field private final s:Lbis;

.field private final t:Lbis;

.field private final u:Lbis;

.field private final v:Lbis;

.field private final w:Lbis;

.field private final x:Lbis;

.field private final y:Lbis;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbfd;Laxq;Landroid/view/View$OnCreateContextMenuListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 160
    invoke-direct {p0, p1}, Ldci;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Ldbd;

    sget v1, Ldbg;->a:I

    invoke-direct {v0, p0, v1, v6, v6}, Ldbd;-><init>(Ldas;IZZ)V

    invoke-virtual {p0, v0}, Ldas;->a(Lbis;)Lbis;

    .line 81
    new-instance v0, Ldbd;

    sget v2, Ldbg;->b:I

    sget v5, Lfcj;->g:I

    move-object v1, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Ldbd;-><init>(Ldas;IZZI)V

    invoke-virtual {p0, v0}, Ldas;->a(Lbis;)Lbis;

    move-result-object v0

    check-cast v0, Lbis;

    iput-object v0, p0, Ldas;->q:Lbis;

    .line 85
    new-instance v0, Ldbd;

    sget v1, Ldbg;->e:I

    invoke-direct {v0, p0, v1, v3, v6}, Ldbd;-><init>(Ldas;IZZ)V

    invoke-virtual {p0, v0}, Ldas;->a(Lbis;)Lbis;

    move-result-object v0

    check-cast v0, Lbis;

    iput-object v0, p0, Ldas;->r:Lbis;

    .line 88
    new-instance v0, Ldat;

    sget v1, Ldbg;->b:I

    sget v2, Lfcj;->b:I

    invoke-direct {v0, p0, v1, v2}, Ldat;-><init>(Ldas;II)V

    invoke-virtual {p0, v0}, Ldas;->a(Lbis;)Lbis;

    move-result-object v0

    check-cast v0, Lbis;

    iput-object v0, p0, Ldas;->s:Lbis;

    .line 99
    new-instance v0, Ldau;

    sget v1, Ldbg;->b:I

    sget v2, Lfcj;->c:I

    invoke-direct {v0, p0, v1, v2}, Ldau;-><init>(Ldas;II)V

    invoke-virtual {p0, v0}, Ldas;->a(Lbis;)Lbis;

    move-result-object v0

    check-cast v0, Lbis;

    iput-object v0, p0, Ldas;->t:Lbis;

    .line 110
    new-instance v0, Ldav;

    sget v1, Ldbg;->b:I

    sget v2, Lfcj;->d:I

    invoke-direct {v0, p0, v1, v2}, Ldav;-><init>(Ldas;II)V

    invoke-virtual {p0, v0}, Ldas;->a(Lbis;)Lbis;

    move-result-object v0

    check-cast v0, Lbis;

    iput-object v0, p0, Ldas;->u:Lbis;

    .line 123
    new-instance v0, Ldaw;

    sget v1, Ldbg;->c:I

    invoke-direct {v0, p0, v1}, Ldaw;-><init>(Ldas;I)V

    invoke-virtual {p0, v0}, Ldas;->a(Lbis;)Lbis;

    move-result-object v0

    check-cast v0, Lbis;

    iput-object v0, p0, Ldas;->v:Lbis;

    .line 133
    new-instance v0, Ldbd;

    sget v1, Ldbg;->e:I

    invoke-direct {v0, p0, v1, v3, v6}, Ldbd;-><init>(Ldas;IZZ)V

    invoke-virtual {p0, v0}, Ldas;->a(Lbis;)Lbis;

    move-result-object v0

    check-cast v0, Lbis;

    iput-object v0, p0, Ldas;->w:Lbis;

    .line 136
    new-instance v0, Ldax;

    sget v1, Ldbg;->d:I

    sget v2, Lfcj;->e:I

    invoke-direct {v0, p0, v1, v2}, Ldax;-><init>(Ldas;II)V

    invoke-virtual {p0, v0}, Ldas;->a(Lbis;)Lbis;

    move-result-object v0

    check-cast v0, Lbis;

    iput-object v0, p0, Ldas;->x:Lbis;

    .line 146
    new-instance v0, Lday;

    sget v1, Ldbg;->c:I

    invoke-direct {v0, p0, v1}, Lday;-><init>(Ldas;I)V

    invoke-virtual {p0, v0}, Ldas;->a(Lbis;)Lbis;

    move-result-object v0

    check-cast v0, Lbis;

    iput-object v0, p0, Ldas;->y:Lbis;

    .line 162
    iput-object p1, p0, Ldas;->k:Landroid/app/Activity;

    .line 163
    iput-object p2, p0, Ldas;->e:Lbfd;

    .line 164
    iput-object p3, p0, Ldas;->f:Laxq;

    .line 165
    iput-object p4, p0, Ldas;->p:Landroid/view/View$OnCreateContextMenuListener;

    .line 166
    iput-object p5, p0, Ldas;->o:Landroid/view/View$OnClickListener;

    .line 167
    iput-object p6, p0, Ldas;->n:Landroid/view/View$OnClickListener;

    .line 168
    iput-boolean p7, p0, Ldas;->j:Z

    .line 169
    invoke-virtual {p0, v3}, Ldas;->a(Z)V

    .line 170
    invoke-virtual {p0}, Ldas;->b()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lhba;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iput-object v0, p0, Ldas;->l:Lhba;

    .line 171
    return-void
.end method

.method private a(Lbis;Lbec;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 295
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "updateCursor partition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {p1, p2}, Lbis;->a(Landroid/database/Cursor;)V

    .line 301
    invoke-virtual {p0, v0}, Ldas;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ldas;->c(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    :goto_0
    iget-object v1, p0, Ldas;->v:Lbis;

    invoke-virtual {v1, v0}, Lbis;->a(Z)V

    .line 303
    return-void

    .line 301
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 306
    iget-boolean v1, p0, Ldas;->g:Z

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Ldas;->m:Lbec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldas;->m:Lbec;

    invoke-interface {v1}, Lbec;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 308
    :cond_0
    iget-object v1, p0, Ldas;->y:Lbis;

    invoke-virtual {v1, v0}, Lbis;->a(Z)V

    .line 309
    iget-object v0, p0, Ldas;->x:Lbis;

    iget-object v1, p0, Ldas;->m:Lbec;

    invoke-virtual {v0, v1}, Lbis;->a(Landroid/database/Cursor;)V

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v1, p0, Ldas;->y:Lbis;

    invoke-virtual {v1, v0}, Lbis;->a(Z)V

    .line 312
    iget-object v0, p0, Ldas;->x:Lbis;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbis;->a(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Laao;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 318
    sget-object v0, Ldbg;->g:[I

    aget v0, v0, p2

    .line 319
    sget-object v1, Ldba;->a:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 366
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 321
    :pswitch_0
    iget-object v0, p0, Ldas;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 322
    sget v1, Laal;->gm:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 324
    new-instance v0, Ldbe;

    .line 1370
    invoke-direct {v0, p0, v1}, Ldbe;-><init>(Ldas;Landroid/view/View;)V

    goto :goto_0

    .line 327
    :pswitch_1
    iget-object v0, p0, Ldas;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 328
    sget v1, Laal;->ow:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 329
    new-instance v0, Ldbe;

    .line 2370
    invoke-direct {v0, p0, v1}, Ldbe;-><init>(Ldas;Landroid/view/View;)V

    goto :goto_0

    .line 332
    :pswitch_2
    iget-object v0, p0, Ldas;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 333
    sget v1, Laal;->ov:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 334
    new-instance v0, Ldbf;

    invoke-direct {v0, p0, v1}, Ldbf;-><init>(Ldas;Landroid/view/View;)V

    goto :goto_0

    .line 337
    :pswitch_3
    iget-object v0, p0, Ldas;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 338
    sget v1, Laal;->ou:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 339
    iget-object v0, p0, Ldas;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    invoke-static {v1, v4}, Lezc;->a(Landroid/view/View;Z)V

    .line 341
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 342
    new-instance v0, Ldbc;

    invoke-direct {v0, p0, v1}, Ldbc;-><init>(Ldas;Landroid/view/View;)V

    goto :goto_0

    .line 345
    :pswitch_4
    iget-object v0, p0, Ldas;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 346
    sget v1, Laal;->ox:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 347
    new-instance v0, Ldbb;

    .line 2379
    invoke-direct {v0, p0, v1}, Ldbb;-><init>(Ldas;Landroid/view/View;)V

    goto :goto_0

    .line 350
    :pswitch_5
    new-instance v1, Lfce;

    iget-object v0, p0, Ldas;->k:Landroid/app/Activity;

    iget-object v2, p0, Ldas;->e:Lbfd;

    iget-object v3, p0, Ldas;->f:Laxq;

    invoke-direct {v1, v0, v2, v3}, Lfce;-><init>(Landroid/content/Context;Lbfd;Laxq;)V

    .line 352
    iget-object v0, p0, Ldas;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lfce;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Ldas;->p:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v0}, Lfce;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 354
    new-instance v0, Ldaz;

    invoke-direct {v0, p0, v1}, Ldaz;-><init>(Ldas;Lfce;)V

    invoke-virtual {v1, v0}, Lfce;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 360
    invoke-static {v1, v4}, Lezc;->a(Landroid/view/View;Z)V

    .line 361
    invoke-virtual {v1, v4}, Lfce;->setFocusable(Z)V

    .line 362
    new-instance v0, Ldbb;

    .line 3379
    invoke-direct {v0, p0, v1}, Ldbb;-><init>(Ldas;Landroid/view/View;)V

    goto/16 :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lbec;)V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Ldas;->s:Lbis;

    invoke-direct {p0, v0, p1}, Ldas;->a(Lbis;Lbec;)V

    .line 239
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldas;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {p1}, Lbec;->getCount()I

    move-result v0

    .line 241
    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Ldas;->l:Lhba;

    iget-object v1, p0, Ldas;->e:Lbfd;

    .line 243
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0x9f4

    .line 244
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Lhax;->d()V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v1, p0, Ldas;->l:Lhba;

    iget-object v2, p0, Ldas;->e:Lbfd;

    .line 249
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-interface {v1, v2}, Lhba;->a(I)Lhaw;

    move-result-object v1

    const/16 v2, 0x9f3

    .line 250
    invoke-interface {v1, v2}, Lhaw;->a(I)Lhax;

    move-result-object v1

    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lhax;->a(Ljava/lang/Integer;)Lhax;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Lhax;->d()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 179
    iput-object p1, p0, Ldas;->i:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Ldas;->d()Z

    move-result v0

    .line 182
    iget-object v1, p0, Ldas;->w:Lbis;

    invoke-virtual {v1, v0}, Lbis;->a(Z)V

    .line 183
    iget-object v1, p0, Ldas;->x:Lbis;

    invoke-virtual {v1, v0}, Lbis;->a(Z)V

    .line 184
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbdy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 230
    :goto_0
    if-eqz v1, :cond_1

    .line 231
    new-instance v0, Lbed;

    invoke-direct {v0, p1}, Lbed;-><init>(Ljava/util/List;)V

    .line 232
    :goto_1
    iget-object v2, p0, Ldas;->q:Lbis;

    invoke-virtual {v2, v0}, Lbis;->a(Landroid/database/Cursor;)V

    .line 233
    iget-object v0, p0, Ldas;->r:Lbis;

    invoke-virtual {v0, v1}, Lbis;->a(Z)V

    .line 234
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 175
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public b(Lbec;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Ldas;->t:Lbis;

    invoke-direct {p0, v0, p1}, Ldas;->a(Lbis;Lbec;)V

    .line 259
    return-void
.end method

.method public b(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 196
    iget-boolean v1, p0, Ldas;->j:Z

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Ldas;->s:Lbis;

    invoke-virtual {v1}, Lbis;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Ldas;->u:Lbis;

    invoke-virtual {v1}, Lbis;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    :cond_2
    iget-object v0, p0, Ldas;->t:Lbis;

    invoke-virtual {v0}, Lbis;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public c(Lbec;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Ldas;->u:Lbis;

    invoke-direct {p0, v0, p1}, Ldas;->a(Lbis;Lbec;)V

    .line 263
    return-void
.end method

.method public c(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 215
    iget-boolean v1, p0, Ldas;->j:Z

    if-eqz v1, :cond_2

    .line 216
    iget-object v1, p0, Ldas;->s:Lbis;

    invoke-virtual {v1}, Lbis;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Ldas;->u:Lbis;

    invoke-virtual {v1}, Lbis;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    :cond_2
    iget-object v0, p0, Ldas;->t:Lbis;

    invoke-virtual {v0}, Lbis;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public d(Lbec;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Ldas;->m:Lbec;

    .line 268
    invoke-direct {p0}, Ldas;->f()V

    .line 269
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 276
    iget-boolean v0, p0, Ldas;->g:Z

    if-ne v0, p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    if-eqz p1, :cond_2

    .line 281
    iget-object v0, p0, Ldas;->l:Lhba;

    iget-object v1, p0, Ldas;->e:Lbfd;

    .line 282
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0x9f9

    .line 283
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Lhax;->d()V

    .line 287
    :cond_2
    iput-boolean p1, p0, Ldas;->g:Z

    .line 288
    invoke-direct {p0}, Ldas;->f()V

    .line 289
    iget-object v0, p0, Ldas;->h:Ldbc;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Ldas;->h:Ldbc;

    invoke-virtual {v0}, Ldbc;->u()V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Ldas;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldas;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Ldas;->g:Z

    return v0
.end method
