.class public final Lcgw;
.super Leap;
.source "SourceFile"


# static fields
.field private static final J:[I

.field private static final K:[I

.field private static final c:Z


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private final G:Ljava/util/Random;

.field private H:Llbz;

.field private I:I

.field private final L:Lcyx;

.field private final M:Lcji;

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:Lhkt;

.field private final Q:Ljava/lang/Runnable;

.field private final R:Ljava/lang/Runnable;

.field private final S:Ljava/lang/Runnable;

.field private final T:Ljava/lang/Runnable;

.field public final a:Lcfc;

.field b:Z

.field private final d:Z

.field private e:Z

.field private f:I

.field private final g:Landroid/os/Handler;

.field private final h:Lcgs;

.field private i:Lcgs;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:I

.field private final m:I

.field private final n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcii;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Z

.field private final u:Lezf;

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 118
    sget-object v0, Lezi;->g:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcgw;->c:Z

    .line 175
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcgw;->J:[I

    .line 177
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcgw;->K:[I

    return-void

    .line 175
    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    .line 177
    :array_1
    .array-data 4
        0x1
        0x3
    .end array-data
.end method

.method constructor <init>(Lcgs;ZLjava/util/List;ZLcyx;IIZJLlbz;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcgs;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;Z",
            "Lcyx;",
            "IIZJ",
            "Llbz;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0}, Leap;-><init>()V

    .line 116
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v2

    iput-object v2, p0, Lcgw;->a:Lcfc;

    .line 121
    const/4 v2, -0x1

    iput v2, p0, Lcgw;->f:I

    .line 122
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcgw;->g:Landroid/os/Handler;

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcgw;->s:Ljava/util/ArrayList;

    .line 153
    const/4 v2, 0x0

    iput v2, p0, Lcgw;->C:I

    .line 158
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lcgw;->G:Ljava/util/Random;

    .line 168
    const/4 v2, 0x0

    iput v2, p0, Lcgw;->I:I

    .line 186
    new-instance v2, Lcgx;

    invoke-direct {v2, p0}, Lcgx;-><init>(Lcgw;)V

    iput-object v2, p0, Lcgw;->Q:Ljava/lang/Runnable;

    .line 195
    new-instance v2, Lcgy;

    invoke-direct {v2, p0}, Lcgy;-><init>(Lcgw;)V

    iput-object v2, p0, Lcgw;->R:Ljava/lang/Runnable;

    .line 204
    new-instance v2, Lcgz;

    invoke-direct {v2, p0}, Lcgz;-><init>(Lcgw;)V

    iput-object v2, p0, Lcgw;->S:Ljava/lang/Runnable;

    .line 214
    new-instance v2, Lcha;

    invoke-direct {v2, p0}, Lcha;-><init>(Lcgw;)V

    iput-object v2, p0, Lcgw;->T:Ljava/lang/Runnable;

    .line 236
    invoke-virtual {p1}, Lcgs;->r()Lcgs;

    move-result-object v2

    iput-object v2, p0, Lcgw;->h:Lcgs;

    .line 237
    iput-object p1, p0, Lcgw;->i:Lcgs;

    .line 238
    iput p6, p0, Lcgw;->l:I

    .line 239
    move/from16 v0, p7

    iput v0, p0, Lcgw;->m:I

    .line 240
    iput-boolean p2, p0, Lcgw;->d:Z

    .line 241
    move/from16 v0, p8

    iput-boolean v0, p0, Lcgw;->n:Z

    .line 242
    iput-boolean p4, p0, Lcgw;->t:Z

    .line 244
    if-nez p11, :cond_1

    .line 245
    new-instance v2, Llbz;

    invoke-direct {v2}, Llbz;-><init>()V

    iput-object v2, p0, Lcgw;->H:Llbz;

    .line 249
    :goto_0
    move-object/from16 v0, p12

    iput-object v0, p0, Lcgw;->k:Ljava/lang/String;

    .line 251
    iput-object p5, p0, Lcgw;->L:Lcyx;

    .line 252
    new-instance v2, Lcji;

    invoke-direct {v2, p0, p5}, Lcji;-><init>(Lcgw;Lcyx;)V

    iput-object v2, p0, Lcgw;->M:Lcji;

    .line 253
    const-string v2, ""

    iput-object v2, p0, Lcgw;->N:Ljava/lang/String;

    .line 254
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    move v3, v2

    .line 255
    :goto_1
    if-eqz v3, :cond_0

    .line 2144
    const-string v2, "Expected condition to be false"

    invoke-static {v2, p4}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 259
    new-instance v2, Lcii;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4, p3}, Lcii;-><init>(Lcgw;ZLjava/util/List;)V

    .line 260
    iget-object v4, p0, Lcgw;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v2, p0, Lcgw;->M:Lcji;

    invoke-virtual {v2, p3}, Lcji;->a(Ljava/util/List;)V

    .line 265
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcgw;->b:Z

    .line 267
    invoke-virtual {p1}, Lcgs;->l()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    .line 266
    :goto_2
    invoke-direct {p0, v2}, Lcgw;->c(Z)V

    .line 269
    new-instance v2, Lhlo;

    invoke-direct {v2}, Lhlo;-><init>()V

    invoke-static {}, Lhlo;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcgw;->j:Ljava/lang/String;

    .line 270
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcgw;->O:Z

    .line 272
    const-string v2, "type_null"

    .line 273
    packed-switch p7, :pswitch_data_0

    .line 288
    const-string v4, "Babel"

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x4d

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "HangoutState initialized with a CallType outside the known range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :goto_3
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x12

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "source_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 3036
    sget-object v5, Laal;->oJ:Landroid/content/Context;

    .line 297
    if-eqz v3, :cond_5

    sget-object v2, Lcgw;->K:[I

    .line 3070
    :goto_4
    const-string v3, "Babel_CallMarkReporter"

    const-string v6, "Creating startup reporter"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3071
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3072
    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3074
    new-instance v4, Lezf;

    invoke-direct {v4, v5, v2, v3}, Lezf;-><init>(Landroid/content/Context;[ILjava/util/ArrayList;)V

    .line 296
    iput-object v4, p0, Lcgw;->u:Lezf;

    .line 298
    iget-object v2, p0, Lcgw;->u:Lezf;

    const/4 v3, 0x1

    move-wide/from16 v0, p9

    invoke-virtual {v2, v3, v0, v1}, Lezf;->a(IJ)V

    .line 299
    return-void

    .line 247
    :cond_1
    move-object/from16 v0, p11

    iput-object v0, p0, Lcgw;->H:Llbz;

    goto/16 :goto_0

    .line 254
    :cond_2
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1

    .line 267
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 275
    :pswitch_0
    const-string v2, "type_video"

    goto :goto_3

    .line 278
    :pswitch_1
    const-string v2, "type_audio"

    goto :goto_3

    .line 282
    :pswitch_2
    iget-boolean v2, p0, Lcgw;->n:Z

    if-eqz v2, :cond_4

    const-string v2, "type_pstn"

    goto :goto_3

    :cond_4
    const-string v2, "type_tycho"

    goto :goto_3

    .line 285
    :pswitch_3
    const-string v2, "type_unk"

    goto :goto_3

    .line 297
    :cond_5
    sget-object v2, Lcgw;->J:[I

    goto :goto_4

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static D()J
    .locals 4

    .prologue
    .line 21036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 937
    const-string v1, "babel_hangout_outgoing_invite_max_duration_ms"

    const-wide/16 v2, 0x7530

    .line 936
    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final E()J
    .locals 4

    .prologue
    .line 22036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 944
    const-string v1, "babel_hangout_enter_step_timeout"

    const-wide/16 v2, 0x2ee0

    .line 943
    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static L()I
    .locals 3

    .prologue
    .line 33036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1260
    const-string v1, "babel_dtmf_code_duration_ms"

    const/16 v2, 0x15e

    .line 1259
    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private Z()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcii;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcgw;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private aa()Lcii;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 561
    iget-object v0, p0, Lcgw;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcgw;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcii;

    invoke-virtual {v0}, Lcii;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    :cond_0
    const/4 v0, 0x0

    .line 563
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcgw;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcii;

    goto :goto_0
.end method

.method private ab()V
    .locals 3

    .prologue
    .line 856
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v0}, Lcgs;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcgw;->i:Lcgs;

    .line 857
    invoke-virtual {v0}, Lcgs;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcgw;->i:Lcgs;

    .line 858
    invoke-virtual {v0}, Lcgs;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcgw;->i:Lcgs;

    .line 859
    invoke-virtual {v0}, Lcgs;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcgw;->i:Lcgs;

    .line 860
    invoke-virtual {v0}, Lcgs;->k()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 861
    :cond_0
    iget-object v0, p0, Lcgw;->P:Lhkt;

    iget-object v1, p0, Lcgw;->i:Lcgs;

    .line 862
    invoke-virtual {v1}, Lcgs;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkt;->g(Ljava/lang/String;)Lhkt;

    move-result-object v0

    iget-object v1, p0, Lcgw;->i:Lcgs;

    .line 863
    invoke-virtual {v1}, Lcgs;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkt;->f(Ljava/lang/String;)Lhkt;

    move-result-object v0

    iget-object v1, p0, Lcgw;->i:Lcgs;

    .line 864
    invoke-virtual {v1}, Lcgs;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkt;->h(Ljava/lang/String;)Lhkt;

    move-result-object v0

    iget-object v1, p0, Lcgw;->i:Lcgs;

    .line 865
    invoke-virtual {v1}, Lcgs;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkt;->i(Ljava/lang/String;)Lhkt;

    move-result-object v0

    iget-object v1, p0, Lcgw;->i:Lcgs;

    .line 866
    invoke-virtual {v1}, Lcgs;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkt;->d(Ljava/lang/String;)Lhkt;

    move-result-object v0

    iget-object v1, p0, Lcgw;->i:Lcgs;

    .line 867
    invoke-virtual {v1}, Lcgs;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkt;->e(Ljava/lang/String;)Lhkt;

    move-result-object v0

    iget-object v1, p0, Lcgw;->i:Lcgs;

    .line 868
    invoke-virtual {v1}, Lcgs;->k()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkt;->a(Landroid/net/Uri;)Lhkt;

    .line 873
    :goto_0
    iget-boolean v0, p0, Lcgw;->n:Z

    if-eqz v0, :cond_1

    .line 874
    iget-object v0, p0, Lcgw;->P:Lhkt;

    new-instance v1, Lcgr;

    .line 20036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 875
    invoke-direct {v1, v2, p0}, Lcgr;-><init>(Landroid/content/Context;Lcgw;)V

    invoke-virtual {v1}, Lcgr;->a()Landroid/app/Notification;

    move-result-object v1

    .line 874
    invoke-virtual {v0, v1}, Lhkt;->a(Landroid/app/Notification;)Lhkt;

    .line 877
    :cond_1
    iget-object v0, p0, Lcgw;->a:Lcfc;

    iget-object v1, p0, Lcgw;->P:Lhkt;

    invoke-virtual {v0, v1}, Lcfc;->b(Lhkt;)V

    .line 878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcgw;->A:Z

    .line 879
    return-void

    .line 870
    :cond_2
    iget-object v0, p0, Lcgw;->P:Lhkt;

    iget-object v1, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v1}, Lcgs;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkt;->c(Ljava/lang/String;)Lhkt;

    goto :goto_0
.end method

.method private ac()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1022
    iget-boolean v0, p0, Lcgw;->x:Z

    if-nez v0, :cond_0

    .line 1023
    iput-boolean v1, p0, Lcgw;->x:Z

    .line 1024
    iget-object v0, p0, Lcgw;->u:Lezf;

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x8

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lezf;->a([I)V

    .line 1026
    :cond_0
    return-void
.end method

.method private ad()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1195
    invoke-virtual {p0}, Lcgw;->q()Lhcs;

    move-result-object v1

    .line 1196
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lhcs;->l()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1229
    :cond_0
    return-void

    .line 1205
    :cond_1
    invoke-virtual {v1}, Lhcs;->l()Ljava/util/Collection;

    move-result-object v1

    .line 1206
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhil;

    .line 1207
    instance-of v4, v0, Lhir;

    if-eqz v4, :cond_3

    .line 1208
    or-int/lit8 v2, v2, 0x1

    .line 1212
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lhil;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1213
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 1215
    goto :goto_0

    .line 1209
    :cond_3
    instance-of v4, v0, Lhip;

    if-eqz v4, :cond_2

    .line 1210
    or-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 1218
    :cond_4
    const/4 v0, 0x1

    if-le v1, v0, :cond_5

    .line 1219
    invoke-virtual {p0}, Lcgw;->x()V

    .line 1223
    :cond_5
    iget v0, p0, Lcgw;->I:I

    if-eq v0, v2, :cond_0

    .line 1224
    iput v2, p0, Lcgw;->I:I

    .line 1225
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhku;

    .line 1226
    invoke-virtual {v0, v2}, Lhku;->b(I)V

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private b(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1336
    iget v0, p0, Lcgw;->C:I

    if-nez v0, :cond_0

    .line 1337
    iput p1, p0, Lcgw;->C:I

    .line 1338
    iput-object p2, p0, Lcgw;->D:Ljava/lang/String;

    .line 1340
    :cond_0
    return-void
.end method

.method private c(Z)V
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcgw;->b:Z

    if-eq v0, p1, :cond_0

    .line 618
    iput-boolean p1, p0, Lcgw;->b:Z

    .line 619
    iget-object v0, p0, Lcgw;->T:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 621
    :cond_0
    return-void
.end method

.method private d(Z)Ljug;
    .locals 4

    .prologue
    .line 19036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 840
    const-class v1, Lcjq;

    invoke-static {v0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 841
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 842
    const-string v0, "account_id"

    invoke-virtual {p0}, Lcgw;->l()Lbfd;

    move-result-object v3

    invoke-virtual {v3}, Lbfd;->g()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 843
    const-string v0, "enable_one_rpc"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 844
    const-string v3, "is_pstn_only"

    iget-boolean v0, p0, Lcgw;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 845
    new-instance v0, Ljug;

    invoke-direct {v0}, Ljug;-><init>()V

    .line 846
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjq;

    .line 847
    invoke-interface {v0, v1, v2}, Lcjq;->a(Ljug;Landroid/os/Bundle;)Ljug;

    move-result-object v0

    move-object v1, v0

    .line 848
    goto :goto_1

    .line 844
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 849
    :cond_1
    return-object v1
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 684
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    .line 685
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v0, p1}, Lcgs;->a(Ljava/lang/String;)V

    .line 686
    invoke-direct {p0}, Lcgw;->ab()V

    .line 687
    return-void
.end method


# virtual methods
.method A()Z
    .locals 2

    .prologue
    .line 902
    invoke-virtual {p0}, Lcgw;->q()Lhcs;

    move-result-object v0

    .line 903
    iget-object v1, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v1}, Lcfc;->d()Lhkx;

    move-result-object v1

    .line 905
    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {v0}, Lhcs;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 908
    invoke-virtual {v1}, Lhkx;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method B()V
    .locals 1

    .prologue
    .line 912
    invoke-direct {p0}, Lcgw;->aa()Lcii;

    move-result-object v0

    invoke-virtual {v0}, Lcii;->e()V

    .line 913
    return-void
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcgw;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 959
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 960
    iget-object v0, p0, Lcgw;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcii;

    .line 961
    invoke-virtual {v0}, Lcii;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 963
    :cond_0
    return-object v1
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 971
    iget-boolean v0, p0, Lcgw;->t:Z

    return v0
.end method

.method public H()I
    .locals 1

    .prologue
    .line 975
    iget v0, p0, Lcgw;->v:I

    return v0
.end method

.method I()V
    .locals 2

    .prologue
    .line 1015
    invoke-direct {p0}, Lcgw;->Z()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcii;

    .line 1016
    invoke-virtual {v0}, Lcii;->h()V

    goto :goto_0

    .line 1018
    :cond_0
    invoke-direct {p0}, Lcgw;->ac()V

    .line 1019
    return-void
.end method

.method public J()I
    .locals 1

    .prologue
    .line 1187
    iget v0, p0, Lcgw;->I:I

    return v0
.end method

.method public K()Z
    .locals 1

    .prologue
    .line 1232
    iget-boolean v0, p0, Lcgw;->b:Z

    return v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcgw;->N:Ljava/lang/String;

    return-object v0
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 1270
    iget-boolean v0, p0, Lcgw;->B:Z

    return v0
.end method

.method public O()I
    .locals 2

    .prologue
    .line 1325
    iget v0, p0, Lcgw;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1326
    iget v0, p0, Lcgw;->C:I

    return v0
.end method

.method P()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1331
    iget v0, p0, Lcgw;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1332
    iget-object v0, p0, Lcgw;->D:Ljava/lang/String;

    return-object v0
.end method

.method public Q()Z
    .locals 1

    .prologue
    .line 1343
    iget-boolean v0, p0, Lcgw;->F:Z

    return v0
.end method

.method public R()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcgw;->E:Ljava/lang/String;

    return-object v0
.end method

.method public S()Lcyx;
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Lcgw;->L:Lcyx;

    return-object v0
.end method

.method public T()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lchb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1439
    iget-object v0, p0, Lcgw;->M:Lcji;

    invoke-virtual {v0}, Lcji;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method U()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcgw;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public a(C)V
    .locals 5

    .prologue
    .line 1244
    invoke-virtual {p0}, Lcgw;->q()Lhcs;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1245
    invoke-virtual {p0}, Lcgw;->q()Lhcs;

    move-result-object v0

    invoke-virtual {v0}, Lhcs;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhil;

    .line 1246
    instance-of v2, v0, Lhir;

    if-eqz v2, :cond_0

    .line 1247
    sget-boolean v2, Lcgw;->c:Z

    if-eqz v2, :cond_1

    .line 1248
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "HangoutState - sending dtmf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    :cond_1
    invoke-static {}, Lhgd;->a()Lhgd;

    move-result-object v2

    .line 1251
    invoke-static {}, Lcgw;->L()I

    move-result v3

    invoke-virtual {v0}, Lhil;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v0}, Lhgd;->a(CILjava/lang/String;)V

    goto :goto_0

    .line 1254
    :cond_2
    iget-object v0, p0, Lcgw;->N:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgw;->N:Ljava/lang/String;

    .line 1256
    :cond_3
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 1191
    iput p1, p0, Lcgw;->I:I

    .line 1192
    return-void
.end method

.method public a(ILbfd;Leff;Ldvn;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 657
    iget v0, p0, Lcgw;->z:I

    if-ne p1, v0, :cond_0

    .line 658
    const-string v0, "Babel"

    const-string v1, "Create hangout id request failed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    iput v3, p0, Lcgw;->z:I

    .line 660
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcgw;->d(Ljava/lang/String;)V

    .line 662
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1348
    const-string v0, "allow_on_air"

    .line 33483
    iget-boolean v1, p0, Lcgw;->d:Z

    .line 1348
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const-string v1, "broadcast_session_state"

    .line 1350
    invoke-virtual {p0}, Lcgw;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "STARTED"

    .line 1349
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    const-string v1, "broadcast_use_case"

    .line 33495
    iget v0, p0, Lcgw;->f:I

    packed-switch v0, :pswitch_data_0

    .line 33504
    :pswitch_0
    const-string v0, ""

    .line 1351
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const-string v0, "connected_remote_endpoint_count"

    .line 1353
    invoke-virtual {p0}, Lcgw;->H()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1352
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const-string v0, "is_audio_only_mode"

    invoke-virtual {p0}, Lcgw;->K()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const-string v0, "is_awaiting"

    invoke-virtual {p0}, Lcgw;->C()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    const-string v0, "is_broadcast"

    .line 34434
    iget-boolean v1, p0, Lcgw;->o:Z

    .line 1356
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string v0, "is_exiting"

    invoke-virtual {p0}, Lcgw;->N()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const-string v0, "is_initial_outgoing_invite_pending"

    .line 1359
    invoke-virtual {p0}, Lcgw;->u()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 1358
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const-string v0, "is_recordable"

    .line 34461
    iget-boolean v1, p0, Lcgw;->q:Z

    .line 1360
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string v0, "is_recording"

    invoke-virtual {p0}, Lcgw;->p()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const-string v0, "local_session_id"

    invoke-virtual {p0}, Lcgw;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const-string v0, "participant_composition"

    .line 1364
    invoke-virtual {p0}, Lcgw;->J()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1363
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const-string v0, "should_upload_log"

    invoke-virtual {p0}, Lcgw;->Q()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    return-void

    .line 1350
    :cond_0
    const-string v0, "STOPPED"

    goto/16 :goto_0

    .line 33497
    :pswitch_1
    const-string v0, "HANGOUTS_ON_AIR"

    goto/16 :goto_1

    .line 33499
    :pswitch_2
    const-string v0, "ENTERPRISE_RECORDING"

    goto/16 :goto_1

    .line 33501
    :pswitch_3
    const-string v0, "CONSUMER_RECORDING"

    goto/16 :goto_1

    .line 33495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method a(Lhcs;)V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Lcgw;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcgw;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 884
    if-eqz p1, :cond_0

    .line 885
    invoke-virtual {p1}, Lhcs;->p()I

    move-result v0

    invoke-virtual {p1}, Lhcs;->q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcgw;->b(ILjava/lang/String;)V

    .line 891
    :goto_0
    iget-object v0, p0, Lcgw;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcii;

    .line 892
    invoke-virtual {v0}, Lcii;->g()V

    goto :goto_1

    .line 888
    :cond_0
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcgw;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 894
    :cond_1
    iget-object v0, p0, Lcgw;->M:Lcji;

    invoke-virtual {v0}, Lcji;->d()V

    .line 895
    return-void
.end method

.method a(Lhil;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 980
    invoke-virtual {p1}, Lhil;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lhil;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 22144
    :goto_0
    const-string v3, "Expected condition to be false"

    invoke-static {v3, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 982
    iget v0, p0, Lcgw;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcgw;->v:I

    .line 983
    iget-boolean v0, p0, Lcgw;->w:Z

    if-nez v0, :cond_1

    .line 984
    iput-boolean v2, p0, Lcgw;->w:Z

    .line 985
    iget-object v0, p0, Lcgw;->u:Lezf;

    new-array v2, v2, [I

    const/16 v3, 0x9

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Lezf;->a([I)V

    .line 987
    :cond_1
    invoke-direct {p0}, Lcgw;->Z()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcii;

    .line 988
    invoke-virtual {v0, p1}, Lcii;->b(Lhil;)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 980
    goto :goto_0

    .line 990
    :cond_3
    iget-object v0, p0, Lcgw;->M:Lcji;

    invoke-virtual {v0, p1}, Lcji;->a(Lhil;)V

    .line 991
    invoke-direct {p0}, Lcgw;->ad()V

    .line 992
    return-void
.end method

.method a(Lhil;Ljava/lang/Integer;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1029
    invoke-virtual {p1}, Lhil;->k()Z

    move-result v0

    .line 23144
    const-string v3, "Expected condition to be false"

    invoke-static {v3, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 1033
    invoke-virtual {p1}, Lhil;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v2

    .line 24927
    :goto_0
    iget-object v0, p0, Lcgw;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcii;

    .line 24928
    invoke-virtual {v0, p1}, Lcii;->a(Lhil;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v1

    .line 1041
    :goto_1
    iget-object v0, p0, Lcgw;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 1044
    iget v0, p0, Lcgw;->v:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcgw;->o:Z

    if-nez v0, :cond_1

    .line 25088
    instance-of v0, p1, Lhir;

    if-eqz v0, :cond_9

    .line 26043
    invoke-static {p2, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 25089
    const/4 v3, 0x7

    if-ne v0, v3, :cond_9

    .line 25091
    const/16 v0, 0x3f6

    .line 1046
    :goto_2
    invoke-virtual {p0, v0}, Lcgw;->b(I)V

    move v3, v2

    .line 1054
    :cond_1
    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcgw;->n:Z

    if-eqz v0, :cond_2

    .line 1055
    sget v0, Laal;->hJ:I

    invoke-static {v0}, Lezc;->a(I)V

    .line 1057
    :cond_2
    iget-object v0, p0, Lcgw;->M:Lcji;

    invoke-virtual {v0, p1}, Lcji;->b(Lhil;)V

    .line 1058
    invoke-direct {p0}, Lcgw;->ad()V

    .line 1061
    if-eqz p2, :cond_5

    if-eqz v4, :cond_5

    .line 1062
    instance-of v0, p1, Lhir;

    if-eqz v0, :cond_5

    .line 1063
    check-cast p1, Lhir;

    .line 27043
    invoke-static {p2, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 1067
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v2

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhku;

    .line 1068
    invoke-virtual {v0, v3}, Lhku;->c(I)Z

    move-result v0

    .line 1069
    if-eqz v0, :cond_3

    .line 1074
    :cond_4
    if-nez v0, :cond_5

    .line 28036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 27105
    packed-switch v3, :pswitch_data_0

    .line 27114
    :cond_5
    :goto_3
    :pswitch_0
    return-void

    .line 1036
    :cond_6
    iget v0, p0, Lcgw;->v:I

    if-lez v0, :cond_7

    move v0, v1

    .line 24134
    :goto_4
    const-string v3, "Expected condition to be true"

    invoke-static {v3, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 1037
    iget v0, p0, Lcgw;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcgw;->v:I

    move v3, v1

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 1036
    goto :goto_4

    :cond_8
    move v4, v2

    .line 24932
    goto :goto_1

    .line 25093
    :cond_9
    const/16 v0, 0x3ed

    goto :goto_2

    .line 1049
    :cond_a
    invoke-direct {p0}, Lcgw;->Z()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcii;

    .line 1050
    invoke-virtual {v0, p1, p2}, Lcii;->a(Lhil;Ljava/lang/Integer;)V

    goto :goto_5

    .line 27107
    :pswitch_1
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->da:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 27109
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 27112
    :pswitch_2
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->cY:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 27113
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 27116
    :pswitch_3
    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->cZ:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 27118
    invoke-virtual {p1}, Lhir;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 27117
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 27119
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 27105
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v0, p1}, Lcgs;->d(Ljava/lang/String;)Lcgs;

    move-result-object v0

    iput-object v0, p0, Lcgw;->i:Lcgs;

    .line 391
    sget-boolean v0, Lcgw;->c:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Updated to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;C)V
    .locals 3

    .prologue
    .line 1236
    sget-boolean v0, Lcgw;->c:Z

    if-eqz v0, :cond_0

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "HangoutState - sending dtmf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    :cond_0
    invoke-static {}, Lhgd;->a()Lhgd;

    move-result-object v0

    invoke-static {}, Lcgw;->L()I

    move-result v1

    invoke-virtual {v0, p2, v1, p1}, Lhgd;->a(CILjava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcgw;->N:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgw;->N:Ljava/lang/String;

    .line 1241
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcgw;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcgw;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 627
    iget-boolean v0, p0, Lcgw;->B:Z

    if-nez v0, :cond_1

    .line 11667
    iget-boolean v0, p0, Lcgw;->B:Z

    .line 12144
    const-string v1, "Expected condition to be false"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 11669
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v0}, Lcgs;->d()Ljava/lang/String;

    move-result-object v0

    .line 11670
    const-string v1, "conversation"

    iget-object v2, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v2}, Lcgs;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11671
    invoke-static {v0}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11673
    :cond_0
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v0}, Lcgs;->p()Z

    move-result v0

    .line 13134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 11674
    :cond_1
    :goto_0
    return-void

    .line 11677
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11678
    invoke-direct {p0, p2}, Lcgw;->g(Ljava/lang/String;)V

    .line 11679
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->x()V

    goto :goto_0
.end method

.method a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 916
    new-instance v0, Lcii;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcii;-><init>(Lcgw;ZLjava/util/List;)V

    .line 917
    iget-object v1, p0, Lcgw;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    invoke-virtual {v0}, Lcii;->e()V

    .line 919
    iget-object v0, p0, Lcgw;->M:Lcji;

    invoke-virtual {v0, p1}, Lcji;->a(Ljava/util/List;)V

    .line 920
    return-void
.end method

.method public a(Lkgd;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1129
    iget-object v2, p1, Lkgd;->m:Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 1130
    if-nez v2, :cond_6

    .line 1131
    iget-object v3, p1, Lkgd;->k:Lkgh;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lkgd;->k:Lkgh;

    iget-object v3, v3, Lkgh;->a:Ljava/lang/Integer;

    if-nez v3, :cond_2

    .line 1132
    :cond_0
    const-string v0, "Babel"

    const-string v2, "No live stream status, ignore the update."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    :cond_1
    :goto_0
    return-void

    .line 1135
    :cond_2
    iget-object v3, p1, Lkgd;->k:Lkgh;

    iget-object v3, v3, Lkgh;->a:Ljava/lang/Integer;

    .line 28043
    invoke-static {v3, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 1136
    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1148
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcgw;->e:Z

    iget v4, p0, Lcgw;->f:I

    .line 1149
    invoke-virtual {p0, v3, v4}, Lcgw;->a(ZI)Z

    move-result v3

    .line 1150
    invoke-virtual {p0, v0, v2}, Lcgw;->a(ZI)Z

    move-result v4

    .line 1152
    iput-boolean v0, p0, Lcgw;->e:Z

    .line 1153
    iput v2, p0, Lcgw;->f:I

    .line 1155
    if-eq v3, v4, :cond_4

    .line 1158
    invoke-virtual {p0}, Lcgw;->p()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 1160
    if-eqz v4, :cond_9

    .line 1163
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->ev:I

    .line 1161
    :goto_2
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32036
    :goto_3
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 1174
    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 32408
    :cond_4
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhku;

    .line 32409
    invoke-virtual {v0}, Lhku;->a()V

    goto :goto_4

    :cond_5
    move v0, v1

    .line 1136
    goto :goto_1

    .line 1139
    :cond_6
    iget-object v3, p1, Lkgd;->l:Lkgj;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lkgd;->l:Lkgj;

    iget-object v3, v3, Lkgj;->a:Ljava/lang/Integer;

    if-nez v3, :cond_8

    .line 1140
    :cond_7
    const-string v0, "Babel"

    const-string v2, "No recording status, ignore the update."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1143
    :cond_8
    iget-object v3, p1, Lkgd;->l:Lkgj;

    iget-object v3, v3, Lkgj;->a:Ljava/lang/Integer;

    .line 29043
    invoke-static {v3, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 1144
    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    move v0, v1

    goto :goto_1

    .line 1164
    :cond_9
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->ee:I

    goto :goto_2

    .line 31036
    :cond_a
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 1167
    if-eqz v4, :cond_b

    .line 1170
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->ep:I

    .line 1168
    :goto_5
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1171
    :cond_b
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->eq:I

    goto :goto_5
.end method

.method public a(Lklh;)V
    .locals 3

    .prologue
    .line 35036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1371
    const-class v1, Lawm;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawm;

    .line 1372
    invoke-virtual {p0}, Lcgw;->l()Lbfd;

    move-result-object v1

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawm;->e(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lklh;->a:Ljava/lang/String;

    .line 1374
    invoke-virtual {p0}, Lcgw;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lklh;->k:Ljava/lang/String;

    .line 1376
    iget-object v0, p0, Lcgw;->i:Lcgs;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v0}, Lcgs;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lklh;->c:Ljava/lang/String;

    .line 1378
    new-instance v0, Lkmd;

    invoke-direct {v0}, Lkmd;-><init>()V

    iput-object v0, p1, Lklh;->f:Lkmd;

    .line 1379
    iget-object v0, p1, Lklh;->f:Lkmd;

    iget-object v1, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v1}, Lcgs;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkmd;->a:Ljava/lang/String;

    .line 1381
    :cond_0
    iget-object v0, p0, Lcgw;->k:Ljava/lang/String;

    .line 1382
    invoke-virtual {p0}, Lcgw;->q()Lhcs;

    move-result-object v1

    .line 1383
    if-eqz v1, :cond_1

    .line 1384
    invoke-virtual {v1}, Lhcs;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lklh;->b:Ljava/lang/String;

    .line 1385
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1386
    invoke-virtual {v1}, Lhcs;->i()Ljava/lang/String;

    move-result-object v0

    .line 1389
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1390
    iput-object v0, p1, Lklh;->e:Ljava/lang/String;

    .line 1392
    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 404
    iput-boolean p1, p0, Lcgw;->r:Z

    .line 405
    return-void
.end method

.method public a(Lcom/google/android/apps/hangouts/hangout/HangoutActivity;)Z
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p1}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->m()Lcgs;

    move-result-object v0

    .line 373
    invoke-virtual {p1}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    iget-object v1, p0, Lcgw;->h:Lcgs;

    invoke-virtual {v1, v0}, Lcgs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcgw;->i:Lcgs;

    .line 379
    invoke-virtual {v1, v0}, Lcgs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    .line 379
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 385
    :cond_2
    iget-object v1, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v1, v0}, Lcgs;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(ZI)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 415
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 6461
    iget-boolean v0, p0, Lcgw;->q:Z

    .line 416
    if-nez v0, :cond_0

    .line 6483
    iget-boolean v0, p0, Lcgw;->d:Z

    .line 416
    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 424
    :goto_0
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    :goto_1
    return v2

    :cond_1
    move v0, v1

    .line 416
    goto :goto_0

    .line 418
    :cond_2
    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v2, v1

    .line 424
    goto :goto_1
.end method

.method public b(I)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1274
    const-string v0, "Babel"

    const-string v3, "HangoutState exiting due to reason %d; exiting: %s; callJoined: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-boolean v5, p0, Lcgw;->B:Z

    .line 1279
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    iget-boolean v6, p0, Lcgw;->A:Z

    .line 1280
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1276
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 1274
    invoke-static {v0, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1281
    iget-boolean v0, p0, Lcgw;->B:Z

    if-eqz v0, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    iput-boolean v1, p0, Lcgw;->B:Z

    .line 1285
    iput-boolean v2, p0, Lcgw;->O:Z

    .line 1286
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcgw;->b(ILjava/lang/String;)V

    .line 1288
    iget-object v0, p0, Lcgw;->u:Lezf;

    invoke-virtual {v0}, Lezf;->a()V

    .line 1289
    iget-object v0, p0, Lcgw;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcgw;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1290
    iget-object v0, p0, Lcgw;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcgw;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1291
    iget-object v0, p0, Lcgw;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcgw;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1293
    iput v2, p0, Lcgw;->z:I

    .line 1294
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    .line 1297
    invoke-direct {p0}, Lcgw;->Z()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcii;

    .line 1298
    invoke-virtual {v0}, Lcii;->f()V

    goto :goto_1

    .line 1300
    :cond_2
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhku;

    .line 1301
    invoke-virtual {v0}, Lhku;->e()V

    goto :goto_2

    .line 1304
    :cond_3
    iget-boolean v0, p0, Lcgw;->A:Z

    if-eqz v0, :cond_4

    .line 1305
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0, p1}, Lcfc;->a(I)V

    .line 33321
    :cond_4
    iget v0, p0, Lcgw;->v:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v0}, Lcgs;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 1310
    :goto_3
    if-eqz v0, :cond_5

    .line 1312
    invoke-virtual {p0}, Lcgw;->l()Lbfd;

    move-result-object v0

    iget-object v1, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v1}, Lcgs;->e()Ljava/lang/String;

    move-result-object v1

    .line 1311
    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->i(Lbfd;Ljava/lang/String;)V

    .line 1315
    :cond_5
    iget-boolean v0, p0, Lcgw;->A:Z

    if-nez v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->e()V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 33321
    goto :goto_3
.end method

.method b(Lhil;)V
    .locals 2

    .prologue
    .line 996
    invoke-direct {p0}, Lcgw;->Z()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcii;

    .line 997
    invoke-virtual {v0}, Lcii;->i()V

    goto :goto_0

    .line 1002
    :cond_0
    iget v0, p0, Lcgw;->v:I

    if-nez v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhku;

    .line 1004
    invoke-virtual {v0, p1}, Lhku;->a(Lhil;)V

    goto :goto_1

    .line 1007
    :cond_1
    invoke-direct {p0}, Lcgw;->ac()V

    .line 1008
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v0, p1}, Lcgs;->e(Ljava/lang/String;)Lcgs;

    move-result-object v0

    iput-object v0, p0, Lcgw;->i:Lcgs;

    .line 398
    sget-boolean v0, Lcgw;->c:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Updated to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 455
    iput-boolean p1, p0, Lcgw;->q:Z

    .line 457
    iget-boolean v0, p0, Lcgw;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcgw;->q:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 8134
    :goto_0
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 458
    return-void

    .line 457
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcgw;->p:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public d()Lcgs;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcgw;->h:Lcgs;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v0}, Lcgs;->p()Z

    move-result v0

    .line 14134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 635
    iget v0, p0, Lcgw;->z:I

    if-nez v0, :cond_0

    .line 652
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcgw;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcgw;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 641
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    .line 642
    const/4 v0, 0x0

    iput v0, p0, Lcgw;->z:I

    .line 644
    if-nez p1, :cond_1

    .line 645
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcgw;->b(I)V

    goto :goto_0

    .line 647
    :cond_1
    invoke-virtual {p0, p1}, Lcgw;->a(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->x()V

    .line 650
    invoke-direct {p0}, Lcgw;->ab()V

    goto :goto_0
.end method

.method public e()Lcgs;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcgw;->i:Lcgs;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcgw;->E:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1402
    invoke-static {p1}, Lhgd;->b(Ljava/lang/String;)V

    .line 1403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcgw;->F:Z

    .line 1405
    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 322
    iget-object v0, p0, Lcgw;->h:Lcgs;

    invoke-virtual {v0}, Lcgs;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 325
    const-string v1, "babel_hangout_named_shortlink_base_url"

    const-string v2, "http://g.co/hangouts"

    .line 324
    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcgw;->h:Lcgs;

    invoke-virtual {v1}, Lcgs;->f()Ljava/lang/String;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lcgw;->h:Lcgs;

    invoke-virtual {v2}, Lcgs;->g()Ljava/lang/String;

    move-result-object v2

    .line 330
    const-string v3, "%s/%s/%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    .line 5036
    :cond_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 335
    const-string v1, "babel_hangout_base_url"

    const-string v2, "https://plus.google.com/hangouts"

    .line 334
    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 340
    const-string v2, "babel_hangout_underscore_after_base_url"

    .line 339
    invoke-static {v0, v2, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 343
    iget-object v2, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v2}, Lcgs;->g()Ljava/lang/String;

    move-result-object v2

    .line 6198
    const-string v3, "Expected non-null"

    invoke-static {v3, v2}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    if-eqz v0, :cond_1

    const-string v0, "%s/_/%s"

    .line 346
    :goto_1
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v2, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 345
    :cond_1
    const-string v0, "%s/%s"

    goto :goto_1
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcgw;->u:Lezf;

    invoke-virtual {v0, p1}, Lezf;->a(Ljava/lang/String;)V

    .line 1448
    return-void
.end method

.method g()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcgw;->m:I

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcgw;->r:Z

    return v0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 428
    iput-boolean v0, p0, Lcgw;->o:Z

    .line 430
    iget-boolean v1, p0, Lcgw;->o:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcgw;->q:Z

    if-nez v1, :cond_1

    .line 7134
    :cond_0
    :goto_0
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 431
    return-void

    .line 430
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcgw;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcgw;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcgw;->n:Z

    return v0
.end method

.method public l()Lbfd;
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v0}, Lcgs;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldvd;->a(Ljava/lang/String;Ljava/lang/String;)Lbfd;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcgw;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcgw;->e:Z

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcgw;->f:I

    return v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 509
    iget v0, p0, Lcgw;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8461
    iget-boolean v0, p0, Lcgw;->q:Z

    .line 512
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcgw;->f:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Lhcs;
    .locals 3

    .prologue
    .line 523
    invoke-static {}, Lhgd;->a()Lhgd;

    move-result-object v0

    invoke-virtual {v0}, Lhgd;->b()Lhcs;

    move-result-object v1

    .line 524
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lhcs;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcgw;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 9134
    :goto_0
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 525
    return-object v1

    .line 524
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 529
    iget-object v0, p0, Lcgw;->u:Lezf;

    new-array v1, v5, [I

    const/4 v2, 0x3

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Lezf;->a([I)V

    .line 530
    iput-boolean v4, p0, Lcgw;->F:Z

    .line 533
    iget-object v0, p0, Lcgw;->E:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcgw;->G:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit16 v0, v0, 0x2710

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 10036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 536
    const-string v2, "babel_hangout_upload_rate_2"

    const/16 v3, 0xa

    .line 535
    invoke-static {v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 541
    const-string v0, "Triggering sampled debug log"

    invoke-static {v0}, Lhgd;->b(Ljava/lang/String;)V

    .line 542
    iput-boolean v5, p0, Lcgw;->F:Z

    .line 11036
    :cond_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 545
    const-string v1, "babel_hangout_upload_logs_2"

    .line 544
    invoke-static {v0, v1, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    const-string v0, "Triggering log upload for auto_plugin_log_upload experiment"

    invoke-static {v0}, Lhgd;->b(Ljava/lang/String;)V

    .line 550
    iput-boolean v5, p0, Lcgw;->F:Z

    .line 553
    :cond_1
    return-void
.end method

.method s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcii;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcgw;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    invoke-direct {p0}, Lcgw;->aa()Lcii;

    move-result-object v0

    .line 572
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcii;->b()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public u()Z
    .locals 4

    .prologue
    .line 580
    invoke-direct {p0}, Lcgw;->aa()Lcii;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcii;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method v()V
    .locals 4

    .prologue
    .line 586
    iget-object v0, p0, Lcgw;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcgw;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    iget-object v0, p0, Lcgw;->u:Lezf;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lezf;->a([I)V

    .line 588
    return-void
.end method

.method public w()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 591
    iget-boolean v0, p0, Lcgw;->y:Z

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcgw;->u:Lezf;

    new-array v1, v4, [I

    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lezf;->a([I)V

    .line 593
    iput-boolean v4, p0, Lcgw;->y:Z

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcgw;->x()V

    .line 596
    return-void
.end method

.method public x()V
    .locals 3

    .prologue
    .line 602
    iget-boolean v0, p0, Lcgw;->b:Z

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->j()Lhjz;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Lhjz;->c()Lhke;

    move-result-object v1

    sget-object v2, Lhke;->b:Lhke;

    invoke-virtual {v1, v2}, Lhke;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {v0}, Lhjz;->d()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lhkd;->a:Lhkd;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    sget-object v1, Lhkd;->a:Lhkd;

    invoke-virtual {v0, v1}, Lhjz;->a(Lhkd;)V

    .line 612
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcgw;->c(Z)V

    .line 614
    :cond_1
    return-void
.end method

.method y()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 693
    iget-boolean v0, p0, Lcgw;->O:Z

    .line 14144
    const-string v1, "Expected condition to be false"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 15036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 697
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v0}, Lcgs;->a()Ljava/lang/String;

    move-result-object v5

    .line 698
    const-class v0, Lhpz;

    invoke-static {v4, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 699
    invoke-interface {v0, v5}, Lhpz;->b(Ljava/lang/String;)I

    move-result v1

    .line 700
    const-class v0, Lawm;

    .line 701
    invoke-static {v4, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawm;

    .line 702
    invoke-interface {v0, v1}, Lawm;->e(I)Ljava/lang/String;

    move-result-object v8

    .line 703
    const-string v3, ""

    .line 704
    const-string v0, "babel_hangout_write_logs_2"

    invoke-static {v4, v0, v7}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    invoke-virtual {p0}, Lcgw;->l()Lbfd;

    move-result-object v0

    invoke-static {v0}, Laal;->c(Lbfd;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    invoke-static {v5}, Laal;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15112
    new-instance v2, Ljava/io/File;

    invoke-static {v5}, Laal;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15113
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 15114
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 16097
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Laal;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16098
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 16099
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 721
    :cond_1
    iget-object v2, p0, Lcgw;->i:Lcgs;

    .line 722
    invoke-virtual {v2}, Lcgs;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v9, 0x7

    .line 721
    invoke-static {v2, v3, v9}, Laal;->a(Ljava/lang/String;II)V

    .line 725
    iget-object v2, p0, Lcgw;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".bz2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgw;->E:Ljava/lang/String;

    .line 730
    :cond_2
    iget-boolean v0, p0, Lcgw;->n:Z

    if-eqz v0, :cond_4

    .line 16434
    sget-object v0, Ldvp;->E:Ldml;

    invoke-virtual {v0, v1}, Ldml;->b(I)Z

    move-result v0

    .line 737
    :goto_0
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v2, v6

    .line 738
    const-string v9, "oneRpc"

    if-eqz v0, :cond_7

    const-string v2, "On"

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p0, v2}, Lcgw;->f(Ljava/lang/String;)V

    .line 739
    iget v2, p0, Lcgw;->m:I

    const/4 v9, 0x3

    if-ne v2, v9, :cond_9

    move v2, v7

    .line 741
    :goto_3
    new-instance v9, Lhkt;

    invoke-direct {v9}, Lhkt;-><init>()V

    .line 16781
    new-instance v10, Lmdx;

    invoke-direct {v10}, Lmdx;-><init>()V

    .line 16782
    const/16 v11, 0x197

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v10, Lmdx;->b:Ljava/lang/Integer;

    .line 744
    invoke-virtual {v9, v10}, Lhkt;->a(Lmdx;)Lhkt;

    move-result-object v9

    iget-object v10, p0, Lcgw;->j:Ljava/lang/String;

    .line 745
    invoke-virtual {v9, v10}, Lhkt;->a(Ljava/lang/String;)Lhkt;

    move-result-object v9

    .line 746
    invoke-virtual {v9, v5}, Lhkt;->j(Ljava/lang/String;)Lhkt;

    move-result-object v5

    .line 747
    invoke-static {}, Ldwt;->a()Ldwt;

    move-result-object v9

    invoke-virtual {v9}, Ldwt;->b()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lhkt;->k(Ljava/lang/String;)Lhkt;

    move-result-object v5

    .line 748
    invoke-virtual {v5, v8}, Lhkt;->l(Ljava/lang/String;)Lhkt;

    move-result-object v5

    .line 749
    invoke-direct {p0, v0}, Lcgw;->d(Z)Ljug;

    move-result-object v8

    invoke-virtual {v5, v8}, Lhkt;->a(Ljug;)Lhkt;

    move-result-object v5

    iget-object v8, p0, Lcgw;->E:Ljava/lang/String;

    .line 750
    invoke-virtual {v5, v8}, Lhkt;->m(Ljava/lang/String;)Lhkt;

    move-result-object v5

    iget-object v8, p0, Lcgw;->k:Ljava/lang/String;

    .line 751
    invoke-virtual {v5, v8}, Lhkt;->b(Ljava/lang/String;)Lhkt;

    move-result-object v5

    iget v8, p0, Lcgw;->m:I

    .line 753
    invoke-virtual {v5, v8}, Lhkt;->b(I)Lhkt;

    move-result-object v5

    iget v8, p0, Lcgw;->l:I

    .line 754
    invoke-virtual {v5, v8}, Lhkt;->a(I)Lhkt;

    move-result-object v5

    .line 755
    invoke-virtual {v5, v2}, Lhkt;->a(Z)Lhkt;

    move-result-object v2

    iget-boolean v5, p0, Lcgw;->n:Z

    .line 756
    invoke-virtual {v2, v5}, Lhkt;->b(Z)Lhkt;

    move-result-object v2

    .line 757
    invoke-virtual {p0}, Lcgw;->l()Lbfd;

    move-result-object v5

    invoke-virtual {v5}, Lbfd;->h()Z

    move-result v5

    invoke-virtual {v2, v5}, Lhkt;->c(Z)Lhkt;

    move-result-object v2

    iget-boolean v5, p0, Lcgw;->d:Z

    .line 758
    invoke-virtual {v2, v5}, Lhkt;->d(Z)Lhkt;

    move-result-object v2

    iget-object v5, p0, Lcgw;->H:Llbz;

    .line 759
    invoke-static {v5}, Llbz;->a(Llyi;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lhkt;->a([B)Lhkt;

    move-result-object v2

    .line 17643
    sget-object v5, Ldvp;->W:Ldml;

    invoke-virtual {v5, v1}, Ldml;->b(I)Z

    move-result v5

    .line 760
    invoke-virtual {v2, v5}, Lhkt;->e(Z)Lhkt;

    move-result-object v2

    iput-object v2, p0, Lcgw;->P:Lhkt;

    .line 762
    iget-object v2, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v2}, Lcgs;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v2}, Lcgs;->q()Z

    move-result v2

    if-nez v2, :cond_3

    .line 763
    iget-object v2, p0, Lcgw;->P:Lhkt;

    iget-object v5, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v5}, Lcgs;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lhkt;->c(Ljava/lang/String;)Lhkt;

    .line 768
    :cond_3
    iget-object v2, p0, Lcgw;->a:Lcfc;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcgw;->P:Lhkt;

    :goto_4
    invoke-virtual {v2, v0}, Lcfc;->a(Lhkt;)V

    .line 770
    const-class v0, Lekh;

    invoke-static {v4, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekh;

    iget-object v2, p0, Lcgw;->j:Ljava/lang/String;

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lekh;->a(ILjava/lang/String;Ljava/lang/String;J)V

    .line 774
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0, v6}, Lcfc;->a(Z)V

    .line 775
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0, v6}, Lcfc;->b(Z)V

    .line 776
    iput-boolean v7, p0, Lcgw;->O:Z

    .line 777
    iput-boolean v6, p0, Lcgw;->A:Z

    .line 778
    return-void

    .line 16444
    :cond_4
    sget-object v0, Ldvp;->F:Ldml;

    invoke-virtual {v0, v1}, Ldml;->b(I)Z

    move-result v0

    .line 734
    if-nez v0, :cond_5

    .line 16454
    sget-object v0, Ldvp;->G:Ldml;

    invoke-virtual {v0, v1}, Ldml;->b(I)Z

    move-result v0

    .line 735
    if-eqz v0, :cond_6

    :cond_5
    move v0, v7

    goto/16 :goto_0

    :cond_6
    move v0, v6

    goto/16 :goto_0

    .line 738
    :cond_7
    const-string v2, "Off"

    goto/16 :goto_1

    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    move v2, v6

    .line 739
    goto/16 :goto_3

    .line 768
    :cond_a
    const/4 v0, 0x0

    goto :goto_4
.end method

.method z()V
    .locals 6

    .prologue
    .line 791
    iget-object v0, p0, Lcgw;->u:Lezf;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lezf;->a([I)V

    .line 792
    iget-object v0, p0, Lcgw;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcgw;->Q:Ljava/lang/Runnable;

    .line 18036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 795
    const-string v3, "babel_hangout_enter_master_timeout"

    const-wide/32 v4, 0xea60

    .line 794
    invoke-static {v2, v3, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 792
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 801
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v0}, Lcgs;->d()Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-static {}, Lcgw;->E()J

    move-result-wide v2

    .line 804
    iget-object v1, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v1}, Lcgs;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    iget-object v0, p0, Lcgw;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcgw;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 806
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    .line 809
    invoke-virtual {p0}, Lcgw;->l()Lbfd;

    move-result-object v0

    iget-object v1, p0, Lcgw;->i:Lcgs;

    .line 810
    invoke-virtual {v1}, Lcgs;->m()I

    move-result v1

    iget-object v2, p0, Lcgw;->i:Lcgs;

    .line 812
    invoke-virtual {v2}, Lcgs;->l()I

    move-result v2

    .line 808
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;II)I

    move-result v0

    iput v0, p0, Lcgw;->z:I

    .line 835
    :goto_0
    iget-object v0, p0, Lcgw;->a:Lcfc;

    invoke-virtual {v0}, Lcfc;->x()V

    .line 836
    return-void

    .line 813
    :cond_0
    const-string v1, "conversation"

    iget-object v4, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v4}, Lcgs;->b()Ljava/lang/String;

    move-result-object v4

    if-ne v1, v4, :cond_2

    .line 814
    invoke-static {v0}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 816
    invoke-static {p0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    .line 817
    iget-object v0, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v0}, Lcgs;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_1

    .line 819
    invoke-direct {p0, v0}, Lcgw;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 822
    :cond_1
    iget-object v0, p0, Lcgw;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcgw;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 825
    :cond_2
    const-string v1, "conversation"

    iget-object v2, p0, Lcgw;->i:Lcgs;

    invoke-virtual {v2}, Lcgs;->b()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 831
    invoke-virtual {p0}, Lcgw;->l()Lbfd;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l(Lbfd;Ljava/lang/String;)I

    .line 833
    :cond_3
    invoke-direct {p0}, Lcgw;->ab()V

    goto :goto_0
.end method
