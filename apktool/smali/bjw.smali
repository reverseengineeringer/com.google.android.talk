.class final Lbjw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbjm;
.implements Lioo;
.implements Liow;
.implements Lioz;
.implements Lipa;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbjn;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroid/content/Context;

.field final f:Lhaw;

.field g:Lezz;

.field h:I

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfac;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lfaa;

.field private final k:I

.field private final l:Lbg;

.field private final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Liog;ILbg;)V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbjw;->d:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lbjx;

    invoke-direct {v0, p0}, Lbjx;-><init>(Lbjw;)V

    iput-object v0, p0, Lbjw;->j:Lfaa;

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbjw;->m:Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lbjw;->e:Landroid/content/Context;

    .line 143
    iput p3, p0, Lbjw;->k:I

    .line 144
    iput-object p4, p0, Lbjw;->l:Lbg;

    .line 145
    const-class v0, Lhba;

    .line 146
    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    const-class v1, Lhpu;

    .line 147
    invoke-static {p1, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    iput-object v0, p0, Lbjw;->f:Lhaw;

    .line 148
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 149
    return-void
.end method

.method private a(Lbdy;Lbkw;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbdy;",
            "Lbkw;",
            ")",
            "Ljava/util/List",
            "<",
            "Lfac;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 295
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v0, p0, Lbjw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    iget-boolean v0, p0, Lbjw;->a:Z

    if-eqz v0, :cond_a

    .line 301
    invoke-virtual {p1}, Lbdy;->j()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdx;

    .line 302
    invoke-virtual {v0}, Lbdx;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    iget-object v1, p0, Lbjw;->d:Ljava/util/ArrayList;

    new-instance v2, Lbjn;

    invoke-direct {v2, v0}, Lbjn;-><init>(Lbdx;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v0}, Lbdx;->e()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {p1}, Lbdy;->e()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v2, v1

    .line 319
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lbdx;->c()Ljava/util/List;

    move-result-object v1

    .line 320
    invoke-virtual {v0}, Lbdx;->b()Ljava/util/List;

    move-result-object v7

    .line 321
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v3

    .line 322
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v3

    .line 324
    :goto_3
    if-eqz v4, :cond_6

    move-object v1, v4

    .line 331
    :goto_4
    if-eqz v2, :cond_7

    move-object v10, v1

    move-object v1, v2

    move-object v2, v10

    .line 339
    :goto_5
    if-nez v1, :cond_2

    .line 340
    const-string v4, "Babel_ConvCreator"

    const-string v7, "No metadata for contact with gaia id: "

    .line 341
    invoke-virtual {v0}, Lbdx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    new-array v7, v9, [Ljava/lang/Object;

    .line 340
    invoke-static {v4, v1, v7}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v1, p0, Lbjw;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Laal;->jp:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 345
    :cond_2
    invoke-virtual {v0}, Lbdx;->d()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 349
    :goto_7
    new-instance v4, Lfac;

    invoke-direct {v4, v1, v2, v0}, Lfac;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 315
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v2, v3

    goto :goto_1

    .line 321
    :cond_4
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbdw;

    invoke-virtual {v1}, Lbdw;->b()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_2

    .line 322
    :cond_5
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbee;

    invoke-virtual {v1}, Lbee;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 326
    :cond_6
    if-eqz v1, :cond_f

    .line 327
    invoke-static {v1}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v2, v3

    .line 336
    goto :goto_5

    .line 341
    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 347
    :cond_9
    invoke-virtual {p1}, Lbdy;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 353
    :cond_a
    iget-boolean v0, p0, Lbjw;->c:Z

    if-eqz v0, :cond_d

    .line 354
    invoke-virtual {p1}, Lbdy;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbee;

    .line 355
    iget-object v1, p0, Lbjw;->d:Ljava/util/ArrayList;

    new-instance v2, Lbjn;

    invoke-direct {v2, v0}, Lbjn;-><init>(Lbee;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v1, Lbkw;->c:Lbkw;

    if-ne p2, v1, :cond_c

    .line 357
    sget v1, Laal;->jf:I

    .line 359
    :goto_9
    invoke-virtual {v0}, Lbee;->a()Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-virtual {v0}, Lbee;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object v2, v0

    move-object v0, v3

    .line 368
    :cond_b
    new-instance v6, Lfac;

    invoke-direct {v6, v2, v0, v1}, Lfac;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 357
    :cond_c
    sget v1, Laal;->jg:I

    goto :goto_9

    .line 372
    :cond_d
    iget-boolean v0, p0, Lbjw;->b:Z

    if-eqz v0, :cond_e

    .line 373
    invoke-virtual {p1}, Lbdy;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdw;

    .line 374
    iget-object v2, p0, Lbjw;->d:Ljava/util/ArrayList;

    new-instance v3, Lbjn;

    invoke-direct {v3, v0}, Lbjn;-><init>(Lbdw;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v2, Lfac;

    invoke-virtual {v0}, Lbdw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lbdw;->b()Ljava/lang/String;

    move-result-object v0

    sget v4, Laal;->je:I

    invoke-direct {v2, v3, v0, v4}, Lfac;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 380
    :cond_e
    const-string v0, "There must be as many choices as contact details"

    .line 381
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lbjw;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 380
    invoke-static {v0, v1, v2}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 383
    return-object v5

    :cond_f
    move-object v1, v3

    goto/16 :goto_4
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lbjw;->k:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 153
    if-eqz p1, :cond_2

    .line 154
    iget-object v2, p0, Lbjw;->d:Ljava/util/ArrayList;

    const-string v0, "contact_details"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    const-string v0, "selector_dialog_title_id"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbjw;->h:I

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lbjw;->i:Ljava/util/List;

    .line 160
    const-string v0, "selector_dialog_choices"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_0

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbjw;->i:Ljava/util/List;

    .line 163
    :goto_0
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 164
    iget-object v3, p0, Lbjw;->i:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lfac;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_0
    iget v0, p0, Lbjw;->h:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lbjw;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbjw;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 170
    iget-object v0, p0, Lbjw;->l:Lbg;

    iget-object v1, p0, Lbjw;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lbjw;->l:Lbg;

    invoke-virtual {v1}, Lbg;->a()Lbz;

    move-result-object v1

    .line 172
    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v1, v0}, Lbz;->a(Lav;)Lbz;

    .line 176
    :cond_1
    iget-object v0, p0, Lbjw;->e:Landroid/content/Context;

    const-class v2, Lfab;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfab;

    iget-object v2, p0, Lbjw;->e:Landroid/content/Context;

    .line 177
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lbjw;->h:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbjw;->i:Ljava/util/List;

    .line 176
    invoke-interface {v0, v2, v3}, Lfab;->a(Ljava/lang/String;Ljava/util/List;)Lezz;

    move-result-object v0

    iput-object v0, p0, Lbjw;->g:Lezz;

    .line 179
    iget-object v0, p0, Lbjw;->g:Lezz;

    iget-object v2, p0, Lbjw;->j:Lfaa;

    invoke-virtual {v0, v2}, Lezz;->a(Lfaa;)V

    .line 180
    iget-object v0, p0, Lbjw;->g:Lezz;

    iget-object v2, p0, Lbjw;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lezz;->a(Lbz;Ljava/lang/String;)I

    .line 183
    :cond_2
    return-void
.end method

.method public a(Lbdy;Lbkw;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    if-eqz p3, :cond_4

    .line 214
    sget v0, Laal;->jl:I

    iput v0, p0, Lbjw;->h:I

    .line 215
    iput-boolean v2, p0, Lbjw;->a:Z

    .line 216
    const-string v3, "An invited contact must have at least a phone number or email address"

    .line 217
    invoke-virtual {p1}, Lbdy;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbdy;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 216
    :goto_0
    invoke-static {v3, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 218
    invoke-virtual {p1}, Lbdy;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lbjw;->c:Z

    .line 220
    iget-boolean v0, p0, Lbjw;->c:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lbjw;->b:Z

    .line 221
    iget-boolean v0, p0, Lbjw;->c:Z

    if-eqz v0, :cond_0

    .line 225
    sget v0, Laal;->jn:I

    iput v0, p0, Lbjw;->h:I

    .line 256
    :cond_0
    :goto_3
    invoke-direct {p0, p1, p2}, Lbjw;->a(Lbdy;Lbkw;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbjw;->i:Ljava/util/List;

    .line 258
    const-string v0, "No contact details found"

    iget-object v3, p0, Lbjw;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    invoke-static {v0, v3}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 259
    iget-object v0, p0, Lbjw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 261
    iget-object v0, p0, Lbjw;->e:Landroid/content/Context;

    const-class v1, Lbjo;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjo;

    iget-object v1, p0, Lbjw;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbjn;

    invoke-interface {v0, v1}, Lbjo;->a(Lbjn;)V

    .line 291
    :goto_4
    return-void

    :cond_1
    move v0, v2

    .line 217
    goto :goto_0

    :cond_2
    move v0, v2

    .line 218
    goto :goto_1

    :cond_3
    move v0, v2

    .line 220
    goto :goto_2

    .line 228
    :cond_4
    iput-boolean v2, p0, Lbjw;->b:Z

    .line 230
    sget-object v0, Lbjy;->a:[I

    invoke-virtual {p2}, Lbkw;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown conversation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :pswitch_0
    sget v0, Laal;->jk:I

    iput v0, p0, Lbjw;->h:I

    .line 233
    iput-boolean v1, p0, Lbjw;->a:Z

    .line 234
    iput-boolean v2, p0, Lbjw;->c:Z

    goto :goto_3

    .line 237
    :pswitch_1
    sget v0, Laal;->jn:I

    iput v0, p0, Lbjw;->h:I

    .line 238
    iput-boolean v2, p0, Lbjw;->a:Z

    .line 239
    iput-boolean v1, p0, Lbjw;->c:Z

    goto :goto_3

    .line 242
    :pswitch_2
    sget v0, Laal;->js:I

    iput v0, p0, Lbjw;->h:I

    .line 243
    iput-boolean v1, p0, Lbjw;->a:Z

    .line 244
    iput-boolean v1, p0, Lbjw;->c:Z

    goto/16 :goto_3

    .line 247
    :pswitch_3
    sget v0, Laal;->jr:I

    iput v0, p0, Lbjw;->h:I

    .line 248
    iput-boolean v1, p0, Lbjw;->a:Z

    .line 249
    iput-boolean v2, p0, Lbjw;->c:Z

    goto/16 :goto_3

    .line 263
    :cond_5
    iget-object v0, p0, Lbjw;->f:Lhaw;

    const/16 v1, 0x9ce

    .line 264
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Lhax;->d()V

    .line 266
    iget-boolean v0, p0, Lbjw;->a:Z

    if-eqz v0, :cond_6

    .line 267
    iget-object v0, p0, Lbjw;->f:Lhaw;

    const/16 v1, 0x9fa

    .line 268
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Lhax;->d()V

    .line 272
    :cond_6
    iget-boolean v0, p0, Lbjw;->c:Z

    if-eqz v0, :cond_7

    .line 273
    iget-object v0, p0, Lbjw;->f:Lhaw;

    const/16 v1, 0x9fd

    .line 274
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Lhax;->d()V

    .line 278
    :cond_7
    iget-boolean v0, p0, Lbjw;->b:Z

    if-eqz v0, :cond_8

    .line 279
    iget-object v0, p0, Lbjw;->f:Lhaw;

    const/16 v1, 0xa00

    .line 280
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Lhax;->d()V

    .line 285
    :cond_8
    iget-object v0, p0, Lbjw;->e:Landroid/content/Context;

    const-class v1, Lfab;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfab;

    iget-object v1, p0, Lbjw;->e:Landroid/content/Context;

    .line 286
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lbjw;->h:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbjw;->i:Ljava/util/List;

    .line 285
    invoke-interface {v0, v1, v2}, Lfab;->a(Ljava/lang/String;Ljava/util/List;)Lezz;

    move-result-object v0

    iput-object v0, p0, Lbjw;->g:Lezz;

    .line 288
    iget-object v0, p0, Lbjw;->g:Lezz;

    iget-object v1, p0, Lbjw;->j:Lfaa;

    invoke-virtual {v0, v1}, Lezz;->a(Lfaa;)V

    .line 289
    iget-object v0, p0, Lbjw;->g:Lezz;

    iget-object v1, p0, Lbjw;->l:Lbg;

    iget-object v2, p0, Lbjw;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lezz;->a(Lbg;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 192
    const-string v0, "contact_details"

    iget-object v1, p0, Lbjw;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 193
    iget v0, p0, Lbjw;->h:I

    if-lez v0, :cond_0

    .line 194
    const-string v0, "selector_dialog_title_id"

    iget v1, p0, Lbjw;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lbjw;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 198
    new-instance v4, Landroid/os/Bundle;

    iget-object v0, p0, Lbjw;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 200
    iget-object v0, p0, Lbjw;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfac;

    .line 201
    add-int/lit8 v3, v1, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xb

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    move v1, v3

    .line 202
    goto :goto_0

    .line 203
    :cond_1
    const-string v0, "selector_dialog_choices"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 205
    :cond_2
    iput v2, p0, Lbjw;->h:I

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lbjw;->i:Ljava/util/List;

    .line 207
    return-void
.end method
