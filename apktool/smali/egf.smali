.class public abstract Legf;
.super Lefo;
.source "SourceFile"


# static fields
.field private static final d:Z

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field public e:I

.field public final f:I

.field public final g:I

.field public final h:J

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:J

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:I

.field public final r:Ljava/lang/String;

.field public final s:I

.field public final t:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lezi;->d:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Legf;->d:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lczb;JLjava/lang/String;)V
    .locals 7

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Lefo;-><init>(Ljava/lang/String;Lczb;J)V

    .line 141
    iput v4, p0, Legf;->i:I

    .line 142
    iput-object p5, p0, Legf;->l:Ljava/lang/String;

    .line 143
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Legf;->m:J

    .line 144
    iput-object v2, p0, Legf;->j:Ljava/lang/String;

    .line 145
    iput-object v2, p0, Legf;->k:Ljava/lang/String;

    .line 146
    iput v5, p0, Legf;->e:I

    .line 147
    iput v5, p0, Legf;->f:I

    .line 148
    iput v3, p0, Legf;->g:I

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Legf;->h:J

    .line 150
    iput-boolean v3, p0, Legf;->n:Z

    .line 151
    iput-boolean v3, p0, Legf;->o:Z

    .line 152
    iput-boolean v4, p0, Legf;->p:Z

    .line 153
    iput-object v2, p0, Legf;->t:[B

    .line 154
    iput v4, p0, Legf;->q:I

    .line 155
    iput-object v2, p0, Legf;->r:Ljava/lang/String;

    .line 156
    const/4 v0, 0x2

    iput v0, p0, Legf;->s:I

    .line 157
    return-void
.end method

.method public constructor <init>(Ljzl;IJ)V
    .locals 11

    .prologue
    .line 62
    iget-object v0, p1, Ljzl;->a:Ljxw;

    iget-object v0, v0, Ljxw;->a:Ljava/lang/String;

    iget-object v1, p1, Ljzl;->b:Lkcr;

    const/4 v2, 0x0

    .line 63
    invoke-static {v1, v2}, Laal;->a(Lkcr;Ljava/lang/String;)Lczb;

    move-result-object v1

    iget-object v2, p1, Ljzl;->c:Ljava/lang/Long;

    .line 1051
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 62
    invoke-direct {p0, v0, v1, v2, v3}, Lefo;-><init>(Ljava/lang/String;Lczb;J)V

    .line 65
    iput p2, p0, Legf;->g:I

    .line 66
    iput-wide p3, p0, Legf;->h:J

    .line 67
    iget-object v0, p1, Ljzl;->f:Ljava/lang/Integer;

    .line 2043
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 67
    iput v0, p0, Legf;->i:I

    .line 68
    iget-object v0, p1, Ljzl;->d:Ljava/lang/String;

    iput-object v0, p0, Legf;->l:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Ljzl;->o:Ljava/lang/Long;

    .line 2051
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 69
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 70
    const-wide/16 v0, -0x1

    .line 71
    :goto_0
    iput-wide v0, p0, Legf;->m:J

    .line 72
    iget-object v0, p1, Ljzl;->p:Ljava/lang/Boolean;

    .line 4015
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 72
    iput-boolean v0, p0, Legf;->n:Z

    .line 73
    iget-object v0, p1, Ljzl;->r:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Legf;->p:Z

    .line 75
    iget-boolean v0, p0, Legf;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Ljzl;->q:Ljava/lang/Integer;

    .line 4043
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 75
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Legf;->o:Z

    .line 77
    iget-object v0, p1, Ljzl;->y:Ljava/lang/Integer;

    .line 5043
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 77
    iput v0, p0, Legf;->s:I

    .line 79
    iget-object v0, p1, Ljzl;->e:Ljzm;

    if-eqz v0, :cond_8

    .line 80
    iget-object v1, p1, Ljzl;->e:Ljzm;

    .line 81
    iget-object v0, v1, Ljzm;->a:Lkcr;

    iget-object v0, v0, Lkcr;->b:Ljava/lang/String;

    iput-object v0, p0, Legf;->j:Ljava/lang/String;

    .line 82
    iget-object v0, v1, Ljzm;->b:Ljava/lang/Long;

    .line 5051
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 83
    invoke-static {v2, v3}, Lbfz;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Legf;->k:Ljava/lang/String;

    .line 85
    iget-object v0, v1, Ljzm;->c:Ljava/lang/Integer;

    .line 6043
    const/4 v2, 0x0

    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 85
    iput v0, p0, Legf;->f:I

    .line 6240
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 6241
    const-string v0, "Babel_ConversationsData"

    const-string v2, ">>> Other client is active, downgrade notification"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6242
    const/16 v0, 0xa

    .line 88
    :goto_2
    iget-boolean v2, p0, Legf;->n:Z

    if-nez v2, :cond_1

    .line 89
    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 90
    const-string v2, "Babel_ConversationsData"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Ljzl;->p:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Ljzl;->a:Ljxw;

    iget-object v5, v5, Ljxw;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Ljzl;->c:Ljava/lang/Long;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0x84

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

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

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " event received hasAdvancesSortTimestamp = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " advanceSortTimestamp = false, but notificationLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " convId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " timestamp = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const/16 v0, 0xa

    .line 102
    :cond_1
    iput v0, p0, Legf;->e:I

    .line 104
    iget-object v0, v1, Ljzm;->d:Lkfi;

    if-eqz v0, :cond_5

    .line 105
    iget-object v0, v1, Ljzm;->d:Lkfi;

    invoke-static {v0}, Llyi;->a(Llyi;)[B

    move-result-object v0

    iput-object v0, p0, Legf;->t:[B

    .line 109
    :goto_3
    iget-object v0, p1, Ljzl;->s:Ljyp;

    .line 110
    if-eqz v0, :cond_7

    .line 111
    iget-object v1, v0, Ljyp;->a:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    iput v1, p0, Legf;->q:I

    .line 113
    iget-object v1, v0, Ljyp;->b:Llcf;

    if-eqz v1, :cond_6

    .line 114
    iget-object v0, v0, Ljyp;->b:Llcf;

    iget-object v0, v0, Llcf;->a:Ljava/lang/String;

    iput-object v0, p0, Legf;->r:Ljava/lang/String;

    .line 131
    :goto_4
    return-void

    .line 71
    :cond_2
    iget-object v0, p1, Ljzl;->o:Ljava/lang/Long;

    .line 3051
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    goto/16 :goto_0

    .line 75
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 6244
    :cond_4
    iget-object v0, v1, Ljzm;->c:Ljava/lang/Integer;

    .line 7043
    const/4 v2, 0x0

    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    goto/16 :goto_2

    .line 107
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Legf;->t:[B

    goto :goto_3

    .line 116
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Legf;->r:Ljava/lang/String;

    goto :goto_4

    .line 119
    :cond_7
    const/4 v0, 0x1

    iput v0, p0, Legf;->q:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Legf;->r:Ljava/lang/String;

    goto :goto_4

    .line 123
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Legf;->j:Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Legf;->k:Ljava/lang/String;

    .line 125
    const/16 v0, 0xa

    iput v0, p0, Legf;->e:I

    .line 126
    const/16 v0, 0xa

    iput v0, p0, Legf;->f:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Legf;->t:[B

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Legf;->q:I

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Legf;->r:Ljava/lang/String;

    goto :goto_4
.end method

.method public static a(Ljzl;IJZIJJJ)Legf;
    .locals 18

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->m:Lkco;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->m:Lkco;

    iget-object v4, v4, Lkco;->a:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 301
    new-instance v5, Legl;

    move-object/from16 v0, p0

    iget-object v10, v0, Ljzl;->m:Lkco;

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Legl;-><init>(Ljzl;IJLkco;)V

    .line 334
    :goto_0
    return-object v5

    .line 303
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->g:Ljxh;

    if-eqz v4, :cond_4

    .line 304
    const/4 v4, -0x1

    move/from16 v0, p5

    if-eq v0, v4, :cond_2

    .line 7257
    sget-object v4, Ldvp;->o:Ldml;

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ldml;->b(I)Z

    move-result v4

    .line 305
    if-eqz v4, :cond_2

    .line 8248
    invoke-static/range {p5 .. p5}, Ldvd;->e(I)Lbfd;

    move-result-object v5

    .line 8249
    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->w:Ljxc;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->w:Ljxc;

    iget-object v4, v4, Ljxc;->b:Ljava/lang/Long;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->w:Ljxc;

    iget-object v4, v4, Ljxc;->d:Ljava/lang/Long;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->w:Ljxc;

    iget-object v4, v4, Ljxc;->a:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 8254
    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->w:Ljxc;

    iget-object v4, v4, Ljxc;->a:Ljava/lang/String;

    .line 8255
    move-object/from16 v0, p0

    iget-object v6, v0, Ljzl;->w:Ljxc;

    iget-object v6, v6, Ljxc;->d:Ljava/lang/Long;

    .line 9051
    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 8256
    new-instance v8, Lduu;

    .line 10036
    sget-object v9, Laal;->oJ:Landroid/content/Context;

    .line 8256
    invoke-direct {v8, v9}, Lduu;-><init>(Landroid/content/Context;)V

    .line 8259
    move/from16 v0, p5

    invoke-virtual {v8, v0, v4}, Lduu;->a(ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 8260
    move/from16 v0, p5

    invoke-virtual {v8, v0}, Lduu;->b(I)J

    move-result-wide v10

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    .line 8262
    move-object/from16 v0, p0

    iget-object v6, v0, Ljzl;->w:Ljxc;

    iget-object v6, v6, Ljxc;->b:Ljava/lang/Long;

    .line 10051
    const-wide/16 v10, 0x0

    invoke-static {v6, v10, v11}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 8262
    move/from16 v0, p5

    invoke-virtual {v8, v0, v6, v7}, Lduu;->a(IJ)V

    .line 8264
    move/from16 v0, p5

    invoke-virtual {v8, v0, v4}, Lduu;->b(ILjava/lang/String;)V

    .line 8269
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->w:Ljxc;

    iget-object v4, v4, Ljxc;->c:Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 10267
    sget-object v4, Ldvp;->p:Ldml;

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ldml;->b(I)Z

    move-result v4

    .line 8270
    if-eqz v4, :cond_2

    .line 8271
    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->w:Ljxc;

    iget-object v4, v4, Ljxc;->c:Ljava/lang/Long;

    .line 11051
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 8272
    move/from16 v0, p5

    invoke-virtual {v8, v0}, Lduu;->a(I)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    .line 8274
    const-string v8, "Babel_ConversationsData"

    const-string v9, "Perform warm sync due to mismatched hash values for account "

    .line 8277
    invoke-virtual {v5}, Lbfd;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    .line 8274
    invoke-static {v8, v4, v9}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8282
    invoke-virtual {v5}, Lbfd;->g()I

    move-result v4

    const/4 v8, 0x0

    sget-object v9, Lebq;->c:Lebq;

    .line 8281
    invoke-static {v4, v8, v9, v6, v7}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZLebq;J)V

    .line 8286
    const/16 v4, 0x905

    invoke-static {v5, v4}, Laal;->a(Lbfd;I)V

    .line 308
    :cond_2
    new-instance v5, Lefr;

    move-object/from16 v0, p0

    iget-object v10, v0, Ljzl;->g:Ljxh;

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v11, p4

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move-wide/from16 v16, p10

    invoke-direct/range {v5 .. v17}, Lefr;-><init>(Ljzl;IJLjxh;ZJJJ)V

    goto/16 :goto_0

    .line 8277
    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 317
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->h:Lkcc;

    if-eqz v4, :cond_5

    .line 318
    new-instance v5, Legj;

    move-object/from16 v0, p0

    iget-object v10, v0, Ljzl;->h:Lkcc;

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Legj;-><init>(Ljzl;IJLkcc;)V

    goto/16 :goto_0

    .line 320
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->i:Ljxz;

    if-eqz v4, :cond_6

    .line 321
    new-instance v5, Legb;

    move-object/from16 v0, p0

    iget-object v10, v0, Ljzl;->i:Ljxz;

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Legb;-><init>(Ljzl;IJLjxz;)V

    goto/16 :goto_0

    .line 323
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->j:Lkaw;

    if-eqz v4, :cond_7

    .line 324
    new-instance v5, Legg;

    move-object/from16 v0, p0

    iget-object v10, v0, Ljzl;->j:Lkaw;

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Legg;-><init>(Ljzl;IJLkaw;)V

    goto/16 :goto_0

    .line 326
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->k:Lkcq;

    if-eqz v4, :cond_8

    .line 327
    new-instance v5, Legm;

    move-object/from16 v0, p0

    iget-object v10, v0, Ljzl;->k:Lkcq;

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Legm;-><init>(Ljzl;IJLkcq;)V

    goto/16 :goto_0

    .line 329
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->e:Ljzm;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Ljzl;->e:Ljzm;

    iget-object v4, v4, Ljzm;->d:Lkfi;

    if-eqz v4, :cond_9

    .line 331
    new-instance v5, Legw;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-direct {v5, v0, v1, v2, v3}, Legw;-><init>(Ljzl;IJ)V

    goto/16 :goto_0

    .line 333
    :cond_9
    const-string v4, "Babel_ConversationsData"

    const-string v5, "Received Empty Event. Probably not implemented by server yet."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public static a([Ljzl;ZJ)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljzl;",
            "ZJ)",
            "Ljava/util/List",
            "<",
            "Legf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 348
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    aget-object v2, p0, v14

    .line 351
    if-eqz p1, :cond_1

    .line 354
    const/4 v3, 0x2

    .line 355
    :goto_1
    const/4 v6, 0x0

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-wide/from16 v4, p2

    .line 351
    invoke-static/range {v2 .. v13}, Legf;->a(Ljzl;IJZIJJJ)Legf;

    move-result-object v2

    .line 362
    if-eqz v2, :cond_0

    .line 363
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_0
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    .line 355
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 366
    :cond_2
    return-object v15
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 12

    .prologue
    const/4 v9, 0x3

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 372
    invoke-virtual {p0}, Legf;->a()Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-virtual {p0}, Legf;->c()J

    move-result-wide v2

    .line 375
    invoke-virtual {p0}, Legf;->r()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, p1

    move-object v4, p2

    move-object v5, p0

    .line 376
    invoke-static/range {v0 .. v5}, Lbft;->a(Lbfz;Ljava/lang/String;JLdyy;Legf;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 383
    sget-boolean v0, Legf;->d:Z

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Legf;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x44

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "processEvent saving event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " eventId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 11429
    :cond_1
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v4

    invoke-virtual {v4}, Lbfd;->b()Lczb;

    move-result-object v10

    .line 11430
    invoke-virtual {p0}, Legf;->a()Ljava/lang/String;

    move-result-object v11

    .line 11431
    invoke-virtual {p0}, Legf;->b()Lczb;

    move-result-object v4

    .line 11433
    invoke-virtual {v4}, Lczb;->a()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 11435
    const-string v0, "Babel_ConversationsData"

    const-string v4, "Sender id for unpersisted event should not be empty"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    move v0, v6

    .line 401
    :goto_2
    if-nez v0, :cond_9

    .line 402
    sget-boolean v0, Legf;->d:Z

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Legf;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unable to process unpersisted event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " eventId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11442
    :cond_3
    invoke-virtual {v4, v10}, Lczb;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 11444
    invoke-virtual {p1, v4, v6, v0}, Lbfz;->a(Lczb;ZI)Lbgq;

    move-result-object v7

    .line 11446
    if-eqz v7, :cond_5

    iget-object v8, v7, Lbgq;->a:Ljava/lang/String;

    invoke-static {v8}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 11450
    sget-boolean v4, Legf;->d:Z

    if-eqz v4, :cond_4

    .line 11451
    iget-object v4, v7, Lbgq;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2b

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "unpersisted conversation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exists locally as"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11458
    :cond_4
    iget-object v4, v7, Lbgq;->a:Ljava/lang/String;

    invoke-virtual {p0, v4}, Legf;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 11463
    :cond_5
    const-string v7, "Babel_ConversationsData"

    invoke-static {v7, v9}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 11464
    const-string v7, "Babel_ConversationsData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x24

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "conversation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exist locally"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v6}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11466
    :cond_6
    invoke-virtual {p0}, Legf;->c()J

    move-result-wide v6

    invoke-virtual {p1, v11, v6, v7, v4}, Lbfz;->a(Ljava/lang/String;JLczb;)V

    .line 11469
    invoke-virtual {p1, v11}, Lbfz;->C(Ljava/lang/String;)V

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 11472
    invoke-static/range {v4 .. v9}, Laal;->a(Lczb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcyx;

    move-result-object v5

    .line 11470
    invoke-virtual {p1, v11, v5}, Lbfz;->a(Ljava/lang/String;Lcyx;)V

    .line 11477
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 11478
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11479
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 11482
    invoke-virtual {p2, v4, p1, v11, v5}, Ldyy;->a(Landroid/content/Context;Lbfz;Ljava/lang/String;Ljava/util/List;)V

    .line 11484
    invoke-static {p1, v11}, Lbft;->b(Lbfz;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 11488
    :cond_7
    const-string v0, "Babel_ConversationsData"

    invoke-static {v0, v9}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11489
    const-string v4, "Babel_ConversationsData"

    const-string v5, "Only self user Id is present, cannot determine conversation for "

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 13036
    :cond_9
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 417
    invoke-virtual {p0}, Legf;->f()Ljava/util/List;

    move-result-object v4

    .line 416
    invoke-virtual {p2, v0, p1, v1, v4}, Ldyy;->a(Landroid/content/Context;Lbfz;Ljava/lang/String;Ljava/util/List;)V

    .line 419
    invoke-virtual {p0, p1, p2}, Legf;->b(Lbfz;Ldyy;)V

    .line 13226
    iget-boolean v0, p0, Legf;->n:Z

    .line 421
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p1, v1, v2, v3}, Lbfz;->h(Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method protected abstract b(Lbfz;Ldyy;)V
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Legf;->l:Ljava/lang/String;

    return-object v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Legf;->m:J

    return-wide v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Legf;->e:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Legf;->g:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Legf;->k:Ljava/lang/String;

    return-object v0
.end method

.method public o()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Legf;->h:J

    return-wide v0
.end method

.method public p()[B
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Legf;->t:[B

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Legf;->o:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Legf;->p:Z

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Legf;->q:I

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Legf;->r:Ljava/lang/String;

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Legf;->s:I

    return v0
.end method
