.class final Lakh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lakf;
.implements Lavy;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lakf;",
        "Lavy;",
        "Ljava/lang/Comparable",
        "<",
        "Lakh",
        "<*>;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private volatile A:Lake;

.field private volatile B:Z

.field private volatile C:Z

.field final a:Lakg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakg",
            "<TR;>;"
        }
    .end annotation
.end field

.field final b:Lakk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakk",
            "<*>;"
        }
    .end annotation
.end field

.field c:Laiw;

.field d:I

.field e:I

.field f:Lakr;

.field g:Laja;

.field h:Laiw;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lawa;

.field private final k:Lakl;

.field private final l:Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic",
            "<",
            "Lakh",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final m:Lakm;

.field private n:Lahm;

.field private o:Lahs;

.field private p:Lali;

.field private q:Lakj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakj",
            "<TR;>;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Lako;

.field private t:Lakn;

.field private u:J

.field private v:Ljava/lang/Thread;

.field private w:Laiw;

.field private x:Ljava/lang/Object;

.field private y:Lair;

.field private z:Lajf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajf",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lakl;Lic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakl;",
            "Lic",
            "<",
            "Lakh",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lakg;

    invoke-direct {v0}, Lakg;-><init>()V

    iput-object v0, p0, Lakh;->a:Lakg;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lakh;->i:Ljava/util/List;

    .line 1016
    new-instance v0, Lawb;

    .line 1033
    invoke-direct {v0}, Lawb;-><init>()V

    .line 43
    iput-object v0, p0, Lakh;->j:Lawa;

    .line 46
    new-instance v0, Lakk;

    .line 1559
    invoke-direct {v0}, Lakk;-><init>()V

    .line 46
    iput-object v0, p0, Lakh;->b:Lakk;

    .line 47
    new-instance v0, Lakm;

    .line 2524
    invoke-direct {v0}, Lakm;-><init>()V

    .line 47
    iput-object v0, p0, Lakh;->m:Lakm;

    .line 75
    iput-object p1, p0, Lakh;->k:Lakl;

    .line 76
    iput-object p2, p0, Lakh;->l:Lic;

    .line 77
    return-void
.end method

.method private a(Lako;)Lako;
    .locals 4

    .prologue
    .line 312
    :goto_0
    sget-object v0, Laki;->b:[I

    invoke-virtual {p1}, Lako;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognized stage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :pswitch_0
    iget-object v0, p0, Lakh;->f:Lakr;

    invoke-virtual {v0}, Lakr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lako;->b:Lako;

    .line 323
    :goto_1
    return-object v0

    .line 315
    :cond_0
    sget-object p1, Lako;->b:Lako;

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v0, p0, Lakh;->f:Lakr;

    invoke-virtual {v0}, Lakr;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    sget-object v0, Lako;->c:Lako;

    goto :goto_1

    :cond_1
    sget-object p1, Lako;->c:Lako;

    goto :goto_0

    .line 320
    :pswitch_2
    sget-object v0, Lako;->d:Lako;

    goto :goto_1

    .line 323
    :pswitch_3
    sget-object v0, Lako;->f:Lako;

    goto :goto_1

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lajf;Ljava/lang/Object;Lair;)Lalr;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lajf",
            "<*>;TData;",
            "Lair;",
            ")",
            "Lalr",
            "<TR;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 412
    if-nez p2, :cond_0

    .line 422
    invoke-interface {p1}, Lajf;->a()V

    :goto_0
    return-object v0

    .line 415
    :cond_0
    :try_start_0
    invoke-static {}, Lavm;->a()J

    move-result-wide v2

    .line 5429
    iget-object v0, p0, Lakh;->a:Lakg;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakg;->b(Ljava/lang/Class;)Lalo;

    move-result-object v0

    .line 5430
    invoke-direct {p0, p2, p3, v0}, Lakh;->a(Ljava/lang/Object;Lair;Lalo;)Lalr;

    move-result-object v0

    .line 417
    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xf

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Decoded result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5445
    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lakh;->a(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :cond_1
    invoke-interface {p1}, Lajf;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lajf;->a()V

    throw v0
.end method

.method private a(Ljava/lang/Object;Lair;Lalo;)Lalr;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lair;",
            "Lalo",
            "<TData;TResourceType;TR;>;)",
            "Lalr",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lakh;->n:Lahm;

    invoke-virtual {v0}, Lahm;->c()Laht;

    move-result-object v0

    invoke-virtual {v0, p1}, Laht;->b(Ljava/lang/Object;)Lajh;

    move-result-object v1

    .line 437
    :try_start_0
    iget-object v2, p0, Lakh;->g:Laja;

    iget v3, p0, Lakh;->d:I

    iget v4, p0, Lakh;->e:I

    new-instance v5, Lakq;

    invoke-direct {v5, p0, p2}, Lakq;-><init>(Lakh;Lair;)V

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lalo;->a(Lajh;Laja;IILakq;)Lalr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 440
    invoke-interface {v1}, Lajh;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lajh;->b()V

    throw v0
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8

    .prologue
    .line 449
    invoke-static {p2, p3}, Lavm;->a(J)D

    move-result-wide v2

    iget-object v0, p0, Lakh;->p:Lali;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p4, :cond_1

    .line 450
    const-string v4, ", "

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x32

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", load key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    return-void

    .line 450
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lakh;->m:Lakm;

    invoke-virtual {v0}, Lakm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lakh;->f()V

    .line 152
    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lakh;->m:Lakm;

    invoke-virtual {v0}, Lakm;->c()V

    .line 165
    iget-object v0, p0, Lakh;->b:Lakk;

    invoke-virtual {v0}, Lakk;->b()V

    .line 166
    iget-object v0, p0, Lakh;->a:Lakg;

    invoke-virtual {v0}, Lakg;->a()V

    .line 167
    iput-boolean v2, p0, Lakh;->B:Z

    .line 168
    iput-object v1, p0, Lakh;->n:Lahm;

    .line 169
    iput-object v1, p0, Lakh;->c:Laiw;

    .line 170
    iput-object v1, p0, Lakh;->g:Laja;

    .line 171
    iput-object v1, p0, Lakh;->o:Lahs;

    .line 172
    iput-object v1, p0, Lakh;->p:Lali;

    .line 173
    iput-object v1, p0, Lakh;->q:Lakj;

    .line 174
    iput-object v1, p0, Lakh;->s:Lako;

    .line 175
    iput-object v1, p0, Lakh;->A:Lake;

    .line 176
    iput-object v1, p0, Lakh;->v:Ljava/lang/Thread;

    .line 177
    iput-object v1, p0, Lakh;->h:Laiw;

    .line 178
    iput-object v1, p0, Lakh;->x:Ljava/lang/Object;

    .line 179
    iput-object v1, p0, Lakh;->y:Lair;

    .line 180
    iput-object v1, p0, Lakh;->z:Lajf;

    .line 181
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lakh;->u:J

    .line 182
    iput-boolean v2, p0, Lakh;->C:Z

    .line 183
    iget-object v0, p0, Lakh;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    iget-object v0, p0, Lakh;->l:Lic;

    invoke-interface {v0, p0}, Lic;->a(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method private g()Lake;
    .locals 4

    .prologue
    .line 254
    sget-object v0, Laki;->b:[I

    iget-object v1, p0, Lakh;->s:Lako;

    invoke-virtual {v1}, Lako;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 264
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lakh;->s:Lako;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognized stage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :pswitch_0
    new-instance v0, Lals;

    iget-object v1, p0, Lakh;->a:Lakg;

    invoke-direct {v0, v1, p0}, Lals;-><init>(Lakg;Lakf;)V

    .line 262
    :goto_0
    return-object v0

    .line 258
    :pswitch_1
    new-instance v0, Lakc;

    iget-object v1, p0, Lakh;->a:Lakg;

    invoke-direct {v0, v1, p0}, Lakc;-><init>(Lakg;Lakf;)V

    goto :goto_0

    .line 260
    :pswitch_2
    new-instance v0, Lalw;

    iget-object v1, p0, Lakh;->a:Lakg;

    invoke-direct {v0, v1, p0}, Lalw;-><init>(Lakg;Lakf;)V

    goto :goto_0

    .line 262
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private h()V
    .locals 3

    .prologue
    .line 269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lakh;->v:Ljava/lang/Thread;

    .line 270
    invoke-static {}, Lavm;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lakh;->u:J

    .line 271
    const/4 v0, 0x0

    .line 272
    :cond_0
    iget-boolean v1, p0, Lakh;->C:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lakh;->A:Lake;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lakh;->A:Lake;

    .line 273
    invoke-interface {v0}, Lake;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 274
    iget-object v1, p0, Lakh;->s:Lako;

    invoke-direct {p0, v1}, Lakh;->a(Lako;)Lako;

    move-result-object v1

    iput-object v1, p0, Lakh;->s:Lako;

    .line 275
    invoke-direct {p0}, Lakh;->g()Lake;

    move-result-object v1

    iput-object v1, p0, Lakh;->A:Lake;

    .line 277
    iget-object v1, p0, Lakh;->s:Lako;

    sget-object v2, Lako;->d:Lako;

    if-ne v1, v2, :cond_0

    .line 278
    invoke-virtual {p0}, Lakh;->c()V

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    iget-object v1, p0, Lakh;->s:Lako;

    sget-object v2, Lako;->f:Lako;

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lakh;->C:Z

    if-eqz v1, :cond_1

    :cond_3
    if-nez v0, :cond_1

    .line 284
    invoke-direct {p0}, Lakh;->i()V

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 292
    invoke-direct {p0}, Lakh;->j()V

    .line 293
    new-instance v0, Lalm;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lakh;->i:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lalm;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 294
    iget-object v1, p0, Lakh;->q:Lakj;

    invoke-interface {v1, v0}, Lakj;->a(Lalm;)V

    .line 4158
    iget-object v0, p0, Lakh;->m:Lakm;

    invoke-virtual {v0}, Lakm;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4159
    invoke-direct {p0}, Lakh;->f()V

    .line 296
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lakh;->j:Lawa;

    invoke-virtual {v0}, Lawa;->a()V

    .line 305
    iget-boolean v0, p0, Lakh;->B:Z

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already notified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lakh;->B:Z

    .line 309
    return-void
.end method

.method private k()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 366
    const-string v1, "DecodeJob"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const-string v1, "Retrieved data"

    iget-wide v2, p0, Lakh;->u:J

    iget-object v4, p0, Lakh;->x:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lakh;->h:Laiw;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lakh;->z:Lajf;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1e

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", cache key: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fetcher: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lakh;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 374
    :cond_0
    :try_start_0
    iget-object v1, p0, Lakh;->z:Lajf;

    iget-object v2, p0, Lakh;->x:Ljava/lang/Object;

    iget-object v3, p0, Lakh;->y:Lair;

    invoke-direct {p0, v1, v2, v3}, Lakh;->a(Lajf;Ljava/lang/Object;Lair;)Lalr;
    :try_end_0
    .catch Lalm; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 379
    :goto_0
    if-eqz v1, :cond_5

    .line 380
    iget-object v2, p0, Lakh;->y:Lair;

    .line 4389
    iget-object v3, p0, Lakh;->b:Lakk;

    invoke-virtual {v3}, Lakk;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4390
    invoke-static {v1}, Lalp;->a(Lalr;)Lalp;

    move-result-object v0

    move-object v1, v0

    .line 5299
    :cond_1
    invoke-direct {p0}, Lakh;->j()V

    .line 5300
    iget-object v3, p0, Lakh;->q:Lakj;

    invoke-interface {v3, v1, v2}, Lakj;->a(Lalr;Lair;)V

    .line 4396
    sget-object v1, Lako;->e:Lako;

    iput-object v1, p0, Lakh;->s:Lako;

    .line 4398
    :try_start_1
    iget-object v1, p0, Lakh;->b:Lakk;

    invoke-virtual {v1}, Lakk;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4399
    iget-object v1, p0, Lakh;->b:Lakk;

    iget-object v2, p0, Lakh;->k:Lakl;

    iget-object v3, p0, Lakh;->g:Laja;

    invoke-virtual {v1, v2, v3}, Lakk;->a(Lakl;Laja;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4402
    :cond_2
    if-eqz v0, :cond_3

    .line 4403
    invoke-virtual {v0}, Lalp;->a()V

    .line 4405
    :cond_3
    invoke-direct {p0}, Lakh;->e()V

    .line 4406
    :goto_1
    return-void

    .line 375
    :catch_0
    move-exception v1

    .line 376
    iget-object v2, p0, Lakh;->w:Laiw;

    iget-object v3, p0, Lakh;->y:Lair;

    invoke-virtual {v1, v2, v3}, Lalm;->a(Laiw;Lair;)V

    .line 377
    iget-object v2, p0, Lakh;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_0

    .line 4402
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 4403
    invoke-virtual {v0}, Lalp;->a()V

    .line 4405
    :cond_4
    invoke-direct {p0}, Lakh;->e()V

    throw v1

    .line 382
    :cond_5
    invoke-direct {p0}, Lakh;->h()V

    goto :goto_1
.end method


# virtual methods
.method a(Lahm;Ljava/lang/Object;Lali;Laiw;IILjava/lang/Class;Ljava/lang/Class;Lahs;Lakr;Ljava/util/Map;ZLaja;Lakj;I)Lakh;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahm;",
            "Ljava/lang/Object;",
            "Lali;",
            "Laiw;",
            "II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lahs;",
            "Lakr;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lajd",
            "<*>;>;Z",
            "Laja;",
            "Lakj",
            "<TR;>;I)",
            "Lakh",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lakh;->a:Lakg;

    iget-object v14, p0, Lakh;->k:Lakl;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p13

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v14}, Lakg;->a(Lahm;Ljava/lang/Object;Laiw;IILakr;Ljava/lang/Class;Ljava/lang/Class;Lahs;Laja;Ljava/util/Map;ZLakl;)Lakg;

    .line 109
    move-object/from16 v0, p1

    iput-object v0, p0, Lakh;->n:Lahm;

    .line 110
    move-object/from16 v0, p4

    iput-object v0, p0, Lakh;->c:Laiw;

    .line 111
    move-object/from16 v0, p9

    iput-object v0, p0, Lakh;->o:Lahs;

    .line 112
    move-object/from16 v0, p3

    iput-object v0, p0, Lakh;->p:Lali;

    .line 113
    move/from16 v0, p5

    iput v0, p0, Lakh;->d:I

    .line 114
    move/from16 v0, p6

    iput v0, p0, Lakh;->e:I

    .line 115
    move-object/from16 v0, p10

    iput-object v0, p0, Lakh;->f:Lakr;

    .line 116
    move-object/from16 v0, p13

    iput-object v0, p0, Lakh;->g:Laja;

    .line 117
    move-object/from16 v0, p14

    iput-object v0, p0, Lakh;->q:Lakj;

    .line 118
    move/from16 v0, p15

    iput v0, p0, Lakh;->r:I

    .line 119
    sget-object v1, Lakn;->a:Lakn;

    iput-object v1, p0, Lakh;->t:Lakn;

    .line 120
    return-object p0
.end method

.method public a(Laiw;Ljava/lang/Exception;Lajf;Lair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laiw;",
            "Ljava/lang/Exception;",
            "Lajf",
            "<*>;",
            "Lair;",
            ")V"
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Lalm;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lalm;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 355
    invoke-interface {p3}, Lajf;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p4, v1}, Lalm;->a(Laiw;Lair;Ljava/lang/Class;)V

    .line 356
    iget-object v1, p0, Lakh;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lakh;->v:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 358
    sget-object v0, Lakn;->b:Lakn;

    iput-object v0, p0, Lakh;->t:Lakn;

    .line 359
    iget-object v0, p0, Lakh;->q:Lakj;

    invoke-interface {v0, p0}, Lakj;->a(Lakh;)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-direct {p0}, Lakh;->h()V

    goto :goto_0
.end method

.method public a(Laiw;Ljava/lang/Object;Lajf;Lair;Laiw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laiw;",
            "Ljava/lang/Object;",
            "Lajf",
            "<*>;",
            "Lair;",
            "Laiw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    iput-object p1, p0, Lakh;->h:Laiw;

    .line 339
    iput-object p2, p0, Lakh;->x:Ljava/lang/Object;

    .line 340
    iput-object p3, p0, Lakh;->z:Lajf;

    .line 341
    iput-object p4, p0, Lakh;->y:Lair;

    .line 342
    iput-object p5, p0, Lakh;->w:Laiw;

    .line 343
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lakh;->v:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 344
    sget-object v0, Lakn;->c:Lakn;

    iput-object v0, p0, Lakh;->t:Lakn;

    .line 345
    iget-object v0, p0, Lakh;->q:Lakj;

    invoke-interface {v0, p0}, Lakj;->a(Lakh;)V

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-direct {p0}, Lakh;->k()V

    goto :goto_0
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lakh;->m:Lakm;

    invoke-virtual {v0, p1}, Lakm;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lakh;->f()V

    .line 142
    :cond_0
    return-void
.end method

.method a()Z
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lako;->a:Lako;

    invoke-direct {p0, v0}, Lakh;->a(Lako;)Lako;

    move-result-object v0

    .line 129
    sget-object v1, Lako;->b:Lako;

    if-eq v0, v1, :cond_0

    sget-object v1, Lako;->c:Lako;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lakh;->C:Z

    .line 202
    iget-object v0, p0, Lakh;->A:Lake;

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Lake;->b()V

    .line 206
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lakn;->b:Lakn;

    iput-object v0, p0, Lakh;->t:Lakn;

    .line 332
    iget-object v0, p0, Lakh;->q:Lakj;

    invoke-interface {v0, p0}, Lakj;->a(Lakh;)V

    .line 333
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 35
    check-cast p1, Lakh;

    .line 6197
    iget-object v0, p0, Lakh;->o:Lahs;

    invoke-virtual {v0}, Lahs;->ordinal()I

    move-result v0

    .line 7197
    iget-object v1, p1, Lakh;->o:Lahs;

    invoke-virtual {v1}, Lahs;->ordinal()I

    move-result v1

    .line 6189
    sub-int/2addr v0, v1

    .line 6190
    if-nez v0, :cond_0

    .line 6191
    iget v0, p0, Lakh;->r:I

    iget v1, p1, Lakh;->r:I

    sub-int/2addr v0, v1

    .line 35
    :cond_0
    return v0
.end method

.method public i_()Lawa;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lakh;->j:Lawa;

    return-object v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 214
    :try_start_0
    iget-boolean v0, p0, Lakh;->C:Z

    if-eqz v0, :cond_1

    .line 215
    invoke-direct {p0}, Lakh;->i()V

    .line 3247
    :cond_0
    :goto_0
    return-void

    .line 3236
    :cond_1
    sget-object v0, Laki;->a:[I

    iget-object v1, p0, Lakh;->t:Lakn;

    invoke-virtual {v1}, Lakn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3249
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lakh;->t:Lakn;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognized run reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string v1, "DecodeJob"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    const-string v1, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lakh;->C:Z

    iget-object v3, p0, Lakh;->s:Lako;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xe

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_2
    iget-object v1, p0, Lakh;->s:Lako;

    sget-object v2, Lako;->e:Lako;

    if-eq v1, v2, :cond_3

    .line 227
    invoke-direct {p0}, Lakh;->i()V

    .line 229
    :cond_3
    iget-boolean v1, p0, Lakh;->C:Z

    if-nez v1, :cond_0

    .line 230
    throw v0

    .line 3238
    :pswitch_0
    :try_start_1
    sget-object v0, Lako;->a:Lako;

    invoke-direct {p0, v0}, Lakh;->a(Lako;)Lako;

    move-result-object v0

    iput-object v0, p0, Lakh;->s:Lako;

    .line 3239
    invoke-direct {p0}, Lakh;->g()Lake;

    move-result-object v0

    iput-object v0, p0, Lakh;->A:Lake;

    .line 3240
    invoke-direct {p0}, Lakh;->h()V

    goto/16 :goto_0

    .line 3243
    :pswitch_1
    invoke-direct {p0}, Lakh;->h()V

    goto/16 :goto_0

    .line 3246
    :pswitch_2
    invoke-direct {p0}, Lakh;->k()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
