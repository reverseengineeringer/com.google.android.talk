.class public abstract Lgnn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:Lgnp;

.field public static b:Lgno;


# instance fields
.field private final c:C

.field private final d:C

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgnp;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lgnp;-><init>(Landroid/os/Bundle;)V

    sput-object v0, Lgnn;->a:Lgnp;

    new-instance v0, Lgno;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lgno;-><init>(Landroid/os/Bundle;)V

    sput-object v0, Lgnn;->b:Lgno;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnn;->g:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-char v0, p0, Lgnn;->c:C

    const/4 v0, 0x2

    iput-char v0, p0, Lgnn;->d:C

    iget-char v0, p0, Lgnn;->c:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnn;->e:Ljava/lang/String;

    iget-char v0, p0, Lgnn;->d:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnn;->f:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)D
    .locals 5

    const-wide/16 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "PhoneEmailDecoder"

    const-string v4, "NumberFormatException"

    invoke-static {v3, v4, v2}, Laal;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;CII)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_0

    if-ge v0, p3, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private final a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v23

    move v3, v2

    :goto_0
    move/from16 v0, v23

    if-ge v3, v0, :cond_2

    move-object/from16 v0, p0

    iget-char v2, v0, Lgnn;->d:C

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_1

    :goto_1
    move-object/from16 v0, p0

    iget-char v4, v0, Lgnn;->c:C

    move-object/from16 v0, p2

    invoke-static {v0, v4, v3, v2}, Lgnn;->a(Ljava/lang/String;CII)I

    move-result v4

    move-object/from16 v0, p0

    iget-char v5, v0, Lgnn;->c:C

    add-int/lit8 v6, v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v2}, Lgnn;->a(Ljava/lang/String;CII)I

    move-result v7

    if-ltz v4, :cond_0

    if-ltz v7, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v3, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v22}, Lgnn;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DDDDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lgnn;->g:Landroid/os/Bundle;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v5, p3

    :cond_1
    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    invoke-virtual/range {v3 .. v20}, Lgnn;->a(Ljava/lang/String;Ljava/lang/String;DDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private final b(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    move-object/from16 v0, p0

    iget-object v2, v0, Lgnn;->f:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, v24

    if-ge v2, v0, :cond_1

    aget-object v3, v23, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lgnn;->e:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/16 v5, 0xd

    if-ge v4, v5, :cond_0

    .line 1000
    const/4 v3, 0x5

    invoke-static {v3}, Laal;->q(I)Z

    .line 0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    aget-object v5, v3, v4

    const/4 v4, 0x1

    aget-object v6, v3, v4

    const/4 v4, 0x2

    aget-object v7, v3, v4

    const/4 v4, 0x3

    aget-object v4, v3, v4

    invoke-static {v4}, Lgnn;->a(Ljava/lang/String;)D

    move-result-wide v8

    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-static {v4}, Lgnn;->a(Ljava/lang/String;)D

    move-result-wide v10

    const/4 v4, 0x5

    aget-object v4, v3, v4

    invoke-static {v4}, Lgnn;->a(Ljava/lang/String;)D

    move-result-wide v12

    const/4 v4, 0x6

    aget-object v4, v3, v4

    invoke-static {v4}, Lgnn;->a(Ljava/lang/String;)D

    move-result-wide v14

    const/4 v4, 0x7

    aget-object v4, v3, v4

    invoke-static {v4}, Lgnn;->a(Ljava/lang/String;)D

    move-result-wide v16

    const/16 v4, 0x8

    aget-object v4, v3, v4

    invoke-static {v4}, Lgpd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v4, 0x9

    aget-object v4, v3, v4

    invoke-static {v4}, Lgpd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v4, 0xa

    aget-object v4, v3, v4

    invoke-static {v4}, Lgpd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v4, 0xb

    aget-object v4, v3, v4

    invoke-static {v4}, Lgpd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v4, 0xc

    aget-object v3, v3, v4

    invoke-static {v3}, Lgpd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v22}, Lgnn;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;DDDDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DDDDD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, v0, p1}, Lgnn;->b(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p1}, Lgnn;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method
