.class final Lakx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lakl;

.field final b:Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic",
            "<",
            "Lakh",
            "<*>;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(Lakl;)V
    .locals 1

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v0, Laky;

    invoke-direct {v0, p0}, Laky;-><init>(Lakx;)V

    invoke-static {v0}, Lavs;->a(Lavw;)Lic;

    move-result-object v0

    iput-object v0, p0, Lakx;->b:Lic;

    .line 393
    iput-object p1, p0, Lakx;->a:Lakl;

    .line 394
    return-void
.end method


# virtual methods
.method a(Lahm;Ljava/lang/Object;Lali;Laiw;IILjava/lang/Class;Ljava/lang/Class;Lahs;Lakr;Ljava/util/Map;ZLaja;Lakj;)Lakh;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
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
            "<TR;>;)",
            "Lakh",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lakx;->b:Lic;

    invoke-interface {v1}, Lic;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakh;

    .line 412
    move-object/from16 v0, p0

    iget v0, v0, Lakx;->c:I

    move/from16 v16, v0

    add-int/lit8 v2, v16, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lakx;->c:I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-virtual/range {v1 .. v16}, Lakh;->a(Lahm;Ljava/lang/Object;Lali;Laiw;IILjava/lang/Class;Ljava/lang/Class;Lahs;Lakr;Ljava/util/Map;ZLaja;Lakj;I)Lakh;

    move-result-object v1

    return-object v1
.end method
