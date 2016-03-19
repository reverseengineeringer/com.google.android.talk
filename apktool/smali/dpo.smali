.class public Ldpo;
.super Ldox;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final H:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final A:Z

.field final B:I

.field final C:Ljava/lang/String;

.field final D:I

.field public final E:J

.field private F:J

.field private transient G:Ljava/io/InputStream;

.field private I:J

.field private J:I

.field private K:J

.field private L:J

.field private M:Z

.field private N:Z

.field private O:Z

.field final a:Ljava/lang/String;

.field public final b:J

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lefx;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/lang/String;

.field final m:Ljava/lang/String;

.field final n:I

.field final o:Ljava/lang/String;

.field final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:D

.field public final t:D

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:I

.field public final y:I

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1372
    const-string v0, "\\*\\*\\*([\\w]{1})(\\d*)(p?)\\*\\*\\*"

    .line 1373
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldpo;->H:Ljava/util/regex/Pattern;

    .line 1372
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 961
    invoke-direct {p0, p2, p1}, Ldox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ldpo;->F:J

    .line 1432
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ldpo;->I:J

    .line 1433
    const/4 v2, 0x0

    iput v2, p0, Ldpo;->J:I

    .line 1434
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ldpo;->K:J

    .line 1435
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ldpo;->L:J

    .line 1436
    const/4 v2, 0x0

    iput-boolean v2, p0, Ldpo;->M:Z

    .line 1437
    const/4 v2, 0x0

    iput-boolean v2, p0, Ldpo;->N:Z

    .line 1438
    const/4 v2, 0x0

    iput-boolean v2, p0, Ldpo;->O:Z

    .line 963
    iget-object v2, p0, Ldpo;->j:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 964
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null clientGeneratedId"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 967
    :cond_0
    iput-object p3, p0, Ldpo;->a:Ljava/lang/String;

    .line 968
    iput-wide p4, p0, Ldpo;->b:J

    .line 969
    iput-object p6, p0, Ldpo;->k:Ljava/util/List;

    .line 970
    iput-object p7, p0, Ldpo;->l:Ljava/lang/String;

    .line 971
    iput-object p8, p0, Ldpo;->p:Ljava/lang/String;

    .line 972
    iput-object p9, p0, Ldpo;->m:Ljava/lang/String;

    .line 973
    iput p10, p0, Ldpo;->n:I

    .line 974
    iput-object p11, p0, Ldpo;->o:Ljava/lang/String;

    .line 975
    move/from16 v0, p12

    iput v0, p0, Ldpo;->y:I

    .line 976
    move/from16 v0, p13

    iput v0, p0, Ldpo;->x:I

    .line 977
    move-object/from16 v0, p14

    iput-object v0, p0, Ldpo;->q:Ljava/lang/String;

    .line 978
    move-object/from16 v0, p15

    iput-object v0, p0, Ldpo;->r:Ljava/lang/String;

    .line 979
    move-wide/from16 v0, p16

    iput-wide v0, p0, Ldpo;->s:D

    .line 980
    move-wide/from16 v0, p18

    iput-wide v0, p0, Ldpo;->t:D

    .line 981
    move-object/from16 v0, p20

    iput-object v0, p0, Ldpo;->u:Ljava/lang/String;

    .line 982
    move-object/from16 v0, p21

    iput-object v0, p0, Ldpo;->v:Ljava/lang/String;

    .line 983
    move-object/from16 v0, p22

    iput-object v0, p0, Ldpo;->w:Ljava/lang/String;

    .line 984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ldpo;->E:J

    .line 985
    move/from16 v0, p23

    iput-boolean v0, p0, Ldpo;->z:Z

    .line 986
    const/4 v2, 0x0

    iput-boolean v2, p0, Ldpo;->A:Z

    .line 987
    move/from16 v0, p24

    iput v0, p0, Ldpo;->B:I

    .line 988
    move-object/from16 v0, p25

    iput-object v0, p0, Ldpo;->C:Ljava/lang/String;

    .line 989
    move/from16 v0, p26

    iput v0, p0, Ldpo;->D:I

    .line 990
    invoke-direct {p0}, Ldpo;->p()V

    .line 991
    return-void
.end method

.method private c(JI)Ldvn;
    .locals 9

    .prologue
    .line 1294
    iget-wide v0, p0, Ldpo;->K:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ldpo;->K:J

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 1296
    new-instance v1, Ldvn;

    const/16 v2, 0x66

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ldvn;-><init>(ILjava/lang/Exception;JZLjava/lang/String;)V

    .line 1340
    :goto_0
    return-object v1

    .line 1303
    :cond_0
    iget v0, p0, Ldpo;->J:I

    if-lez v0, :cond_1

    .line 1304
    iget v0, p0, Ldpo;->J:I

    if-le v0, p3, :cond_4

    .line 1305
    new-instance v1, Ldvn;

    const/16 v2, 0x66

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ldvn;-><init>(ILjava/lang/Exception;JZLjava/lang/String;)V

    goto :goto_0

    .line 1312
    :cond_1
    iget-boolean v0, p0, Ldpo;->M:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ge p3, v0, :cond_2

    .line 1313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 1314
    const-class v2, Lcom/google/android/apps/hangouts/phone/ShowToastForTesting;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1315
    const-string v1, "toast_text"

    const-string v2, "authentication"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    new-instance v3, Lewy;

    invoke-direct {v3, v0}, Lewy;-><init>(Landroid/content/Intent;)V

    .line 1318
    new-instance v1, Ldvn;

    const/16 v2, 0x64

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ldvn;-><init>(ILjava/lang/Exception;JZLjava/lang/String;)V

    goto :goto_0

    .line 1324
    :cond_2
    iget-boolean v0, p0, Ldpo;->O:Z

    if-eqz v0, :cond_3

    .line 1325
    new-instance v1, Ldvn;

    const/16 v2, 0x6d

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ldvn;-><init>(ILjava/lang/Exception;JZLjava/lang/String;)V

    goto :goto_0

    .line 1331
    :cond_3
    iget-wide v0, p0, Ldpo;->L:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    if-nez p3, :cond_4

    .line 1332
    iget-wide v4, p0, Ldpo;->L:J

    .line 1333
    new-instance v1, Ldvn;

    const/16 v2, 0x69

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ldvn;-><init>(ILjava/lang/Exception;JZLjava/lang/String;)V

    goto :goto_0

    .line 1340
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1362
    iget-object v0, p0, Ldpo;->k:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1370
    :cond_0
    return-void

    .line 1365
    :cond_1
    iget-object v0, p0, Ldpo;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefx;

    .line 1366
    iget v3, v0, Lefx;->a:I

    if-nez v3, :cond_2

    .line 1367
    iget-object v0, v0, Lefx;->b:Ljava/lang/String;

    .line 8380
    if-eqz v0, :cond_2

    .line 8383
    sget-object v3, Ldpo;->H:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    move v0, v1

    .line 8385
    :goto_0
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8386
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 8387
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 8388
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 8390
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v1

    .line 8392
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 8424
    :goto_2
    iget-boolean v0, p0, Ldpo;->N:Z

    const-string v4, "p"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    iput-boolean v0, p0, Ldpo;->N:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8428
    :goto_3
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_0

    .line 8391
    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 8395
    :sswitch_0
    const-string v4, "Babel_RequestWriter"

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x26

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "failure injection counter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8396
    iput v0, p0, Ldpo;->J:I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    .line 8400
    :sswitch_1
    const-string v4, "Babel_RequestWriter"

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x23

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "failure injection time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8401
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    iput-wide v6, p0, Ldpo;->K:J

    goto :goto_2

    .line 8405
    :sswitch_2
    const-string v4, "Babel_RequestWriter"

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x2a

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "failure injection max latency: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8406
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    iput-wide v6, p0, Ldpo;->I:J

    goto :goto_2

    .line 8410
    :sswitch_3
    const-string v0, "Babel_RequestWriter"

    const-string v4, "failure inject auth error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8411
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldpo;->M:Z

    goto/16 :goto_2

    .line 8415
    :sswitch_4
    const-string v0, "Babel_RequestWriter"

    const-string v4, "failure inject fatal (retry limit)"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8416
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldpo;->O:Z

    goto/16 :goto_2

    .line 8420
    :sswitch_5
    const-string v4, "Babel_RequestWriter"

    const-string v6, "failure inject server backoff"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8421
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    iput-wide v6, p0, Ldpo;->L:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 8392
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_3
        0x43 -> :sswitch_0
        0x46 -> :sswitch_4
        0x4d -> :sswitch_2
        0x53 -> :sswitch_5
        0x54 -> :sswitch_1
        0x61 -> :sswitch_3
        0x63 -> :sswitch_0
        0x66 -> :sswitch_4
        0x6d -> :sswitch_2
        0x73 -> :sswitch_5
        0x74 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public E_()Z
    .locals 1

    .prologue
    .line 1453
    const/4 v0, 0x1

    return v0
.end method

.method public a(JI)Ldvn;
    .locals 1

    .prologue
    .line 1346
    iget-boolean v0, p0, Ldpo;->N:Z

    if-nez v0, :cond_0

    .line 1347
    invoke-direct {p0, p1, p2, p3}, Ldpo;->c(JI)Ldvn;

    move-result-object v0

    .line 1349
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1047
    const-string v0, "Babel_RequestWriter"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    const-string v3, "Babel_RequestWriter"

    const-string v4, "sendMessage build protobuf clientGeneratedId="

    iget-object v0, p0, Ldpo;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1052
    :cond_0
    new-instance v3, Ljzr;

    invoke-direct {v3}, Ljzr;-><init>()V

    .line 1054
    iget-object v0, p0, Ldpo;->j:Ljava/lang/String;

    .line 1055
    invoke-static {v0}, Lbfz;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Ljzr;->b:Ljava/lang/Long;

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1056
    const-string v4, "babel_contingency_mode_enabled"

    invoke-static {v0, v4, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 1059
    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldpo;->A:Z

    if-nez v0, :cond_1

    .line 1060
    iget-object v0, p0, Ldpo;->c:Ljava/lang/String;

    invoke-static {v0}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v0

    iput-object v0, v3, Ljzr;->a:Ljxw;

    .line 1063
    :cond_1
    iget-boolean v0, p0, Ldpo;->z:Z

    if-eqz v0, :cond_b

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Ljzr;->c:Ljava/lang/Integer;

    .line 1066
    new-instance v0, Ljyp;

    invoke-direct {v0}, Ljyp;-><init>()V

    .line 1067
    iget v4, p0, Ldpo;->B:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Ljyp;->a:Ljava/lang/Integer;

    .line 1068
    iget-object v4, p0, Ldpo;->C:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1069
    new-instance v4, Llcf;

    invoke-direct {v4}, Llcf;-><init>()V

    iput-object v4, v0, Ljyp;->b:Llcf;

    .line 1070
    iget-object v4, v0, Ljyp;->b:Llcf;

    iget-object v5, p0, Ldpo;->C:Ljava/lang/String;

    iput-object v5, v4, Llcf;->a:Ljava/lang/String;

    .line 1072
    :cond_2
    iput-object v0, v3, Ljzr;->d:Ljyp;

    .line 1074
    iget v0, p0, Ldpo;->D:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Ljzr;->e:Ljava/lang/Integer;

    .line 1076
    new-instance v6, Lkdw;

    invoke-direct {v6}, Lkdw;-><init>()V

    .line 1078
    iput-object v3, v6, Lkdw;->a:Ljzr;

    .line 1080
    new-instance v4, Lkcd;

    invoke-direct {v4}, Lkcd;-><init>()V

    .line 1081
    iget-object v0, p0, Ldpo;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 1082
    if-lez v5, :cond_d

    .line 1083
    new-array v7, v5, [Lmel;

    move v3, v1

    .line 1084
    :goto_2
    if-ge v3, v5, :cond_c

    .line 1085
    iget-object v0, p0, Ldpo;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefx;

    .line 1086
    new-instance v8, Lmel;

    invoke-direct {v8}, Lmel;-><init>()V

    .line 1087
    iget-object v9, v0, Lefx;->b:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 1088
    iget-object v9, v0, Lefx;->b:Ljava/lang/String;

    iput-object v9, v8, Lmel;->b:Ljava/lang/String;

    .line 1090
    :cond_3
    iget-object v9, v0, Lefx;->d:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 1091
    new-instance v9, Lmek;

    invoke-direct {v9}, Lmek;-><init>()V

    iput-object v9, v8, Lmel;->d:Lmek;

    .line 1092
    iget-object v9, v8, Lmel;->d:Lmek;

    iget-object v10, v0, Lefx;->d:Ljava/lang/String;

    iput-object v10, v9, Lmek;->a:Ljava/lang/String;

    .line 1093
    iget-object v9, v0, Lefx;->b:Ljava/lang/String;

    iput-object v9, v8, Lmel;->b:Ljava/lang/String;

    .line 1095
    :cond_4
    iget v9, v0, Lefx;->c:I

    if-eqz v9, :cond_9

    .line 1096
    new-instance v9, Lmei;

    invoke-direct {v9}, Lmei;-><init>()V

    .line 1097
    iget v10, v0, Lefx;->c:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_5

    .line 1098
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v9, Lmei;->a:Ljava/lang/Boolean;

    .line 1100
    :cond_5
    iget v10, v0, Lefx;->c:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_6

    .line 1101
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v9, Lmei;->b:Ljava/lang/Boolean;

    .line 1103
    :cond_6
    iget v10, v0, Lefx;->c:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_7

    .line 1104
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v9, Lmei;->c:Ljava/lang/Boolean;

    .line 1106
    :cond_7
    iget v10, v0, Lefx;->c:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_8

    .line 1107
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v9, Lmei;->d:Ljava/lang/Boolean;

    .line 1109
    :cond_8
    iput-object v9, v8, Lmel;->c:Lmei;

    .line 1111
    :cond_9
    iget v0, v0, Lefx;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lmel;->a:Ljava/lang/Integer;

    .line 1112
    aput-object v8, v7, v3

    .line 1084
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 1048
    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1065
    :cond_b
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 1114
    :cond_c
    iput-object v7, v4, Lkcd;->a:[Lmel;

    .line 1116
    :cond_d
    iput-object v4, v6, Lkdw;->e:Lkcd;

    .line 1118
    iget-object v0, p0, Ldpo;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1119
    new-instance v0, Ljzs;

    invoke-direct {v0}, Ljzs;-><init>()V

    iput-object v0, v6, Lkdw;->f:Ljzs;

    .line 1120
    iget-object v0, v6, Lkdw;->f:Ljzs;

    new-instance v3, Ljzu;

    invoke-direct {v3}, Ljzu;-><init>()V

    iput-object v3, v0, Ljzs;->b:Ljzu;

    .line 1121
    iget-object v0, v6, Lkdw;->f:Ljzs;

    iget-object v0, v0, Ljzs;->b:Ljzu;

    iget-object v3, p0, Ldpo;->l:Ljava/lang/String;

    iput-object v3, v0, Ljzu;->b:Ljava/lang/String;

    .line 1122
    iget-object v0, p0, Ldpo;->p:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 1123
    iget-object v0, v6, Lkdw;->f:Ljzs;

    iget-object v0, v0, Ljzs;->b:Ljzu;

    iget-object v3, p0, Ldpo;->p:Ljava/lang/String;

    iput-object v3, v0, Ljzu;->a:Ljava/lang/String;

    .line 1124
    iget-object v0, v6, Lkdw;->f:Ljzs;

    iget-object v0, v0, Ljzs;->b:Ljzu;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Ljzu;->d:Ljava/lang/Boolean;

    .line 1128
    :cond_e
    const-string v0, "hangouts/location"

    iget-object v2, p0, Ldpo;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2205
    sget-boolean v0, Ldoo;->e:Z

    .line 1129
    if-eqz v0, :cond_f

    .line 1130
    iget-object v0, p0, Ldpo;->q:Ljava/lang/String;

    iget-object v2, p0, Ldpo;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Sending location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "url:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    :cond_f
    new-instance v0, Llzi;

    invoke-direct {v0}, Llzi;-><init>()V

    .line 1134
    iget-wide v2, p0, Ldpo;->s:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Llzi;->n:Ljava/lang/Double;

    .line 1135
    iget-wide v2, p0, Ldpo;->t:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Llzi;->o:Ljava/lang/Double;

    .line 1137
    new-instance v2, Llyt;

    invoke-direct {v2}, Llyt;-><init>()V

    .line 1138
    sget-object v3, Llzi;->a:Llyc;

    invoke-virtual {v2, v3, v0}, Llyt;->a(Llyc;Ljava/lang/Object;)Llyb;

    .line 1140
    new-instance v0, Llzp;

    invoke-direct {v0}, Llzp;-><init>()V

    .line 1141
    iget-object v3, p0, Ldpo;->o:Ljava/lang/String;

    iput-object v3, v0, Llzp;->c:Ljava/lang/String;

    .line 1143
    new-instance v3, Llyt;

    invoke-direct {v3}, Llyt;-><init>()V

    .line 1144
    sget-object v4, Llzp;->a:Llyc;

    invoke-virtual {v3, v4, v0}, Llyt;->a(Llyc;Ljava/lang/Object;)Llyb;

    .line 1146
    new-instance v0, Lmaq;

    invoke-direct {v0}, Lmaq;-><init>()V

    .line 1147
    iget-object v4, p0, Ldpo;->u:Ljava/lang/String;

    iput-object v4, v0, Lmaq;->s:Ljava/lang/String;

    .line 1149
    new-instance v4, Llyt;

    invoke-direct {v4}, Llyt;-><init>()V

    .line 1150
    sget-object v5, Lmaq;->a:Llyc;

    invoke-virtual {v4, v5, v0}, Llyt;->a(Llyc;Ljava/lang/Object;)Llyb;

    .line 1154
    new-instance v0, Llzv;

    invoke-direct {v0}, Llzv;-><init>()V

    .line 1155
    iget-object v5, p0, Ldpo;->q:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1156
    iget-object v5, p0, Ldpo;->q:Ljava/lang/String;

    iput-object v5, v0, Llzv;->e:Ljava/lang/String;

    .line 1158
    :cond_10
    iput-object v3, v0, Llzv;->w:Llyt;

    .line 1159
    iput-object v2, v0, Llzv;->o:Llyt;

    .line 1160
    iput-object v4, v0, Llzv;->n:Llyt;

    .line 1162
    new-instance v2, Lkbs;

    invoke-direct {v2}, Lkbs;-><init>()V

    .line 1163
    iput-object v0, v2, Lkbs;->a:Llzv;

    .line 1165
    iput-object v2, v6, Lkdw;->g:Lkbs;

    .line 1168
    :cond_11
    iget-object v0, p0, Ldpo;->a:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 1169
    new-instance v0, Lkbi;

    invoke-direct {v0}, Lkbi;-><init>()V

    iput-object v0, v6, Lkdw;->d:Lkbi;

    .line 1170
    iget-object v0, v6, Lkdw;->d:Lkbi;

    iget-object v2, p0, Ldpo;->a:Ljava/lang/String;

    iput-object v2, v0, Lkbi;->a:Ljava/lang/String;

    .line 1173
    :cond_12
    new-instance v0, Ljxk;

    invoke-direct {v0}, Ljxk;-><init>()V

    .line 1175
    iget-wide v2, p0, Ldpo;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Ljxk;->a:Ljava/lang/Long;

    .line 1176
    iget-object v5, p0, Ldpo;->h:Lfak;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Ldon;->a(Ljxk;ZLjava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v6, Lkdw;->requestHeader:Lkdo;

    .line 1184
    return-object v6
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 6

    .prologue
    .line 1470
    invoke-super {p0, p1, p2}, Ldox;->a(Lbfd;Ldvn;)V

    .line 1471
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    const/16 v0, 0x5f3

    invoke-static {p1, v0}, Laal;->a(Lbfd;I)V

    .line 1474
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    .line 1475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x5

    .line 9219
    new-instance v4, Lcsn;

    .line 10040
    invoke-direct {v4}, Lcsn;-><init>()V

    .line 1478
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v4

    iget-object v5, p0, Ldpo;->j:Ljava/lang/String;

    .line 1479
    invoke-virtual {v4, v5}, Lcsn;->b(Ljava/lang/String;)Lcsn;

    move-result-object v4

    iget-object v5, p0, Ldpo;->c:Ljava/lang/String;

    .line 1480
    invoke-virtual {v4, v5}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v4

    .line 1473
    invoke-static {v0, v2, v3, v1, v4}, Laen;->a(IJILcsn;)V

    .line 1482
    :cond_0
    return-void
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 2

    .prologue
    .line 1032
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 1033
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 1034
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    .line 1035
    :cond_0
    const/4 v0, 0x1

    .line 1037
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Ldox;->a(Lcwk;Ldvn;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Ldpo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 1442
    iget-wide v0, p0, Ldpo;->I:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1443
    const-wide v0, 0x7fffffffffffffffL

    .line 1445
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Ldpo;->I:J

    goto :goto_0
.end method

.method public b(Ljava/lang/String;II)Lcom/google/api/client/http/HttpContent;
    .locals 2

    .prologue
    .line 1285
    invoke-virtual {p0, p1, p2, p3}, Ldpo;->a(Ljava/lang/String;II)Llyi;

    move-result-object v0

    .line 1286
    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {v0}, Llyi;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldpo;->i:Ljava/lang/String;

    .line 1289
    :cond_0
    new-instance v1, Ldnd;

    invoke-direct {v1, v0}, Ldnd;-><init>(Llyi;)V

    return-object v1
.end method

.method public b(JI)Ldvn;
    .locals 1

    .prologue
    .line 1355
    iget-boolean v0, p0, Ldpo;->N:Z

    if-eqz v0, :cond_0

    .line 1356
    invoke-direct {p0, p1, p2, p3}, Ldpo;->c(JI)Ldvn;

    move-result-object v0

    .line 1358
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcwi;
    .locals 1

    .prologue
    .line 1010
    new-instance v0, Lebv;

    invoke-direct {v0, p0}, Lebv;-><init>(Ldpo;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1019
    iget-object v0, p0, Ldpo;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1020
    iget-object v0, p0, Ldpo;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefx;

    iget-object v0, v0, Lefx;->b:Ljava/lang/String;

    .line 1021
    invoke-static {v0}, Laal;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1189
    const-string v0, "conversations/sendchatmessage"

    return-object v0
.end method

.method protected g()Lefh;
    .locals 1

    .prologue
    .line 1279
    invoke-virtual {p0}, Ldpo;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lefh;->a:Lefh;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lefh;->b:Lefh;

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 1486
    const/4 v0, 0x4

    return v0
.end method

.method public m()Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1202
    invoke-virtual {p0}, Ldpo;->o()Z

    move-result v2

    .line 3144
    const-string v3, "Expected condition to be false"

    invoke-static {v3, v2}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 3214
    iget-object v2, p0, Ldpo;->o:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 3215
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3216
    const-string v3, "image/gif"

    iget-object v4, p0, Ldpo;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Ldpo;->m:Ljava/lang/String;

    .line 4084
    invoke-static {v3}, Laal;->b(Ljava/lang/String;)Z

    move-result v3

    .line 3217
    if-nez v3, :cond_2

    .line 3219
    :cond_0
    :try_start_0
    iget-object v0, p0, Ldpo;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3220
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Ldpo;->G:Ljava/io/InputStream;

    .line 3221
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Ldpo;->F:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    :cond_1
    :goto_0
    iget-object v0, p0, Ldpo;->G:Ljava/io/InputStream;

    if-nez v0, :cond_8

    .line 1205
    const-string v2, "Babel_RequestWriter"

    const-string v3, "We could not create an inputStream for the uri: "

    iget-object v0, p0, Ldpo;->o:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1206
    const/4 v0, 0x0

    .line 1210
    :goto_2
    return-object v0

    .line 3222
    :catch_0
    move-exception v0

    .line 3223
    const-string v2, "Babel_RequestWriter"

    const-string v3, "FileNotFoundException trying to detect how large the  attachment is"

    invoke-static {v2, v3, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5036
    :cond_2
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 3229
    const-string v3, "babel_thumbnail_photo_upload_size"

    const/16 v4, 0x140

    invoke-static {v2, v3, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 3231
    invoke-static {}, Leye;->a()Lexb;

    move-result-object v3

    .line 6036
    :try_start_1
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 3235
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Ldpo;->o:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 3236
    invoke-static {v4}, Leye;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 3237
    if-eqz v4, :cond_4

    array-length v5, v4

    if-lez v5, :cond_4

    .line 3238
    iget-object v5, p0, Ldpo;->o:Ljava/lang/String;

    .line 7036
    sget-object v6, Laal;->oJ:Landroid/content/Context;

    .line 3238
    invoke-static {v6}, Lcom/google/android/apps/hangouts/content/EsProvider;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3240
    const-string v2, "Babel_RequestWriter"

    const-string v3, "Sending cache file."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3241
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Ldpo;->G:Ljava/io/InputStream;

    .line 3242
    array-length v2, v4

    int-to-long v2, v2

    iput-wide v2, p0, Ldpo;->F:J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3263
    :goto_3
    if-nez v0, :cond_1

    .line 3264
    const-string v2, "Babel_RequestWriter"

    const-string v3, "Failing to send image for uri: "

    iget-object v0, p0, Ldpo;->o:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3247
    :cond_3
    :try_start_2
    iget v5, p0, Ldpo;->n:I

    invoke-virtual {v3, v4, v2, v2, v5}, Lexb;->a([BIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3249
    if-eqz v2, :cond_4

    .line 3250
    const/16 v4, 0x46

    invoke-static {v2, v4}, Leye;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v4

    .line 3251
    invoke-virtual {v3, v2}, Lexb;->a(Landroid/graphics/Bitmap;)V

    .line 3252
    if-eqz v4, :cond_4

    array-length v2, v4

    if-lez v2, :cond_4

    .line 3253
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Ldpo;->G:Ljava/io/InputStream;

    .line 3254
    array-length v2, v4

    int-to-long v2, v2

    iput-wide v2, p0, Ldpo;->F:J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 3260
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 3261
    const-string v3, "Babel_RequestWriter"

    const-string v4, "Could not open file corresponding to uri "

    iget-object v0, p0, Ldpo;->o:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v3, v0, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 3264
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 1205
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1208
    :cond_8
    new-instance v0, Lcom/google/api/client/http/InputStreamContent;

    iget-object v1, p0, Ldpo;->m:Ljava/lang/String;

    iget-object v2, p0, Ldpo;->G:Ljava/io/InputStream;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/InputStreamContent;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 1209
    iget-wide v2, p0, Ldpo;->F:J

    invoke-virtual {v0, v2, v3}, Lcom/google/api/client/http/InputStreamContent;->setLength(J)Lcom/google/api/client/http/InputStreamContent;

    goto/16 :goto_2
.end method

.method public n()I
    .locals 1

    .prologue
    .line 1194
    invoke-virtual {p0}, Ldpo;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1195
    const/4 v0, 0x1

    .line 1197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Ldpo;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "hangouts/location"

    iget-object v1, p0, Ldpo;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldpo;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1458
    invoke-super {p0}, Ldox;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldpo;->k:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Laal;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "text ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
