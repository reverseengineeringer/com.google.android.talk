.class public final Lbvh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbvg;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lilh;

.field private final c:Lbvj;

.field private final d:Leit;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lbvh;->a:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    iput-object v0, p0, Lbvh;->b:Lilh;

    .line 45
    new-instance v0, Lbvj;

    invoke-direct {v0, p1}, Lbvj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbvh;->c:Lbvj;

    .line 46
    iget-object v0, p0, Lbvh;->b:Lilh;

    const-class v1, Leit;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    iput-object v0, p0, Lbvh;->d:Leit;

    .line 47
    return-void
.end method

.method private a(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLbkq;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 177
    invoke-static {}, Lbfz;->i()Ljava/lang/String;

    move-result-object v9

    .line 178
    iget-object v0, p0, Lbvh;->a:Landroid/content/Context;

    const-class v1, Lbcm;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lbcm;

    new-instance v0, Lbvr;

    iget-object v1, p0, Lbvh;->a:Landroid/content/Context;

    const/4 v6, 0x0

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v11}, Lbvr;-><init>(Landroid/content/Context;Lbfd;Ljava/lang/String;Ljava/lang/String;Lbkq;ILjava/lang/String;ZLjava/lang/String;J)V

    .line 179
    invoke-interface {v12, v0}, Lbcm;->a(Lbcn;)Lbcg;

    .line 181
    return-object v9
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 1559
    sget-object v0, Ldvp;->R:Ldml;

    invoke-virtual {v0, p0}, Ldml;->b(I)Z

    move-result v0

    .line 51
    return v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Lblb;)Ljava/lang/String;
    .locals 15

    .prologue
    .line 140
    invoke-static/range {p1 .. p1}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    .line 141
    invoke-static/range {p1 .. p1}, Lbvh;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lbvh;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLbkq;)Ljava/lang/String;

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lbvh;->b:Lilh;

    const-class v3, Lefk;

    invoke-virtual {v1, v3}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lefk;

    const-string v4, ""

    move-object/from16 v0, p3

    iget-object v5, v0, Lblb;->a:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v6, v0, Lblb;->g:I

    const/4 v7, 0x0

    move-object/from16 v0, p3

    iget v8, v0, Lblb;->f:I

    move-object/from16 v0, p3

    iget v9, v0, Lblb;->e:I

    move-object/from16 v0, p3

    iget-object v10, v0, Lblb;->d:Ljava/lang/String;

    const-string v11, ""

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v3, p2

    invoke-interface/range {v1 .. v14}, Lefk;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lbkq;ZI)Ljava/lang/String;
    .locals 16

    .prologue
    .line 58
    invoke-static/range {p1 .. p1}, Ldvd;->e(I)Lbfd;

    move-result-object v3

    .line 59
    invoke-static/range {p1 .. p1}, Lbvh;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const-string v6, ""

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p4

    .line 61
    invoke-direct/range {v2 .. v8}, Lbvh;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLbkq;)Ljava/lang/String;

    move-result-object v2

    .line 130
    :goto_0
    return-object v2

    .line 75
    :cond_0
    if-eqz p4, :cond_3

    .line 76
    sget-object v2, Lbvi;->a:[I

    move-object/from16 v0, p4

    iget-object v4, v0, Lbkq;->c:Lbkr;

    invoke-virtual {v4}, Lbkr;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 106
    const/4 v2, 0x0

    goto :goto_0

    .line 78
    :pswitch_0
    check-cast p4, Lblj;

    .line 79
    move-object/from16 v0, p4

    iget-object v8, v0, Lblj;->e:Ljava/lang/String;

    .line 80
    move-object/from16 v0, p4

    iget-object v6, v0, Lblj;->a:Ljava/lang/String;

    .line 81
    move-object/from16 v0, p4

    iget-object v11, v0, Lblj;->d:Ljava/lang/String;

    .line 82
    const/4 v14, 0x0

    .line 114
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lbvh;->b:Lilh;

    const-class v4, Lefk;

    .line 115
    invoke-virtual {v2, v4}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lefk;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v12, ""

    const/4 v15, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v13, p5

    invoke-interface/range {v2 .. v15}, Lefk;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 85
    :pswitch_1
    check-cast p4, Lbkz;

    .line 86
    move-object/from16 v0, p4

    iget-object v14, v0, Lbkz;->e:Lgeo;

    .line 2134
    invoke-static/range {p6 .. p6}, Laal;->f(I)Z

    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 2191
    sget-object v2, Lbzw;->bz:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 2193
    move/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(IJ)Landroid/net/Uri;

    move-result-object v4

    .line 2196
    move-object/from16 v0, p0

    iget-object v2, v0, Lbvh;->a:Landroid/content/Context;

    const-class v5, Lcrv;

    invoke-static {v2, v5}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcrv;

    .line 2197
    invoke-interface {v2, v14}, Lcrv;->a(Lgeo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lezc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2198
    invoke-interface {v2}, Lcrv;->a()I

    move-result v2

    .line 2199
    new-instance v6, Leyd;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Leyd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Leyd;->a(I)Leyd;

    move-result-object v2

    .line 2200
    new-instance v5, Lbhs;

    move-object/from16 v0, p0

    iget-object v6, v0, Lbvh;->c:Lbvj;

    const/4 v7, 0x1

    invoke-direct {v5, v2, v6, v7, v4}, Lbhs;-><init>(Leyd;Lbhv;ZLjava/lang/Object;)V

    .line 2202
    move-object/from16 v0, p0

    iget-object v2, v0, Lbvh;->d:Leit;

    invoke-virtual {v2, v5}, Leit;->a(Lehx;)Z

    .line 2203
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    if-nez v4, :cond_1

    .line 93
    const/4 v2, 0x0

    .line 102
    :goto_2
    const/4 v8, 0x0

    move-object v11, v2

    move-object v6, v4

    .line 103
    goto :goto_1

    .line 95
    :cond_1
    const-string v2, "hangouts/location"

    goto :goto_2

    .line 98
    :cond_2
    const/4 v4, 0x0

    .line 99
    const-string v2, "hangouts/location"

    goto :goto_2

    .line 109
    :cond_3
    const/4 v8, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v11, 0x0

    .line 112
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(ILjava/lang/String;I)V
    .locals 3

    .prologue
    .line 208
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 209
    invoke-static {p1}, Lbvh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lbvh;->a:Landroid/content/Context;

    const-class v2, Lbcm;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcm;

    new-instance v2, Lbvo;

    invoke-direct {v2, v1, p2, p3}, Lbvo;-><init>(Lbfd;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Lbcm;->a(Lbcn;)Lbcg;

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {v1, p2, p3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Lbfd;Ljava/lang/String;I)I

    goto :goto_0
.end method
