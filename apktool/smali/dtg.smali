.class public Ldtg;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final g:Z

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final h:Z

.field private final i:J

.field private final j:J

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private final l:Z

.field private final m:[Lcyx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lezi;->l:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Ldtg;->g:Z

    return-void
.end method

.method private constructor <init>(Lkfn;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 77
    iget-object v1, p1, Lkfn;->responseHeader:Lkdp;

    iget-object v2, p1, Lkfn;->f:Ljxc;

    invoke-direct {p0, v1, v2}, Ldqf;-><init>(Lkdp;Ljxc;)V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldtg;->k:Ljava/util/List;

    .line 78
    iget-object v1, p1, Lkfn;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldtg;->h:Z

    .line 80
    iget-object v1, p1, Lkfn;->a:Ljava/lang/Long;

    .line 1051
    invoke-static {v1, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 80
    iput-wide v2, p0, Ldtg;->i:J

    .line 86
    :goto_0
    iget-object v1, p1, Lkfn;->c:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p1, Lkfn;->c:Ljava/lang/Long;

    .line 2051
    invoke-static {v1, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 87
    iput-wide v2, p0, Ldtg;->j:J

    .line 91
    :goto_1
    iget-object v1, p1, Lkfn;->b:[Ljyc;

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 92
    iget-object v4, p0, Ldtg;->k:Ljava/util/List;

    invoke-static {v3}, Ljyc;->a(Llyi;)[B

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 82
    :cond_0
    iput-boolean v0, p0, Ldtg;->h:Z

    .line 83
    iput-wide v4, p0, Ldtg;->i:J

    goto :goto_0

    .line 89
    :cond_1
    const-wide/16 v2, -0x2

    iput-wide v2, p0, Ldtg;->j:J

    goto :goto_1

    .line 94
    :cond_2
    iget-object v0, p1, Lkfn;->e:[Ljzh;

    iget-object v1, p1, Lkfn;->b:[Ljyc;

    .line 95
    invoke-static {v0, v1}, Ldqf;->a([Ljzh;[Ljyc;)[Lcyx;

    move-result-object v0

    iput-object v0, p0, Ldtg;->m:[Lcyx;

    .line 97
    invoke-virtual {p0}, Ldtg;->k()Z

    move-result v0

    iput-boolean v0, p0, Ldtg;->l:Z

    .line 99
    sget-boolean v0, Ldtg;->g:Z

    if-eqz v0, :cond_3

    .line 100
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SyncRecentConversationsResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_3
    return-void
.end method

.method private d(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ldmp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Ldtg;->b:Leff;

    if-eqz v1, :cond_3

    .line 58
    iget-object v0, p0, Ldtg;->b:Leff;

    check-cast v0, Ldpz;

    iget-boolean v0, v0, Ldpz;->d:Z

    .line 60
    sget-boolean v1, Ldtg;->g:Z

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x37

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SRCResp.buildConversationStateList: suppressNotif="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_0
    move v1, v0

    .line 65
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v0, p0, Ldtg;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 68
    invoke-static {v0, v1, p1, p2}, Ldmp;->a([BZJ)Ldmp;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    :cond_2
    return-object v2

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lkfn;

    invoke-direct {v0}, Lkfn;-><init>()V

    .line 2131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 107
    check-cast v0, Lkfn;

    .line 108
    iget-object v1, v0, Lkfn;->responseHeader:Lkdp;

    invoke-static {v1}, Ldtg;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkfn;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 111
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldtg;

    invoke-direct {v1, v0}, Ldtg;-><init>(Lkfn;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfd;)V
    .locals 1

    .prologue
    .line 354
    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    invoke-static {v0, p0}, Ldqf;->a(ILdqf;)V

    .line 357
    :cond_0
    return-void
.end method

.method public a(Lbfz;Ldyy;)V
    .locals 27

    .prologue
    .line 148
    invoke-super/range {p0 .. p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 149
    const-string v4, "Babel_SyncRC"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    const-string v4, "Babel_SyncRC"

    const-string v5, "processSyncRecentConversationsResponse count: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 154
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Ldtg;->d(J)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Ldtg;->h:Z

    move-object/from16 v0, p0

    iget-wide v8, v0, Ldtg;->i:J

    move-object/from16 v0, p0

    iget-boolean v10, v0, Ldtg;->l:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x69

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has_sync_timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sync_timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requestWasForScrollback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 150
    invoke-static {v4, v5, v6}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2327
    :cond_0
    sget-boolean v4, Lexo;->b:Z

    .line 163
    if-eqz v4, :cond_1

    .line 164
    new-instance v4, Lexr;

    invoke-direct {v4}, Lexr;-><init>()V

    const-string v5, "src_response"

    .line 165
    invoke-virtual {v4, v5}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v4

    .line 166
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v5

    invoke-virtual {v4, v5}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Ldtg;->l:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x13

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "forScrollback="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-virtual {v4, v5}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v4

    .line 168
    invoke-virtual {v4}, Lexr;->b()V

    .line 171
    :cond_1
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 172
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 173
    const/16 v19, 0x0

    .line 175
    const-wide/16 v4, 0x0

    .line 176
    sget-boolean v6, Lbft;->a:Z

    if-eqz v6, :cond_1c

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide/from16 v16, v4

    .line 180
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ldtg;->j()Lcqr;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 181
    invoke-virtual/range {p0 .. p0}, Ldtg;->j()Lcqr;

    move-result-object v4

    const-string v5, "sync_recent_conversations_response"

    invoke-interface {v4, v5}, Lcqr;->a(Ljava/lang/String;)V

    .line 183
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lbfz;->a()V

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v12, v4, v6

    .line 186
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Ldtg;->m:[Lcyx;

    if-eqz v4, :cond_4

    .line 189
    move-object/from16 v0, p0

    iget-object v5, v0, Ldtg;->m:[Lcyx;

    array-length v8, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_4

    aget-object v9, v5, v4

    .line 191
    if-eqz v9, :cond_3

    .line 192
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lbfz;->a(Lcyx;Z)Z

    .line 189
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 197
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Ldtg;->c:Ldsf;

    iget-wide v4, v4, Ldsf;->d:J

    .line 198
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Ldtg;->d(J)Ljava/util/List;

    move-result-object v4

    .line 199
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ldmp;

    move-object v14, v0

    .line 201
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v4

    iget-object v5, v14, Ldmp;->b:Lega;

    .line 200
    invoke-static {v4, v5}, Lbft;->a(Lbfd;Lega;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 203
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v4

    const/16 v5, 0x72f

    .line 202
    invoke-static {v4, v5}, Laal;->a(Lbfd;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 310
    :catchall_0
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Lbfz;->c()V

    .line 311
    invoke-virtual/range {p0 .. p0}, Ldtg;->j()Lcqr;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 312
    invoke-virtual/range {p0 .. p0}, Ldtg;->j()Lcqr;

    move-result-object v5

    .line 314
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v6

    invoke-virtual {v6}, Lbfd;->g()I

    move-result v6

    const-string v7, "sync_recent_conversations_response"

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x2

    .line 313
    invoke-interface/range {v5 .. v10}, Lcqr;->a(ILjava/lang/String;JI)V

    :cond_5
    throw v4

    .line 207
    :cond_6
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual/range {p0 .. p0}, Ldtg;->g()J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-ltz v4, :cond_1b

    .line 208
    invoke-virtual/range {p1 .. p1}, Lbfz;->d()V

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide/from16 v20, v4

    .line 211
    :goto_3
    iget-object v4, v14, Ldmp;->a:Ljava/lang/String;

    .line 212
    iget-object v0, v14, Ldmp;->c:Ljava/util/List;

    move-object/from16 v25, v0

    .line 213
    const-string v5, "Babel_SyncRC"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 214
    const-string v5, "Babel_SyncRC"

    .line 215
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2c

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "processing conversation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " events: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 214
    invoke-static {v5, v4, v6}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_7
    const/16 v18, 0x0

    .line 218
    const/4 v15, 0x0

    .line 220
    iget-object v4, v14, Ldmp;->b:Lega;

    if-eqz v4, :cond_8

    .line 221
    iget-object v5, v14, Ldmp;->b:Lega;

    iget-wide v6, v14, Ldmp;->h:J

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    invoke-static/range {v4 .. v11}, Lbft;->a(Lbfz;Lega;JLjava/lang/String;Ldyy;Lbfy;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 229
    const/4 v4, 0x1

    move/from16 v19, v4

    .line 234
    :cond_8
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1a

    .line 235
    iget-object v4, v14, Ldmp;->a:Ljava/lang/String;

    iget-object v5, v14, Ldmp;->e:[B

    iget-wide v6, v14, Ldmp;->f:J

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v6, v7}, Lbft;->a(Lbfz;Ljava/lang/String;[BJ)V

    .line 241
    iget-object v5, v14, Ldmp;->a:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    invoke-static/range {v4 .. v9}, Lbft;->a(Lbfz;Ljava/lang/String;JLdyy;Legf;)Z

    .line 243
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 244
    const/4 v4, 0x0

    move/from16 v5, v18

    move/from16 v18, v4

    move v4, v15

    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v18

    if-ge v0, v6, :cond_c

    .line 245
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Legf;

    .line 249
    invoke-virtual {v6}, Legf;->f()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 250
    invoke-virtual {v6}, Legf;->f()Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    :cond_9
    instance-of v7, v6, Legj;

    if-eqz v7, :cond_a

    .line 254
    const/4 v5, 0x1

    move v15, v5

    .line 269
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ldtg;->h()J

    move-result-wide v8

    .line 270
    invoke-virtual/range {p0 .. p0}, Ldtg;->i()J

    move-result-wide v10

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    .line 265
    invoke-static/range {v5 .. v13}, Lbft;->a(Lbfz;Legf;Ldyy;JJJ)V

    .line 244
    add-int/lit8 v5, v18, 0x1

    move/from16 v18, v5

    move v5, v15

    goto :goto_4

    .line 255
    :cond_a
    instance-of v7, v6, Lefr;

    if-eqz v7, :cond_19

    .line 256
    const/4 v7, 0x1

    .line 257
    invoke-virtual/range {p0 .. p0}, Ldtg;->k()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 258
    move-object v0, v6

    check-cast v0, Lefr;

    move-object v4, v0

    const/4 v8, 0x4

    .line 259
    invoke-virtual {v4, v8}, Lefr;->a(I)V

    move v4, v7

    move v15, v5

    goto :goto_5

    .line 261
    :cond_b
    move-object v0, v6

    check-cast v0, Lefr;

    move-object v4, v0

    const/4 v8, 0x3

    .line 262
    invoke-virtual {v4, v8}, Lefr;->a(I)V

    move v4, v7

    move v15, v5

    goto :goto_5

    .line 3036
    :cond_c
    sget-object v6, Laal;->oJ:Landroid/content/Context;

    .line 274
    iget-object v7, v14, Ldmp;->a:Ljava/lang/String;

    .line 273
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v6, v1, v7, v2}, Ldyy;->a(Landroid/content/Context;Lbfz;Ljava/lang/String;Ljava/util/List;)V

    .line 277
    :goto_6
    if-eqz v4, :cond_d

    .line 278
    iget-object v4, v14, Ldmp;->a:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_d
    if-eqz v5, :cond_e

    .line 281
    iget-object v4, v14, Ldmp;->a:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    move-wide/from16 v6, v20

    .line 283
    goto/16 :goto_2

    .line 285
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Ldtg;->b:Leff;

    check-cast v4, Ldpz;

    invoke-virtual {v4}, Ldpz;->o()I

    move-result v4

    .line 286
    move-object/from16 v0, p0

    iget-boolean v5, v0, Ldtg;->h:Z

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-boolean v5, v0, Ldtg;->l:Z

    if-nez v5, :cond_10

    const/4 v5, 0x5

    if-ne v4, v5, :cond_10

    .line 4036
    sget-object v5, Laal;->oJ:Landroid/content/Context;

    .line 293
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v6

    invoke-virtual {v6}, Lbfd;->g()I

    move-result v6

    const-string v7, "last_successful_sync_time"

    move-object/from16 v0, p0

    iget-wide v8, v0, Ldtg;->i:J

    .line 291
    invoke-static {v5, v6, v7, v8, v9}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;J)V

    .line 297
    :cond_10
    move-object/from16 v0, p0

    iget-wide v6, v0, Ldtg;->j:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v4}, Lbfz;->a(JI)V

    .line 298
    const/4 v5, 0x5

    if-ne v4, v5, :cond_16

    .line 300
    move-object/from16 v0, p0

    iget-wide v4, v0, Ldtg;->j:J

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Lbfz;->a(JI)V

    .line 307
    :cond_11
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lbfz;->l()V

    .line 308
    invoke-virtual/range {p1 .. p1}, Lbfz;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    invoke-virtual/range {p1 .. p1}, Lbfz;->c()V

    .line 311
    invoke-virtual/range {p0 .. p0}, Ldtg;->j()Lcqr;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 312
    invoke-virtual/range {p0 .. p0}, Ldtg;->j()Lcqr;

    move-result-object v5

    .line 314
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v4

    invoke-virtual {v4}, Lbfd;->g()I

    move-result v6

    const-string v7, "sync_recent_conversations_response"

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x2

    .line 313
    invoke-interface/range {v5 .. v10}, Lcqr;->a(ILjava/lang/String;JI)V

    .line 321
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Ldtg;->b:Leff;

    check-cast v4, Ldpz;

    .line 322
    invoke-virtual {v4}, Ldpz;->q()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 326
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v5

    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    invoke-static {v5}, Lebo;->b(I)Lebo;

    move-result-object v5

    .line 327
    invoke-virtual {v5, v4}, Lebo;->c(Ljava/lang/String;)Z

    .line 330
    :cond_13
    sget-boolean v4, Lbft;->a:Z

    if-eqz v4, :cond_14

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 332
    sub-long v4, v4, v16

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x3b

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "processSyncRecentConversations took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_14
    if-eqz v19, :cond_15

    .line 336
    invoke-static/range {p1 .. p1}, Lbft;->d(Lbfz;)V

    .line 338
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lbfz;->a(Lbfz;Ljava/lang/String;)I

    .line 340
    :cond_15
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 341
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 342
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 343
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    goto :goto_8

    .line 302
    :cond_16
    const/4 v5, 0x6

    if-ne v4, v5, :cond_11

    .line 304
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Ldtg;->j:J

    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Lbfz;->a(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    .line 345
    :cond_17
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 346
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 347
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 348
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lbft;->c(Lbfz;Ljava/lang/String;)V

    goto :goto_9

    .line 350
    :cond_18
    return-void

    :cond_19
    move v15, v5

    goto/16 :goto_5

    :cond_1a
    move v4, v15

    move/from16 v5, v18

    goto/16 :goto_6

    :cond_1b
    move-wide/from16 v20, v6

    goto/16 :goto_3

    :cond_1c
    move-wide/from16 v16, v4

    goto/16 :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Ldtg;->b:Leff;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Ldtg;->b:Leff;

    check-cast v0, Ldpz;

    invoke-virtual {v0}, Ldpz;->p()Z

    move-result v0

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
