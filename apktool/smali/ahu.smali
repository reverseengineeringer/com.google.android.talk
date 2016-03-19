.class public final Lahu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Laia;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laia",
            "<**>;"
        }
    .end annotation
.end field

.field private static final b:Laug;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laug",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lahm;

.field private final d:Lahw;

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final f:Laug;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laug",
            "<*>;"
        }
    .end annotation
.end field

.field private g:Laug;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laug",
            "<*>;"
        }
    .end annotation
.end field

.field private h:Laia;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laia",
            "<*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Object;

.field private j:Lauj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauj",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private k:Lahu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lahu",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Float;

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Laia;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laia;-><init>(B)V

    sput-object v0, Lahu;->a:Laia;

    .line 40
    new-instance v0, Lauk;

    invoke-direct {v0}, Lauk;-><init>()V

    sget-object v1, Lakr;->c:Lakr;

    .line 41
    invoke-virtual {v0, v1}, Lauk;->a(Lakr;)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    sget-object v1, Lahs;->d:Lahs;

    invoke-virtual {v0, v1}, Lauk;->a(Lahs;)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    .line 42
    invoke-virtual {v0}, Lauk;->a()Laug;

    move-result-object v0

    sput-object v0, Lahu;->b:Laug;

    .line 40
    return-void
.end method

.method constructor <init>(Lahm;Lahw;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahm;",
            "Lahw;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lahu;->a:Laia;

    iput-object v0, p0, Lahu;->h:Laia;

    .line 72
    iput-object p2, p0, Lahu;->d:Lahw;

    .line 1023
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    check-cast v0, Lahm;

    iput-object v0, p0, Lahu;->c:Lahm;

    .line 74
    iput-object p3, p0, Lahu;->e:Ljava/lang/Class;

    .line 76
    invoke-virtual {p2}, Lahw;->i()Laug;

    move-result-object v0

    iput-object v0, p0, Lahu;->f:Laug;

    .line 77
    iget-object v0, p0, Lahu;->f:Laug;

    iput-object v0, p0, Lahu;->g:Laug;

    .line 78
    return-void
.end method

.method private a(Lahs;)Lahs;
    .locals 4

    .prologue
    .line 551
    sget-object v0, Lahv;->b:[I

    invoke-virtual {p1}, Lahs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lahu;->g:Laug;

    .line 9919
    iget-object v1, v1, Laug;->d:Lahs;

    .line 560
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unknown priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :pswitch_0
    sget-object v0, Lahs;->c:Lahs;

    .line 558
    :goto_0
    return-object v0

    .line 555
    :pswitch_1
    sget-object v0, Lahs;->b:Lahs;

    goto :goto_0

    .line 558
    :pswitch_2
    sget-object v0, Lahs;->a:Lahs;

    goto :goto_0

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lauw;Laug;Laui;Laia;Lahs;II)Lauh;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauw",
            "<TTranscodeType;>;",
            "Laug",
            "<*>;",
            "Laui;",
            "Laia",
            "<*-TTranscodeType;>;",
            "Lahs;",
            "II)",
            "Lauh;"
        }
    .end annotation

    .prologue
    .line 13828
    const/4 v0, 0x1

    iput-boolean v0, p2, Laug;->t:Z

    .line 633
    iget-object v1, p0, Lahu;->c:Lahm;

    iget-object v2, p0, Lahu;->i:Ljava/lang/Object;

    iget-object v3, p0, Lahu;->e:Ljava/lang/Class;

    iget-object v4, p0, Lahu;->j:Lauj;

    iget-object v0, p0, Lahu;->c:Lahm;

    .line 644
    invoke-virtual {v0}, Lahm;->b()Lalh;

    move-result-object v5

    .line 14072
    iget-object v6, p4, Laia;->a:Lavc;

    .line 14119
    sget-object v0, Laum;->a:Lic;

    .line 14120
    invoke-interface {v0}, Lic;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laum;

    .line 14121
    if-nez v0, :cond_0

    .line 14122
    new-instance v0, Laum;

    invoke-direct {v0}, Laum;-><init>()V

    .line 14157
    :cond_0
    iput-object v1, v0, Laum;->c:Lahm;

    .line 14158
    iput-object v2, v0, Laum;->d:Ljava/lang/Object;

    .line 14159
    iput-object v3, v0, Laum;->e:Ljava/lang/Class;

    .line 14160
    iput-object p2, v0, Laum;->f:Laug;

    .line 14161
    iput p6, v0, Laum;->g:I

    .line 14162
    iput p7, v0, Laum;->h:I

    .line 14163
    iput-object p5, v0, Laum;->i:Lahs;

    .line 14164
    iput-object p1, v0, Laum;->j:Lauw;

    .line 14165
    iput-object v4, v0, Laum;->k:Lauj;

    .line 14166
    iput-object p3, v0, Laum;->b:Laui;

    .line 14167
    iput-object v5, v0, Laum;->l:Lalh;

    .line 14168
    iput-object v6, v0, Laum;->m:Lavc;

    .line 14169
    sget v1, Lauo;->a:I

    iput v1, v0, Laum;->n:I

    .line 633
    return-object v0
.end method

.method private a(Lauw;Laup;Laia;Lahs;II)Lauh;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauw",
            "<TTranscodeType;>;",
            "Laup;",
            "Laia",
            "<*-TTranscodeType;>;",
            "Lahs;",
            "II)",
            "Lauh;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v1, p0, Lahu;->k:Lahu;

    if-eqz v1, :cond_2

    .line 575
    iget-boolean v1, p0, Lahu;->n:Z

    if-eqz v1, :cond_0

    .line 576
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    :cond_0
    iget-object v1, p0, Lahu;->k:Lahu;

    iget-object v1, v1, Lahu;->h:Laia;

    .line 582
    sget-object v2, Lahu;->a:Laia;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v9, p3

    .line 586
    :goto_0
    iget-object v1, p0, Lahu;->k:Lahu;

    iget-object v1, v1, Lahu;->g:Laug;

    .line 10915
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Laug;->a(I)Z

    move-result v1

    .line 586
    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Lahu;->k:Lahu;

    iget-object v1, v1, Lahu;->g:Laug;

    .line 10919
    iget-object v1, v1, Laug;->d:Lahs;

    move-object v10, v1

    .line 589
    :goto_1
    iget-object v1, p0, Lahu;->k:Lahu;

    iget-object v1, v1, Lahu;->g:Laug;

    .line 10923
    iget v2, v1, Laug;->k:I

    .line 590
    iget-object v1, p0, Lahu;->k:Lahu;

    iget-object v1, v1, Lahu;->g:Laug;

    .line 10931
    iget v1, v1, Laug;->j:I

    .line 591
    invoke-static/range {p5 .. p6}, Lavq;->a(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lahu;->k:Lahu;

    iget-object v3, v3, Lahu;->g:Laug;

    .line 11927
    iget v4, v3, Laug;->k:I

    iget v3, v3, Laug;->j:I

    invoke-static {v4, v3}, Lavq;->a(II)Z

    move-result v3

    .line 592
    if-nez v3, :cond_4

    .line 593
    iget-object v1, p0, Lahu;->g:Laug;

    .line 12923
    iget v2, v1, Laug;->k:I

    .line 594
    iget-object v1, p0, Lahu;->g:Laug;

    .line 12931
    iget v1, v1, Laug;->j:I

    move v11, v1

    move v12, v2

    .line 597
    :goto_2
    new-instance v4, Laup;

    invoke-direct {v4, p2}, Laup;-><init>(Laui;)V

    .line 598
    iget-object v3, p0, Lahu;->g:Laug;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lahu;->a(Lauw;Laug;Laui;Laia;Lahs;II)Lauh;

    move-result-object v1

    .line 600
    const/4 v2, 0x1

    iput-boolean v2, p0, Lahu;->n:Z

    .line 602
    iget-object v2, p0, Lahu;->k:Lahu;

    move-object v3, p1

    move-object v5, v9

    move-object v6, v10

    move v7, v12

    move v8, v11

    invoke-direct/range {v2 .. v8}, Lahu;->a(Lauw;Laup;Laia;Lahs;II)Lauh;

    move-result-object v2

    .line 604
    const/4 v3, 0x0

    iput-boolean v3, p0, Lahu;->n:Z

    .line 605
    invoke-virtual {v4, v1, v2}, Laup;->a(Lauh;Lauh;)V

    .line 622
    :goto_3
    return-object v4

    .line 587
    :cond_1
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lahu;->a(Lahs;)Lahs;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    .line 607
    :cond_2
    iget-object v1, p0, Lahu;->l:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 609
    new-instance v4, Laup;

    invoke-direct {v4, p2}, Laup;-><init>(Laui;)V

    .line 610
    iget-object v3, p0, Lahu;->g:Laug;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lahu;->a(Lauw;Laug;Laui;Laia;Lahs;II)Lauh;

    move-result-object v9

    .line 612
    iget-object v1, p0, Lahu;->g:Laug;

    invoke-virtual {v1}, Laug;->b()Laug;

    move-result-object v1

    iget-object v2, p0, Lahu;->l:Ljava/lang/Float;

    .line 613
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Laug;->a(F)Laug;

    move-result-object v3

    .line 616
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lahu;->a(Lahs;)Lahs;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 615
    invoke-direct/range {v1 .. v8}, Lahu;->a(Lauw;Laug;Laui;Laia;Lahs;II)Lauh;

    move-result-object v1

    .line 618
    invoke-virtual {v4, v9, v1}, Laup;->a(Lauh;Lauh;)V

    goto :goto_3

    .line 622
    :cond_3
    iget-object v3, p0, Lahu;->g:Laug;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lahu;->a(Lauw;Laug;Laui;Laia;Lahs;II)Lauh;

    move-result-object v4

    goto :goto_3

    :cond_4
    move v11, v1

    move v12, v2

    goto/16 :goto_2

    :cond_5
    move-object v9, v1

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/Object;)Lahu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lahu",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 196
    iput-object p1, p0, Lahu;->i:Ljava/lang/Object;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lahu;->m:Z

    .line 198
    return-object p0
.end method


# virtual methods
.method public a()Lahu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lahu",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 331
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahu;

    .line 332
    iget-object v1, v0, Lahu;->g:Laug;

    invoke-virtual {v1}, Laug;->b()Laug;

    move-result-object v1

    iput-object v1, v0, Lahu;->g:Laug;

    .line 333
    iget-object v1, v0, Lahu;->h:Laia;

    invoke-virtual {v1}, Laia;->a()Laia;

    move-result-object v1

    iput-object v1, v0, Lahu;->h:Laia;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    return-object v0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Laia;)Lahu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laia",
            "<*-TTranscodeType;>;)",
            "Lahu",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 3023
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    check-cast v0, Laia;

    iput-object v0, p0, Lahu;->h:Laia;

    .line 107
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Lahu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lahu",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lahu;->b(Ljava/lang/Object;)Lahu;

    move-result-object v0

    return-object v0
.end method

.method public a(Laug;)Lahu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laug",
            "<*>;)",
            "Lahu",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 2023
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lahu;->f:Laug;

    iget-object v1, p0, Lahu;->g:Laug;

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lahu;->g:Laug;

    invoke-virtual {v0}, Laug;->b()Laug;

    move-result-object v0

    .line 91
    :goto_0
    invoke-virtual {v0, p1}, Laug;->a(Laug;)Laug;

    move-result-object v0

    iput-object v0, p0, Lahu;->g:Laug;

    .line 92
    return-object p0

    .line 90
    :cond_0
    iget-object v0, p0, Lahu;->g:Laug;

    goto :goto_0
.end method

.method public a(Lauj;)Lahu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauj",
            "<TTranscodeType;>;)",
            "Lahu",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lahu;->j:Lauj;

    .line 123
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lahu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lahu",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lahu;->b(Ljava/lang/Object;)Lahu;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lahu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lahu",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lahu;->b(Ljava/lang/Object;)Lahu;

    move-result-object v0

    return-object v0
.end method

.method public a([B)Lahu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lahu",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lahu;->b(Ljava/lang/Object;)Lahu;

    move-result-object v1

    new-instance v0, Lavg;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lavg;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lauk;->b(Laiw;)Lauk;

    move-result-object v0

    sget-object v2, Lakr;->b:Lakr;

    .line 316
    invoke-virtual {v0, v2}, Lauk;->a(Lakr;)Laug;

    move-result-object v0

    check-cast v0, Lauk;

    invoke-virtual {v0}, Lauk;->a()Laug;

    move-result-object v0

    .line 315
    invoke-virtual {v1, v0}, Lahu;->a(Laug;)Lahu;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;)Lauw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lauw",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 380
    invoke-static {}, Lavq;->a()V

    .line 6023
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lahu;->g:Laug;

    .line 6421
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Laug;->a(I)Z

    move-result v0

    .line 383
    if-nez v0, :cond_1

    iget-object v0, p0, Lahu;->g:Laug;

    .line 7417
    iget-boolean v0, v0, Laug;->n:Z

    .line 384
    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lahu;->g:Laug;

    .line 7425
    iget-boolean v0, v0, Laug;->t:Z

    .line 386
    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lahu;->g:Laug;

    invoke-virtual {v0}, Laug;->b()Laug;

    move-result-object v0

    iput-object v0, p0, Lahu;->g:Laug;

    .line 389
    :cond_0
    sget-object v0, Lahv;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 407
    :cond_1
    :goto_0
    iget-object v0, p0, Lahu;->e:Ljava/lang/Class;

    .line 9015
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9016
    new-instance v0, Lauq;

    invoke-direct {v0, p1}, Lauq;-><init>(Landroid/widget/ImageView;)V

    .line 407
    :goto_1
    invoke-virtual {p0, v0}, Lahu;->a(Lauw;)Lauw;

    move-result-object v0

    return-object v0

    .line 391
    :pswitch_0
    iget-object v0, p0, Lahu;->g:Laug;

    iget-object v1, p0, Lahu;->c:Lahm;

    invoke-virtual {v0, v1}, Laug;->a(Landroid/content/Context;)Laug;

    goto :goto_0

    .line 394
    :pswitch_1
    iget-object v0, p0, Lahu;->g:Laug;

    iget-object v1, p0, Lahu;->c:Lahm;

    invoke-virtual {v0, v1}, Laug;->d(Landroid/content/Context;)Laug;

    goto :goto_0

    .line 399
    :pswitch_2
    iget-object v0, p0, Lahu;->g:Laug;

    iget-object v1, p0, Lahu;->c:Lahm;

    invoke-virtual {v0, v1}, Laug;->b(Landroid/content/Context;)Laug;

    goto :goto_0

    .line 9017
    :cond_2
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9018
    new-instance v0, Laur;

    invoke-direct {v0, p1}, Laur;-><init>(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 9020
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unhandled class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lauw;)Lauw;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lauw",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Lavq;->a()V

    .line 4023
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    iget-boolean v0, p0, Lahu;->m:Z

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    invoke-virtual {p1}, Lauw;->b()Lauh;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lahu;->d:Lahw;

    invoke-virtual {v0, p1}, Lahw;->a(Lauw;)V

    .line 360
    :cond_1
    iget-object v0, p0, Lahu;->g:Laug;

    .line 4828
    const/4 v1, 0x1

    iput-boolean v1, v0, Laug;->t:Z

    .line 5565
    const/4 v2, 0x0

    iget-object v3, p0, Lahu;->h:Laia;

    iget-object v0, p0, Lahu;->g:Laug;

    .line 5919
    iget-object v4, v0, Laug;->d:Lahs;

    .line 5565
    iget-object v0, p0, Lahu;->g:Laug;

    .line 5923
    iget v5, v0, Laug;->k:I

    .line 5566
    iget-object v0, p0, Lahu;->g:Laug;

    .line 5931
    iget v6, v0, Laug;->j:I

    move-object v0, p0

    move-object v1, p1

    .line 5565
    invoke-direct/range {v0 .. v6}, Lahu;->a(Lauw;Laup;Laia;Lahs;II)Lauh;

    move-result-object v0

    .line 362
    invoke-virtual {p1, v0}, Lauw;->a(Lauh;)V

    .line 363
    iget-object v1, p0, Lahu;->d:Lahw;

    invoke-virtual {v1, p1, v0}, Lahw;->a(Lauw;Lauh;)V

    .line 365
    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lahu;->a()Lahu;

    move-result-object v0

    return-object v0
.end method
