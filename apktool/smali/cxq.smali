.class public final Lcxq;
.super Lcya;
.source "SourceFile"


# static fields
.field private static final s:Z


# instance fields
.field public a:Lemd;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lemc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcxt;->b:Z

    sput-boolean v0, Lcxq;->s:Z

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 17

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Lcya;-><init>()V

    .line 1302
    const/16 v2, 0x8

    const/16 v3, 0x9

    .line 1303
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcwz;->a(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v7

    .line 1305
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1306
    const/16 v2, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1307
    const/16 v2, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1309
    new-instance v3, Lcwz;

    const/16 v2, 0xa

    .line 1312
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v2, 0xb

    .line 1314
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v2, 0x15

    .line 1317
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v2, 0x16

    .line 1318
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-direct/range {v3 .. v15}, Lcwz;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZILjava/lang/String;IJ)V

    .line 92
    move-object/from16 v0, p0

    iput-object v3, v0, Lcxq;->o:Lcwz;

    .line 94
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->r:Ljava/lang/String;

    .line 95
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 96
    invoke-static {}, Lemd;->values()[Lemd;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->a:Lemd;

    .line 97
    const/16 v2, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcxq;->e:I

    .line 98
    move-object/from16 v0, p0

    iget v2, v0, Lcxq;->e:I

    .line 99
    invoke-static {v2}, Lekq;->a(I)Leku;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->p:Leku;

    .line 100
    const/16 v2, 0x1a

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->k:Ljava/lang/String;

    .line 101
    const/16 v2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->l:Ljava/lang/String;

    .line 103
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    const/16 v2, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->h:Ljava/lang/String;

    .line 106
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->m:Ljava/lang/String;

    .line 107
    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 108
    const/16 v2, 0x11

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 109
    const/16 v2, 0x17

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 113
    const/16 v2, 0x13

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcxq;->f:I

    .line 114
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcxq;->f:I

    if-ne v2, v4, :cond_5

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcxq;->g:Z

    .line 115
    move-object/from16 v0, p0

    iget v2, v0, Lcxq;->e:I

    .line 116
    invoke-static {v2}, Laal;->e(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcxq;->g:Z

    if-nez v2, :cond_6

    move-object v2, v3

    .line 118
    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->b:Ljava/lang/CharSequence;

    .line 2241
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2242
    if-nez v2, :cond_0

    .line 2243
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2244
    const/16 v3, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2245
    const-string v4, "hangouts/location"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2246
    invoke-static {v2}, Lezc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    :cond_0
    const/16 v3, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcxq;->a(Ljava/lang/String;)I

    move-result v3

    .line 131
    if-eqz v2, :cond_d

    sget-object v4, Lenn;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 135
    invoke-static {v2}, Lcxq;->b(Ljava/lang/String;)Leno;

    move-result-object v2

    .line 136
    if-eqz v2, :cond_8

    .line 137
    iget-object v3, v2, Leno;->a:Ljava/lang/String;

    .line 138
    iget-object v2, v2, Leno;->b:Ljava/lang/String;

    invoke-static {v2}, Lcxq;->a(Ljava/lang/String;)I

    move-result v2

    .line 145
    :goto_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    if-eqz v3, :cond_2

    .line 3036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 147
    invoke-static {v4}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "sticker://"

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    :cond_1
    const/4 v2, 0x7

    .line 151
    :cond_2
    move-object/from16 v0, p0

    iput v2, v0, Lcxq;->d:I

    .line 152
    move-object/from16 v0, p0

    iput-object v3, v0, Lcxq;->c:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxq;->o:Lcwz;

    iget-boolean v2, v2, Lcwz;->c:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcxq;->e:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 155
    if-nez v11, :cond_9

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxq;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->q:Ljava/lang/String;

    .line 173
    :cond_3
    :goto_3
    const/16 v2, 0x18

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->i:Ljava/lang/String;

    .line 174
    const/16 v2, 0x19

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcxq;->j:J

    .line 175
    invoke-static {}, Lemc;->values()[Lemc;

    move-result-object v2

    const/16 v3, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->n:Lemc;

    .line 176
    sget-boolean v2, Lcxq;->s:Z

    if-eqz v2, :cond_4

    .line 177
    const-string v2, "Message Line from "

    move-object/from16 v0, p0

    iget-object v3, v0, Lcxq;->r:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    :cond_4
    :goto_4
    return-void

    .line 114
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 118
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxq;->a:Lemd;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcxq;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcxq;->m:Ljava/lang/String;

    .line 2207
    sget-object v4, Lcxr;->a:[I

    invoke-virtual {v2}, Lemd;->ordinal()I

    move-result v10

    aget v4, v4, v10

    packed-switch v4, :pswitch_data_0

    .line 2229
    invoke-static/range {p2 .. p2}, Ldvd;->e(I)Lbfd;

    move-result-object v3

    sget-object v4, Lemc;->e:Lemc;

    const/4 v10, 0x1

    .line 2227
    invoke-static/range {v2 .. v10}, Laal;->a(Lemd;Lbfd;Lemc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    .line 2192
    :pswitch_0
    if-eqz v3, :cond_7

    .line 2193
    invoke-static {v3}, Lcxt;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_1

    .line 2213
    :pswitch_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Message with deprecated membership change type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2195
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 140
    :cond_8
    const/4 v3, 0x0

    .line 141
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 160
    :cond_9
    move-object/from16 v0, p0

    iput-object v11, v0, Lcxq;->q:Ljava/lang/String;

    goto/16 :goto_3

    .line 163
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxq;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcxq;->o:Lcwz;

    move/from16 v0, p2

    invoke-static {v11, v2, v3, v0}, Lcxq;->a(Ljava/lang/String;Ljava/lang/String;Lcwz;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->q:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxq;->r:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxq;->o:Lcwz;

    iget-object v2, v2, Lcwz;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->r:Ljava/lang/String;

    .line 168
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxq;->q:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxq;->o:Lcwz;

    iget-object v2, v2, Lcwz;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxq;->q:Ljava/lang/String;

    goto/16 :goto_3

    .line 177
    :cond_c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    move/from16 v16, v3

    move-object v3, v2

    move/from16 v2, v16

    goto/16 :goto_2

    .line 2207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 3084
    invoke-static {p0}, Laal;->b(Ljava/lang/String;)Z

    move-result v0

    .line 253
    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    .line 3088
    :cond_0
    invoke-static {p0}, Laal;->c(Ljava/lang/String;)Z

    move-result v0

    .line 257
    if-eqz v0, :cond_1

    .line 258
    const/4 v0, 0x2

    goto :goto_0

    .line 3092
    :cond_1
    invoke-static {p0}, Laal;->d(Ljava/lang/String;)Z

    move-result v0

    .line 261
    if-eqz v0, :cond_2

    .line 262
    const/4 v0, 0x3

    goto :goto_0

    .line 265
    :cond_2
    const-string v0, "hangouts/location"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    const/4 v0, 0x4

    goto :goto_0

    .line 269
    :cond_3
    invoke-static {p0}, Laen;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    const/4 v0, 0x6

    goto :goto_0

    .line 273
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;IZZZ)Lcwx;
    .locals 20

    .prologue
    .line 618
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 619
    const/4 v13, 0x0

    .line 621
    sget-object v2, Lcom/google/android/apps/hangouts/content/EsProvider;->k:Landroid/net/Uri;

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    .line 622
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 623
    invoke-static/range {p0 .. p1}, Lbff;->d(Landroid/content/Context;I)Lczb;

    move-result-object v4

    iget-object v10, v4, Lczb;->b:Ljava/lang/String;

    .line 625
    if-nez p4, :cond_6

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 629
    const-string v7, "babel_old_message_without_notification"

    sget-wide v8, Leea;->d:J

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8, v9}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    .line 633
    sub-long/2addr v4, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 634
    if-nez v10, :cond_1

    .line 636
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    .line 639
    :goto_0
    if-nez v10, :cond_2

    .line 641
    sget-object v4, Lcxs;->f:Ljava/lang/String;

    .line 644
    :goto_1
    if-nez v10, :cond_3

    .line 646
    sget-object v7, Lcxs;->h:Ljava/lang/String;

    move-object v8, v7

    .line 649
    :goto_2
    if-nez v10, :cond_4

    .line 651
    sget-object v7, Lcxs;->c:Ljava/lang/String;

    .line 7319
    :goto_3
    sget-object v9, Ldvp;->v:Ldml;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ldml;->b(I)Z

    move-result v9

    .line 654
    if-eqz v9, :cond_5

    .line 7345
    sget-object v9, Ldvp;->x:Ldml;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ldml;->b(I)Z

    move-result v9

    .line 655
    if-eqz v9, :cond_5

    move/from16 v7, p1

    .line 657
    invoke-static/range {v2 .. v7}, Lcxq;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;I)V

    move-object v4, v8

    move/from16 v7, p1

    .line 659
    invoke-static/range {v2 .. v7}, Lcxq;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;I)V

    .line 715
    :cond_0
    :goto_4
    new-instance v12, Lbgc;

    invoke-direct {v12}, Lbgc;-><init>()V

    .line 8319
    sget-object v2, Ldvp;->v:Ldml;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ldml;->b(I)Z

    move-result v2

    .line 718
    if-eqz v2, :cond_a

    .line 8345
    sget-object v2, Ldvp;->x:Ldml;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ldml;->b(I)Z

    move-result v2

    .line 719
    if-eqz v2, :cond_a

    .line 720
    const/16 v7, 0x1cb

    const/16 v8, 0x197

    const/16 v9, 0x1d1

    move/from16 v5, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v5 .. v12}, Lcxq;->a(ILjava/util/List;IIIZZLbgc;)V

    .line 741
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v13

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcwz;

    .line 742
    iget v2, v2, Lcwz;->i:I

    add-int/2addr v2, v3

    move v3, v2

    .line 743
    goto :goto_6

    .line 637
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v10, v5, v7

    const/4 v7, 0x1

    aput-object v4, v5, v7

    goto :goto_0

    .line 642
    :cond_2
    sget-object v4, Lcxs;->g:Ljava/lang/String;

    goto :goto_1

    .line 647
    :cond_3
    sget-object v7, Lcxs;->i:Ljava/lang/String;

    move-object v8, v7

    goto :goto_2

    .line 652
    :cond_4
    sget-object v7, Lcxs;->d:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v4, v7

    move/from16 v7, p1

    .line 661
    invoke-static/range {v2 .. v7}, Lcxq;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_4

    .line 678
    :cond_6
    const-string v4, "babel_business_renotification_lookback_ms"

    sget-wide v8, Leea;->o:J

    .line 679
    move-object/from16 v0, p0

    invoke-static {v0, v4, v8, v9}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v14

    .line 684
    new-instance v11, Lbfz;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 685
    invoke-virtual {v11}, Lbfz;->k()Ljava/util/ArrayList;

    move-result-object v4

    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 688
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 689
    sub-long v8, v16, v14

    const-wide/16 v18, 0x3e8

    mul-long v8, v8, v18

    .line 690
    invoke-virtual {v11, v4, v8, v9}, Lbfz;->c(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v5

    .line 697
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 698
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbgo;

    iget-wide v8, v5, Lbgo;->h:J

    .line 701
    :goto_8
    if-nez v10, :cond_8

    .line 703
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    const/4 v4, 0x1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    .line 706
    :goto_9
    if-nez v10, :cond_9

    .line 708
    sget-object v4, Lcxs;->k:Ljava/lang/String;

    :goto_a
    move/from16 v7, p1

    .line 711
    invoke-static/range {v2 .. v7}, Lcxq;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_7

    .line 699
    :cond_7
    sub-long v8, v16, v14

    const-wide/16 v18, 0x3e8

    mul-long v8, v8, v18

    goto :goto_8

    .line 704
    :cond_8
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    const/4 v4, 0x1

    aput-object v10, v5, v4

    const/4 v4, 0x2

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    goto :goto_9

    .line 709
    :cond_9
    sget-object v4, Lcxs;->l:Ljava/lang/String;

    goto :goto_a

    .line 730
    :cond_a
    const/16 v7, 0x1c8

    const/16 v8, 0x194

    const/16 v9, 0x1ce

    move/from16 v5, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v5 .. v12}, Lcxq;->a(ILjava/util/List;IIIZZLbgc;)V

    goto/16 :goto_5

    .line 745
    :cond_b
    new-instance v2, Lcwx;

    invoke-direct {v2, v3, v6}, Lcwx;-><init>(ILjava/util/List;)V

    return-object v2
.end method

.method private static a(ILjava/lang/String;JLbgc;Lcsn;)V
    .locals 4

    .prologue
    .line 871
    new-instance v0, Lbfz;

    .line 9036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 871
    invoke-direct {v0, v1, p0}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 873
    invoke-virtual {v0, p1}, Lbfz;->u(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p4, Lbgc;->k:J

    .line 874
    invoke-virtual {v0, p1}, Lbfz;->t(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p4, Lbgc;->j:J

    .line 875
    iput-wide p2, p4, Lbgc;->i:J

    .line 876
    invoke-virtual {p5, p4}, Lcsn;->a(Lbgc;)Lcsn;

    .line 877
    return-void
.end method

.method static a(ILjava/util/List;IIIZZLbgc;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcwz;",
            ">;IIIZZ",
            "Lbgc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 888
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 889
    if-gtz v12, :cond_1

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    if-eqz p5, :cond_6

    .line 903
    const-wide/16 v4, 0x0

    .line 904
    const-string v8, ""

    .line 905
    const-string v3, ""

    .line 906
    const-string v7, ""

    .line 907
    const-string v6, ""

    .line 909
    const/4 v2, 0x0

    move v9, v2

    :goto_1
    if-ge v9, v12, :cond_2

    .line 910
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcwz;

    iget-object v2, v2, Lcwz;->h:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcxq;

    if-eqz v2, :cond_b

    .line 916
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcwz;

    iget-object v2, v2, Lcwz;->h:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcxq;

    .line 917
    iget-object v10, v2, Lcxq;->l:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 918
    cmp-long v13, v4, v10

    if-gez v13, :cond_b

    .line 920
    iget-object v5, v2, Lcxq;->k:Ljava/lang/String;

    .line 921
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcwz;

    iget-object v4, v3, Lcwz;->a:Ljava/lang/String;

    .line 922
    iget-object v3, v2, Lcxq;->h:Ljava/lang/String;

    .line 923
    iget-object v2, v2, Lcxq;->m:Ljava/lang/String;

    move-wide v6, v10

    .line 909
    :goto_2
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move-object v8, v5

    move-object v14, v3

    move-object v3, v4

    move-wide v4, v6

    move-object v6, v2

    move-object v7, v14

    goto :goto_1

    .line 927
    :cond_2
    new-instance v2, Lczb;

    invoke-direct {v2, v7, v6}, Lczb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-static {p0}, Ldvd;->e(I)Lbfd;

    move-result-object v6

    invoke-virtual {v6}, Lbfd;->b()Lczb;

    move-result-object v6

    invoke-virtual {v6, v2}, Lczb;->a(Lczb;)Z

    move-result v2

    .line 931
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v2, :cond_0

    .line 9219
    new-instance v2, Lcsn;

    .line 10040
    invoke-direct {v2}, Lcsn;-><init>()V

    .line 938
    invoke-virtual {v2, v8}, Lcsn;->c(Ljava/lang/String;)Lcsn;

    move-result-object v2

    if-eqz p6, :cond_4

    .line 939
    :goto_3
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcsn;->a(I)Lcsn;

    move-result-object v2

    .line 940
    invoke-virtual {v2, v3}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v6

    const/4 v2, 0x1

    if-ne v12, v2, :cond_5

    const/4 v2, 0x1

    .line 941
    :goto_4
    invoke-virtual {v6, v2}, Lcsn;->b(Z)Lcsn;

    move-result-object v7

    .line 943
    if-eqz p7, :cond_3

    move v2, p0

    move-object/from16 v6, p7

    .line 944
    invoke-static/range {v2 .. v7}, Lcxq;->a(ILjava/lang/String;JLbgc;Lcsn;)V

    .line 949
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0xa

    .line 948
    invoke-static {p0, v2, v3, v4, v7}, Laen;->a(IJILcsn;)V

    goto/16 :goto_0

    :cond_4
    move/from16 p2, p3

    .line 939
    goto :goto_3

    .line 940
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 958
    :cond_6
    const/4 v2, 0x0

    move v9, v2

    :goto_5
    if-ge v9, v12, :cond_0

    .line 959
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcwz;

    iget-object v2, v2, Lcwz;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 963
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcwz;

    iget-object v10, v2, Lcwz;->h:Ljava/util/List;

    .line 964
    const/4 v2, 0x0

    move v8, v2

    :goto_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_a

    .line 965
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcxq;

    if-eqz v2, :cond_8

    .line 969
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcxq;

    .line 970
    iget-object v3, v2, Lcxq;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 10219
    new-instance v3, Lcsn;

    .line 11040
    invoke-direct {v3}, Lcsn;-><init>()V

    .line 974
    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lcsn;->a(I)Lcsn;

    move-result-object v3

    iget-object v4, v2, Lcxq;->k:Ljava/lang/String;

    .line 975
    invoke-virtual {v3, v4}, Lcsn;->c(Ljava/lang/String;)Lcsn;

    move-result-object v4

    .line 976
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcwz;

    iget-object v3, v3, Lcwz;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v4

    const/4 v3, 0x1

    if-ne v12, v3, :cond_9

    const/4 v3, 0x1

    .line 977
    :goto_7
    invoke-virtual {v4, v3}, Lcsn;->b(Z)Lcsn;

    move-result-object v7

    .line 979
    if-eqz p7, :cond_7

    .line 982
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcwz;

    iget-object v3, v3, Lcwz;->a:Ljava/lang/String;

    iget-object v2, v2, Lcxq;->l:Ljava/lang/String;

    .line 983
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move v2, p0

    move-object/from16 v6, p7

    .line 980
    invoke-static/range {v2 .. v7}, Lcxq;->a(ILjava/lang/String;JLbgc;Lcsn;)V

    .line 990
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0xa

    .line 988
    invoke-static {p0, v2, v3, v4, v7}, Laen;->a(IJILcsn;)V

    .line 964
    :cond_8
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_6

    .line 976
    :cond_9
    const/4 v3, 0x0

    goto :goto_7

    .line 958
    :cond_a
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_5

    :cond_b
    move-object v2, v6

    move-object v14, v7

    move-wide v6, v4

    move-object v4, v3

    move-object v5, v8

    move-object v3, v14

    goto/16 :goto_2
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcwz;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 596
    sget-object v4, Lcxs;->a:[Ljava/lang/String;

    const-string v7, "merge_key, timestamp DESC"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 597
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4816
    if-eqz v10, :cond_14

    .line 4818
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4822
    const/4 v2, 0x0

    move-object v9, v2

    .line 4825
    :goto_0
    new-instance v11, Lcxq;

    move/from16 v0, p5

    invoke-direct {v11, v10, v0}, Lcxq;-><init>(Landroid/database/Cursor;I)V

    .line 5749
    invoke-static/range {p5 .. p5}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    .line 5750
    iget-object v3, v11, Lcxq;->o:Lcwz;

    if-eqz v3, :cond_6

    iget-object v3, v11, Lcxq;->o:Lcwz;

    iget-object v3, v3, Lcwz;->a:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v11, Lcxq;->o:Lcwz;

    iget-object v3, v3, Lcwz;->a:Ljava/lang/String;

    .line 5752
    invoke-static {v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->d(Lbfd;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move v3, v2

    .line 5758
    :goto_1
    new-instance v2, Lbfz;

    .line 6036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 5758
    move/from16 v0, p5

    invoke-direct {v2, v4, v0}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 5759
    iget-object v4, v11, Lcxq;->m:Ljava/lang/String;

    invoke-static {v4}, Lczb;->b(Ljava/lang/String;)Lczb;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbfz;->b(Lczb;)I

    move-result v2

    .line 5760
    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    const/4 v2, 0x1

    move v8, v2

    .line 5762
    :goto_2
    iget v2, v11, Lcxq;->e:I

    .line 5763
    invoke-static {v2}, Laal;->f(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v11, Lcxq;->r:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v11, Lcxq;->q:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v11, Lcxq;->b:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    iget-object v2, v11, Lcxq;->o:Lcwz;

    iget-object v2, v2, Lcwz;->f:Ljava/lang/String;

    if-eqz v2, :cond_8

    :cond_0
    const/4 v2, 0x1

    move v7, v2

    .line 6319
    :goto_3
    sget-object v2, Ldvp;->v:Ldml;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ldml;->b(I)Z

    move-result v2

    .line 5771
    if-eqz v2, :cond_9

    .line 6345
    sget-object v2, Ldvp;->x:Ldml;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ldml;->b(I)Z

    move-result v2

    .line 5772
    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    const/4 v2, 0x1

    move v6, v2

    .line 5775
    :goto_4
    if-nez v7, :cond_1

    .line 5776
    const-string v12, "Babel"

    iget-object v2, v11, Lcxq;->r:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 5779
    const-string v2, " null authorFullName "

    move-object v5, v2

    :goto_5
    iget-object v2, v11, Lcxq;->q:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 5780
    const-string v2, " null authorDisplayName "

    move-object v4, v2

    :goto_6
    iget-object v2, v11, Lcxq;->b:Ljava/lang/CharSequence;

    if-nez v2, :cond_c

    .line 5781
    const-string v2, " null text "

    move-object v3, v2

    :goto_7
    iget-object v2, v11, Lcxq;->o:Lcwz;

    iget-object v2, v2, Lcwz;->f:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 5783
    const-string v2, " null groupConversationName "

    .line 5784
    :goto_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1d

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Skipping notification because"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 5776
    invoke-static {v12, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5787
    :cond_1
    if-eqz v6, :cond_2

    .line 5788
    const-string v3, "Babel"

    const-string v4, "Skipping notification because the user focuses in the conversation: "

    iget-object v2, v11, Lcxq;->o:Lcwz;

    iget-object v2, v2, Lcwz;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_9
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5794
    :cond_2
    if-eqz v8, :cond_3

    .line 5795
    const-string v3, "Babel"

    const-string v4, "Skipping notification because the message is sent from blocked participant: "

    iget-object v2, v11, Lcxq;->m:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_a
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5801
    :cond_3
    if-eqz v7, :cond_10

    if-nez v6, :cond_10

    if-nez v8, :cond_10

    const/4 v2, 0x1

    .line 4827
    :goto_b
    if-eqz v2, :cond_17

    .line 4828
    if-eqz v9, :cond_4

    iget-object v2, v11, Lcxq;->o:Lcwz;

    iget-object v2, v2, Lcwz;->b:Ljava/lang/String;

    iget-object v3, v9, Lcwz;->b:Ljava/lang/String;

    .line 4829
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 4830
    :cond_4
    const-string v2, "Babel"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4831
    const-string v3, "Babel"

    if-nez v9, :cond_11

    .line 4834
    const-string v2, "null"

    :goto_c
    iget-object v4, v11, Lcxq;->o:Lcwz;

    iget-object v4, v4, Lcwz;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2c

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "[Notifications] conversationId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " newConvId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 4831
    invoke-static {v3, v2, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4838
    :cond_5
    iget-object v9, v11, Lcxq;->o:Lcwz;

    .line 4843
    const/4 v2, 0x0

    move v3, v2

    .line 4844
    :goto_d
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_12

    iget-wide v4, v9, Lcwz;->g:J

    .line 4845
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcwz;

    iget-wide v6, v2, Lcwz;->g:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_12

    .line 4846
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_d

    .line 5752
    :cond_6
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1

    .line 5760
    :cond_7
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_2

    .line 5763
    :cond_8
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_3

    .line 5772
    :cond_9
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_4

    .line 5779
    :cond_a
    const-string v2, ""

    move-object v5, v2

    goto/16 :goto_5

    .line 5780
    :cond_b
    const-string v2, ""

    move-object v4, v2

    goto/16 :goto_6

    .line 5781
    :cond_c
    const-string v2, ""

    move-object v3, v2

    goto/16 :goto_7

    .line 5784
    :cond_d
    const-string v2, ""

    goto/16 :goto_8

    .line 5788
    :cond_e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    .line 4860
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 5795
    :cond_f
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 5801
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 4834
    :cond_11
    iget-object v2, v9, Lcwz;->a:Ljava/lang/String;

    goto/16 :goto_c

    .line 4848
    :cond_12
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_15

    .line 4849
    move-object/from16 v0, p4

    invoke-interface {v0, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v2, v9

    .line 4854
    :goto_e
    iget-object v3, v2, Lcwz;->h:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4855
    iget v3, v2, Lcwz;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcwz;->i:I

    .line 4857
    :goto_f
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_18

    .line 4860
    :cond_13
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4861
    :cond_14
    return-void

    .line 4851
    :cond_15
    :try_start_2
    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_16
    move-object v2, v9

    goto :goto_e

    :cond_17
    move-object v2, v9

    goto :goto_f

    :cond_18
    move-object v9, v2

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)Leno;
    .locals 3

    .prologue
    .line 284
    invoke-static {p0}, Lenn;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leno;

    .line 286
    iget-object v2, v0, Leno;->b:Ljava/lang/String;

    .line 4084
    invoke-static {v2}, Laal;->b(Ljava/lang/String;)Z

    move-result v2

    .line 286
    if-eqz v2, :cond_0

    .line 290
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
