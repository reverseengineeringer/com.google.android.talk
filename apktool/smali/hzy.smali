.class public Lhzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpu;
.implements Lhqg;
.implements Liag;
.implements Lilu;
.implements Lioo;
.implements Lioq;
.implements Liov;
.implements Liow;
.implements Liox;
.implements Lioz;


# instance fields
.field final a:Lba;

.field b:Liaf;

.field c:Ljava/lang/String;

.field d:Liaa;

.field private e:Lhpz;

.field private f:Ljava/lang/String;

.field private g:Lhpv;

.field private h:I

.field private i:Liaj;

.field private j:Liaj;

.field private k:I

.field private l:Z

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhpw;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lhwj;


# direct methods
.method public constructor <init>(Lba;Liog;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lhpv;->a:Lhpv;

    iput-object v0, p0, Lhzy;->g:Lhpv;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lhzy;->h:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhzy;->m:Ljava/util/List;

    .line 113
    iput-object p1, p0, Lhzy;->a:Lba;

    .line 114
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 115
    new-instance v0, Lhwj;

    invoke-direct {v0, p2}, Lhwj;-><init>(Liog;)V

    iput-object v0, p0, Lhzy;->n:Lhwj;

    .line 116
    return-void
.end method

.method public constructor <init>(Lba;Liog;Lhpz;Liaf;Lian;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lhpv;->a:Lhpv;

    iput-object v0, p0, Lhzy;->g:Lhpv;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lhzy;->h:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhzy;->m:Ljava/util/List;

    .line 127
    invoke-static {p5}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lhwj;

    invoke-direct {v0, p2}, Lhwj;-><init>(Liog;)V

    iput-object v0, p0, Lhzy;->n:Lhwj;

    .line 129
    iput-object p1, p0, Lhzy;->a:Lba;

    .line 130
    iput-object p3, p0, Lhzy;->e:Lhpz;

    .line 131
    iput-object p4, p0, Lhzy;->b:Liaf;

    .line 132
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 133
    return-void
.end method

.method private a(Liaj;Lhpv;IZ)V
    .locals 7

    .prologue
    .line 349
    iget-object v2, p0, Lhzy;->g:Lhpv;

    .line 350
    iget v4, p0, Lhzy;->h:I

    .line 351
    iput-object p1, p0, Lhzy;->i:Liaj;

    .line 352
    iput-object p2, p0, Lhzy;->g:Lhpv;

    .line 353
    iput p3, p0, Lhzy;->h:I

    .line 355
    if-nez p4, :cond_0

    if-ne p2, v2, :cond_0

    if-eq p3, v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 357
    :goto_0
    iget-object v0, p0, Lhzy;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpw;

    move-object v3, p2

    move v5, p3

    .line 358
    invoke-interface/range {v0 .. v5}, Lhpw;->a(ZLhpv;Lhpv;II)V

    goto :goto_1

    .line 355
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 361
    :cond_2
    return-void
.end method

.method private a(Liaj;I)Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lhzy;->e:Lhpz;

    invoke-interface {v0, p2}, Lhpz;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhzy;->b:Liaf;

    .line 365
    invoke-interface {v0, p1, p2}, Liaf;->a(Liaj;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 315
    iget-boolean v0, p0, Lhzy;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhzy;->j:Liaj;

    if-eqz v0, :cond_0

    .line 316
    iget v4, p0, Lhzy;->k:I

    .line 318
    if-eq v4, v6, :cond_1

    .line 319
    sget-object v0, Lhpv;->c:Lhpv;

    .line 320
    :goto_0
    iget-object v2, p0, Lhzy;->j:Liaj;

    .line 323
    if-ne v4, v6, :cond_4

    iget v5, p0, Lhzy;->h:I

    if-eq v5, v6, :cond_4

    .line 324
    iget v0, p0, Lhzy;->h:I

    invoke-direct {p0, v2, v0}, Lhzy;->a(Liaj;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    iget v5, p0, Lhzy;->h:I

    .line 326
    sget-object v4, Lhpv;->c:Lhpv;

    .line 327
    iget-object v2, p0, Lhzy;->i:Liaj;

    .line 331
    iget-object v0, p0, Lhzy;->j:Liaj;

    iget v0, v0, Liaj;->c:I

    if-eq v0, v6, :cond_2

    const/4 v0, 0x1

    :goto_1
    move-object v1, v4

    move v4, v5

    move v7, v0

    move-object v0, v2

    move v2, v7

    .line 339
    :goto_2
    iput v6, p0, Lhzy;->k:I

    .line 340
    iput-object v3, p0, Lhzy;->j:Liaj;

    .line 342
    invoke-direct {p0, v0, v1, v4, v2}, Lhzy;->a(Liaj;Lhpv;IZ)V

    .line 344
    :cond_0
    return-void

    .line 319
    :cond_1
    sget-object v0, Lhpv;->b:Lhpv;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 331
    goto :goto_1

    .line 334
    :cond_3
    sget-object v0, Lhpv;->a:Lhpv;

    move v2, v1

    move v4, v6

    move-object v1, v0

    move-object v0, v3

    .line 335
    goto :goto_2

    :cond_4
    move-object v7, v2

    move v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 370
    invoke-virtual {p0}, Lhzy;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget v0, p0, Lhzy;->h:I

    if-eq v0, v3, :cond_0

    .line 372
    iget-object v0, p0, Lhzy;->i:Liaj;

    iget v1, p0, Lhzy;->h:I

    invoke-direct {p0, v0, v1}, Lhzy;->a(Liaj;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    sget-object v1, Lhpv;->a:Lhpv;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lhzy;->a(Liaj;Lhpv;IZ)V

    .line 378
    :cond_0
    return-void
.end method


# virtual methods
.method public X_()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhzy;->l:Z

    .line 198
    invoke-virtual {p0}, Lhzy;->h()V

    .line 199
    return-void
.end method

.method public Y_()V
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lhzy;->l:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0}, Lhzy;->j()V

    .line 300
    :cond_0
    return-void
.end method

.method public a()I
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Laal;->w()V

    .line 204
    iget v0, p0, Lhzy;->h:I

    return v0
.end method

.method public synthetic a(Lhpw;)Lhpu;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lhzy;->b(Lhpw;)Lhzy;

    move-result-object v0

    return-object v0
.end method

.method public a(Lilh;)Lhzy;
    .locals 1

    .prologue
    .line 119
    const-class v0, Lhpu;

    invoke-virtual {p1, v0, p0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 120
    const-class v0, Lhzy;

    invoke-virtual {p1, v0, p0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 121
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lhzy;
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lhzy;->f:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lhzy;->e:Lhpz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lhzy;->b:Liaf;

    if-nez v0, :cond_0

    .line 143
    const-class v0, Lhpz;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lhzy;->e:Lhpz;

    .line 144
    const-class v0, Liaf;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liaf;

    iput-object v0, p0, Lhzy;->b:Liaf;

    .line 146
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    const-string v0, "account_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhzy;->f:Ljava/lang/String;

    .line 167
    const-string v0, "account_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhzy;->h:I

    .line 169
    invoke-static {}, Lhpv;->values()[Lhpv;

    move-result-object v0

    const-string v1, "account_handler_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lhzy;->g:Lhpv;

    .line 170
    const-string v0, "completed_login_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Liaj;

    iput-object v0, p0, Lhzy;->i:Liaj;

    .line 171
    const-string v0, "queued_login_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Liaj;

    .line 172
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lhzy;->d:Liaa;

    .line 173
    const-string v0, "pending_login_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Liaj;

    iput-object v0, p0, Lhzy;->j:Liaj;

    .line 174
    const-string v0, "pending_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhzy;->k:I

    .line 175
    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhzy;->c:Ljava/lang/String;

    .line 178
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhzy;->l:Z

    .line 179
    iget-object v0, p0, Lhzy;->e:Lhpz;

    invoke-interface {v0, p0}, Lhpz;->a(Lhqg;)V

    .line 180
    iget-object v0, p0, Lhzy;->b:Liaf;

    invoke-interface {v0, p0}, Liaf;->a(Liag;)V

    .line 181
    return-void

    .line 172
    :cond_1
    new-instance v1, Liaa;

    .line 2075
    invoke-direct {v1, p0, v0}, Liaa;-><init>(Lhzy;Liaj;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Liaj;)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p1, Liaj;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lhzy;->f:Ljava/lang/String;

    iput-object v0, p1, Liaj;->e:Ljava/lang/String;

    .line 253
    :cond_0
    iget-object v0, p1, Liaj;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lhzy;->a:Lba;

    const-string v1, "LoginAccountHandler.account_key"

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Liaj;->e:Ljava/lang/String;

    .line 256
    :cond_1
    iget-boolean v0, p1, Liaj;->h:Z

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lhzy;->a:Lba;

    iget-object v1, p0, Lhzy;->a:Lba;

    invoke-virtual {v1}, Lba;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Liaj;->a(Landroid/content/Context;Landroid/content/Intent;)Liaj;

    .line 258
    iget-object v0, p0, Lhzy;->e:Lhpz;

    iget v1, p1, Liaj;->k:I

    invoke-interface {v0, v1}, Lhpz;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    const/4 v0, -0x1

    iput v0, p1, Liaj;->k:I

    .line 263
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhzy;->c:Ljava/lang/String;

    .line 264
    new-instance v0, Liaa;

    .line 3075
    invoke-direct {v0, p0, p1}, Liaa;-><init>(Lhzy;Liaj;)V

    .line 264
    iput-object v0, p0, Lhzy;->d:Liaa;

    .line 265
    iget-object v0, p0, Lhzy;->n:Lhwj;

    new-instance v1, Lhzz;

    invoke-direct {v1, p0}, Lhzz;-><init>(Lhzy;)V

    invoke-static {v1}, Ljua;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhwj;->a(Ljava/lang/Runnable;)Levf;

    .line 271
    return-void
.end method

.method public a(Liaj;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lhzy;->c:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lhzy;->c:Ljava/lang/String;

    .line 283
    iput-object p1, p0, Lhzy;->j:Liaj;

    .line 284
    iput p3, p0, Lhzy;->k:I

    .line 285
    invoke-direct {p0}, Lhzy;->i()V

    .line 287
    :cond_0
    return-void
.end method

.method public b(Lhpw;)Lhzy;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lhzy;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-object p0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhzy;->l:Z

    .line 152
    const-string v0, "account_key"

    iget-object v1, p0, Lhzy;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "account_id"

    iget v1, p0, Lhzy;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string v0, "account_handler_state"

    iget-object v1, p0, Lhzy;->g:Lhpv;

    invoke-virtual {v1}, Lhpv;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v0, "completed_login_request"

    iget-object v1, p0, Lhzy;->i:Liaj;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 156
    const-string v1, "queued_login_request"

    iget-object v0, p0, Lhzy;->d:Liaa;

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 156
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 158
    const-string v0, "pending_login_request"

    iget-object v1, p0, Lhzy;->j:Liaj;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 159
    const-string v0, "pending_id"

    iget v1, p0, Lhzy;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string v0, "tag"

    iget-object v1, p0, Lhzy;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lhzy;->d:Liaa;

    .line 1075
    iget-object v0, v0, Liaa;->a:Liaj;

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 209
    invoke-static {}, Laal;->w()V

    .line 210
    iget v0, p0, Lhzy;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lhqb;
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Laal;->w()V

    .line 223
    iget-object v0, p0, Lhzy;->e:Lhpz;

    iget v1, p0, Lhzy;->h:I

    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Laal;->w()V

    .line 216
    iget-object v0, p0, Lhzy;->e:Lhpz;

    iget v1, p0, Lhzy;->h:I

    invoke-interface {v0, v1}, Lhpz;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhzy;->e:Lhpz;

    iget v1, p0, Lhzy;->h:I

    .line 217
    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    invoke-interface {v0}, Lhqb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lhzy;->d:Liaa;

    if-nez v0, :cond_0

    iget-object v0, p0, Lhzy;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lhzy;->j:Liaj;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()V
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Lhzy;->j()V

    .line 306
    iget-object v0, p0, Lhzy;->a:Lba;

    invoke-virtual {v0}, Lba;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 3274
    :cond_0
    iget-boolean v0, p0, Lhzy;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhzy;->d:Liaa;

    if-eqz v0, :cond_1

    .line 3275
    iget-object v0, p0, Lhzy;->d:Liaa;

    .line 4092
    iget-object v0, v0, Liaa;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 311
    :cond_1
    invoke-direct {p0}, Lhzy;->i()V

    goto :goto_0
.end method

.method public h_()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lhzy;->e:Lhpz;

    invoke-interface {v0, p0}, Lhpz;->b(Lhqg;)V

    .line 186
    iget-object v0, p0, Lhzy;->b:Liaf;

    invoke-interface {v0, p0}, Liaf;->b(Liag;)V

    .line 187
    return-void
.end method

.method public s_()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhzy;->l:Z

    .line 192
    invoke-virtual {p0}, Lhzy;->h()V

    .line 193
    return-void
.end method
