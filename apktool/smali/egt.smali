.class public final Legt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lezi;->l:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Legt;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Intent;IZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Legs;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v8

    .line 68
    const-string v0, "payload"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v0, "timestamp"

    invoke-virtual {p0, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 70
    const-string v0, "gcm_handle_timestamps"

    invoke-virtual {p0, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    .line 74
    if-eqz p2, :cond_2

    .line 1327
    sget-boolean v0, Lexo;->b:Z

    .line 74
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v9, v0

    .line 75
    :goto_0
    if-eqz v9, :cond_0

    .line 76
    new-instance v0, Lexr;

    invoke-direct {v0}, Lexr;-><init>()V

    const-string v10, "recv_server_update"

    .line 77
    invoke-virtual {v0, v10}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v8}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v0

    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v8}, Lexr;->c(I)Lexr;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lexr;->b()V

    :cond_0
    move v8, p1

    .line 83
    invoke-static/range {v1 .. v8}, Legt;->a(Ljava/lang/String;JJJI)Ljava/util/List;

    move-result-object v0

    .line 84
    if-eqz v9, :cond_1

    .line 85
    invoke-static {}, Lexo;->d()V

    .line 89
    :cond_1
    :goto_1
    return-object v0

    .line 74
    :cond_2
    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    .line 89
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;JJJI)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJI)",
            "Ljava/util/List",
            "<",
            "Legs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    new-instance v0, Ljwz;

    invoke-direct {v0}, Ljwz;-><init>()V

    const/4 v1, 0x0

    .line 100
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 2131
    array-length v2, v1

    invoke-static {v0, v1, v2}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 100
    check-cast v0, Ljwz;
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    sget-boolean v1, Legt;->a:Z

    if-eqz v1, :cond_0

    .line 106
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ClientBatchUpdate from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    iget-object v1, v0, Ljwz;->a:[Lkez;

    array-length v11, v1

    .line 110
    if-lez v11, :cond_2

    .line 111
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 112
    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_1

    .line 113
    iget-object v1, v0, Ljwz;->a:[Lkez;

    aget-object v1, v1, v10

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Legt;->a(Lkez;JJJILjava/util/ArrayList;)V

    .line 112
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v1, "Babel"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Problem parsing client update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    const/4 v9, 0x0

    .line 118
    :cond_1
    :goto_1
    return-object v9

    .line 117
    :cond_2
    const-string v0, "Babel"

    const-string v1, "received a client update with no contents"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Intent;JJ)V
    .locals 1

    .prologue
    .line 57
    const-string v0, "timestamp"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 58
    const-string v0, "gcm_handle_timestamps"

    invoke-virtual {p0, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    const-string v0, "payload"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method private static a(Lefo;Lexr;IJI)V
    .locals 5

    .prologue
    .line 399
    invoke-static {p2}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 401
    invoke-virtual {p1}, Lexr;->a()Lexr;

    move-result-object v1

    const-string v2, "server_update_field"

    .line 402
    invoke-virtual {v1, v2}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v1

    .line 403
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v1

    .line 404
    invoke-virtual {v1, p3, p4}, Lexr;->a(J)Lexr;

    move-result-object v1

    iget-wide v2, p0, Lefo;->c:J

    .line 405
    invoke-virtual {v1, v2, v3}, Lexr;->b(J)Lexr;

    move-result-object v1

    .line 406
    invoke-virtual {v1, p5}, Lexr;->a(I)Lexr;

    move-result-object v1

    iget-object v2, p0, Lefo;->a:Ljava/lang/String;

    .line 407
    invoke-virtual {v1, v2}, Lexr;->c(Ljava/lang/String;)Lexr;

    move-result-object v1

    .line 408
    invoke-virtual {v1, v0}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lexr;->b()V

    .line 410
    return-void
.end method

.method private static a(Lkez;JJJILjava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkez;",
            "JJJI",
            "Ljava/util/ArrayList",
            "<",
            "Legs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    sget-boolean v2, Legt;->a:Z

    if-eqz v2, :cond_1

    .line 128
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "received ClientStateUpdate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    .line 130
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "has"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    .line 132
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v7, :cond_0

    .line 134
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 135
    check-cast v2, Ljava/lang/Boolean;

    .line 3015
    const/4 v7, 0x0

    invoke-static {v2, v7}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 136
    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0xd

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 139
    :catch_0
    move-exception v2

    .line 140
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x26

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "oops, couldn\'t invoke "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gave exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 146
    :cond_1
    invoke-static/range {p7 .. p7}, Ldvd;->e(I)Lbfd;

    move-result-object v16

    .line 3327
    sget-boolean v17, Lexo;->b:Z

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 149
    invoke-virtual/range {v16 .. v16}, Lbfd;->b()Lczb;

    move-result-object v6

    .line 151
    if-eqz v17, :cond_18

    .line 152
    new-instance v2, Lexr;

    invoke-direct {v2}, Lexr;-><init>()V

    move-object v14, v2

    .line 158
    :goto_2
    const/4 v3, 0x0

    .line 159
    const-wide/16 v4, 0x0

    .line 160
    const/4 v2, 0x0

    .line 161
    move-object/from16 v0, p0

    iget-object v7, v0, Lkez;->a:Lkfa;

    if-eqz v7, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget-object v7, v0, Lkez;->a:Lkfa;

    .line 163
    iget-object v3, v7, Lkfa;->a:Ljava/lang/Integer;

    .line 4043
    const/4 v4, 0x0

    invoke-static {v3, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 164
    iget-object v4, v7, Lkfa;->c:Ljava/lang/Long;

    .line 4051
    const-wide/16 v8, 0x0

    invoke-static {v4, v8, v9}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 165
    new-instance v8, Lefn;

    invoke-direct {v8, v3}, Lefn;-><init>(I)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v8, v7, Lkfa;->b:Lkcl;

    if-eqz v8, :cond_2

    .line 167
    iget-object v7, v7, Lkfa;->b:Lkcl;

    .line 169
    iget-object v8, v7, Lkcl;->a:Ljza;

    if-eqz v8, :cond_2

    .line 170
    iget-object v2, v7, Lkcl;->a:Ljza;

    .line 171
    iget-object v2, v2, Ljza;->a:Ljava/lang/Boolean;

    .line 5015
    const/4 v7, 0x0

    invoke-static {v2, v7}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 174
    :cond_2
    if-eqz v17, :cond_3

    .line 176
    invoke-virtual {v14}, Lexr;->a()Lexr;

    move-result-object v7

    const-string v8, "server_update_field"

    .line 177
    invoke-virtual {v7, v8}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v7

    const-string v8, "ClientStateUpdateHeader"

    .line 178
    invoke-virtual {v7, v8}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v7

    .line 179
    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Lexr;->a(J)Lexr;

    move-result-object v7

    .line 180
    invoke-virtual {v7, v3}, Lexr;->a(I)Lexr;

    move-result-object v7

    .line 181
    invoke-virtual {v7, v2}, Lexr;->a(Z)Lexr;

    move-result-object v7

    .line 182
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v7

    .line 183
    invoke-virtual {v7}, Lexr;->b()V

    :cond_3
    move v15, v2

    .line 187
    const-string v2, "Babel"

    const/4 v7, 0x3

    invoke-static {v2, v7}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    const-string v2, "Babel"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x3b

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "parseServerUpdates: acct="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", activeClientState is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_4
    const/4 v2, 0x1

    if-eq v3, v2, :cond_6

    .line 5098
    sget-object v2, Leck;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {v16 .. v16}, Lbfd;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leck;

    .line 5099
    if-eqz v2, :cond_19

    .line 5113
    iget-boolean v2, v2, Leck;->e:Z

    .line 198
    :goto_3
    if-eqz v2, :cond_6

    .line 199
    const-string v2, "Babel"

    const/4 v6, 0x3

    invoke-static {v2, v6}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 200
    const-string v2, "Babel"

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x36

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Overwrite active client state from server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :cond_5
    const/4 v3, 0x1

    .line 204
    :cond_6
    if-eqz v15, :cond_7

    .line 205
    const/4 v3, 0x2

    .line 216
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->b:Ljxx;

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->c:Ljzq;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->p:Ljxr;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->c:Ljzq;

    iget-object v2, v2, Ljzq;->a:Ljzl;

    iget-object v2, v2, Ljzl;->h:Lkcc;

    if-eqz v2, :cond_b

    .line 220
    :cond_8
    new-instance v2, Lega;

    move-object/from16 v0, p0

    iget-object v6, v0, Lkez;->p:Ljxr;

    invoke-direct {v2, v6}, Lega;-><init>(Ljxr;)V

    .line 226
    invoke-virtual {v2}, Lega;->j()Ldmr;

    move-result-object v6

    if-nez v6, :cond_9

    invoke-virtual/range {v16 .. v16}, Lbfd;->t()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 227
    invoke-virtual/range {v16 .. v16}, Lbfd;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lega;->b(Ljava/lang/String;)V

    .line 229
    :cond_9
    if-eqz v17, :cond_a

    .line 231
    invoke-virtual {v14}, Lexr;->a()Lexr;

    move-result-object v6

    const-string v7, "server_update_field"

    .line 232
    invoke-virtual {v6, v7}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v6

    const-string v7, "Conversation"

    .line 233
    invoke-virtual {v6, v7}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v6

    .line 234
    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Lexr;->a(J)Lexr;

    move-result-object v6

    .line 235
    invoke-virtual {v6, v3}, Lexr;->a(I)Lexr;

    move-result-object v6

    .line 236
    invoke-virtual {v6, v15}, Lexr;->a(Z)Lexr;

    move-result-object v6

    iget-object v7, v2, Lega;->a:Ljava/lang/String;

    .line 237
    invoke-virtual {v6, v7}, Lexr;->c(Ljava/lang/String;)Lexr;

    move-result-object v6

    .line 238
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v6

    .line 239
    invoke-virtual {v6}, Lexr;->b()V

    .line 241
    :cond_a
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->o:Lkbt;

    if-eqz v2, :cond_c

    .line 246
    new-instance v2, Legh;

    move-object/from16 v0, p0

    iget-object v6, v0, Lkez;->o:Lkbt;

    invoke-direct {v2, v6}, Legh;-><init>(Lkbt;)V

    .line 248
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->c:Ljzq;

    if-eqz v2, :cond_e

    .line 5193
    sget-object v2, Ldvp;->i:Ldml;

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ldml;->b(I)Z

    move-result v6

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->c:Ljzq;

    iget-object v2, v2, Ljzq;->a:Ljzl;

    move/from16 v7, p7

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    .line 254
    invoke-static/range {v2 .. v13}, Legf;->a(Ljzl;IJZIJJJ)Legf;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_e

    .line 264
    if-eqz v17, :cond_d

    .line 266
    invoke-virtual {v14}, Lexr;->a()Lexr;

    move-result-object v4

    const-string v5, "server_update_field"

    .line 267
    invoke-virtual {v4, v5}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v4

    .line 268
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v4

    .line 269
    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lexr;->a(J)Lexr;

    move-result-object v4

    iget-wide v6, v2, Legf;->c:J

    .line 270
    invoke-virtual {v4, v6, v7}, Lexr;->b(J)Lexr;

    move-result-object v4

    .line 271
    invoke-virtual {v4, v3}, Lexr;->a(I)Lexr;

    move-result-object v4

    .line 272
    invoke-virtual {v4, v15}, Lexr;->a(Z)Lexr;

    move-result-object v4

    iget v5, v2, Legf;->e:I

    .line 273
    invoke-virtual {v4, v5}, Lexr;->b(I)Lexr;

    move-result-object v4

    iget-object v5, v2, Legf;->a:Ljava/lang/String;

    .line 274
    invoke-virtual {v4, v5}, Lexr;->c(Ljava/lang/String;)Lexr;

    move-result-object v4

    .line 275
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v4

    .line 276
    invoke-virtual {v4}, Lexr;->b()V

    .line 278
    :cond_d
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->d:Lkek;

    if-eqz v2, :cond_10

    .line 282
    new-instance v5, Legu;

    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->d:Lkek;

    invoke-direct {v5, v2}, Legu;-><init>(Lkek;)V

    .line 283
    if-eqz v17, :cond_f

    move-object v6, v14

    move/from16 v7, p7

    move-wide/from16 v8, v18

    move v10, v3

    .line 284
    invoke-static/range {v5 .. v10}, Legt;->a(Lefo;Lexr;IJI)V

    .line 286
    :cond_f
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->e:Lker;

    if-eqz v2, :cond_12

    .line 289
    new-instance v5, Legv;

    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->e:Lker;

    invoke-direct {v5, v2}, Legv;-><init>(Lker;)V

    .line 290
    if-eqz v17, :cond_11

    move-object v6, v14

    move/from16 v7, p7

    move-wide/from16 v8, v18

    move v10, v3

    .line 291
    invoke-static/range {v5 .. v10}, Legt;->a(Lefo;Lexr;IJI)V

    .line 293
    :cond_11
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->h:Lkgc;

    if-eqz v2, :cond_14

    .line 296
    new-instance v5, Legy;

    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->h:Lkgc;

    invoke-direct {v5, v2}, Legy;-><init>(Lkgc;)V

    .line 298
    if-eqz v17, :cond_13

    move-object v6, v14

    move/from16 v7, p7

    move-wide/from16 v8, v18

    move v10, v3

    .line 299
    invoke-static/range {v5 .. v10}, Legt;->a(Lefo;Lexr;IJI)V

    .line 302
    :cond_13
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->g:Lkdl;

    if-eqz v2, :cond_15

    .line 306
    new-instance v2, Legp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lkez;->g:Lkdl;

    invoke-direct {v2, v4}, Legp;-><init>(Lkdl;)V

    .line 307
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->q:Lkdv;

    if-eqz v2, :cond_17

    .line 310
    new-instance v2, Legr;

    move-object/from16 v0, p0

    iget-object v4, v0, Lkez;->q:Lkdv;

    invoke-direct {v2, v4}, Legr;-><init>(Lkdv;)V

    .line 312
    if-eqz v17, :cond_16

    .line 314
    invoke-virtual {v14}, Lexr;->a()Lexr;

    move-result-object v4

    const-string v5, "server_update_field"

    .line 315
    invoke-virtual {v4, v5}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v4

    const-string v5, "SelfPresenceNotification"

    .line 316
    invoke-virtual {v4, v5}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v4

    .line 317
    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lexr;->a(J)Lexr;

    move-result-object v4

    .line 318
    invoke-virtual {v4, v3}, Lexr;->a(I)Lexr;

    move-result-object v4

    .line 319
    invoke-virtual {v4, v15}, Lexr;->a(Z)Lexr;

    move-result-object v4

    .line 320
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v4

    .line 321
    invoke-virtual {v4}, Lexr;->b()V

    .line 323
    :cond_16
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->m:Ljxf;

    if-eqz v2, :cond_1a

    .line 6036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 334
    const-class v4, Ldwa;

    .line 333
    invoke-static {v2, v4}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldwa;

    .line 335
    move-object/from16 v0, p0

    iget-object v5, v0, Lkez;->m:Ljxf;

    iget-object v5, v5, Ljxf;->a:[Ljxg;

    move/from16 v0, p7

    invoke-interface {v2, v0, v5}, Ldwa;->a(I[Ljxg;)V

    goto :goto_4

    .line 154
    :cond_18
    const/4 v2, 0x0

    move-object v14, v2

    goto/16 :goto_2

    .line 5103
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 339
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->i:Ljyd;

    if-eqz v2, :cond_1c

    .line 340
    new-instance v2, Legx;

    move-object/from16 v0, p0

    iget-object v4, v0, Lkez;->i:Ljyd;

    invoke-direct {v2, v4}, Legx;-><init>(Ljyd;)V

    .line 342
    if-eqz v17, :cond_1b

    .line 344
    invoke-virtual {v14}, Lexr;->a()Lexr;

    move-result-object v4

    const-string v5, "server_update_field"

    .line 345
    invoke-virtual {v4, v5}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v4

    const-string v5, "ViewModificationNotification"

    .line 346
    invoke-virtual {v4, v5}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v4

    .line 347
    invoke-virtual {v2}, Legx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lexr;->c(Ljava/lang/String;)Lexr;

    move-result-object v4

    .line 348
    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lexr;->a(J)Lexr;

    move-result-object v4

    .line 349
    invoke-virtual {v4, v3}, Lexr;->a(I)Lexr;

    move-result-object v3

    .line 350
    invoke-virtual {v3, v15}, Lexr;->a(Z)Lexr;

    move-result-object v3

    .line 351
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v3

    .line 352
    invoke-virtual {v3}, Lexr;->b()V

    .line 354
    :cond_1b
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->f:Lkeg;

    if-eqz v2, :cond_1d

    .line 357
    new-instance v2, Legk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lkez;->f:Lkeg;

    invoke-direct {v2, v3}, Legk;-><init>(Lkeg;)V

    .line 359
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->k:Ljym;

    if-eqz v2, :cond_1e

    .line 362
    new-instance v2, Legd;

    move-object/from16 v0, p0

    iget-object v3, v0, Lkez;->k:Ljym;

    invoke-direct {v2, v3}, Legd;-><init>(Ljym;)V

    .line 364
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->x:Ljyg;

    if-eqz v2, :cond_1f

    .line 367
    new-instance v2, Legc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lkez;->x:Ljyg;

    invoke-direct {v2, v3}, Legc;-><init>(Ljyg;)V

    .line 369
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->s:Ljxa;

    if-eqz v2, :cond_20

    .line 372
    new-instance v2, Lefp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lkez;->s:Ljxa;

    invoke-direct {v2, v3}, Lefp;-><init>(Ljxa;)V

    .line 373
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->w:Ljxq;

    if-eqz v2, :cond_21

    .line 376
    new-instance v2, Lefz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lkez;->w:Ljxq;

    move-object/from16 v0, p0

    iget-object v4, v0, Lkez;->a:Lkfa;

    iget-object v4, v4, Lkfa;->h:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lefz;-><init>(Ljxq;Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->v:Lkdr;

    if-eqz v2, :cond_22

    .line 382
    new-instance v2, Legq;

    move-object/from16 v0, p0

    iget-object v3, v0, Lkez;->v:Lkdr;

    invoke-direct {v2, v3}, Legq;-><init>(Lkdr;)V

    .line 384
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lkez;->j:Ljzd;

    if-eqz v2, :cond_23

    .line 387
    new-instance v2, Lege;

    move-object/from16 v0, p0

    iget-object v3, v0, Lkez;->j:Ljzd;

    invoke-direct {v2, v3}, Lege;-><init>(Ljzd;)V

    .line 389
    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_23
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 393
    const-string v2, "Babel"

    const-string v3, "Unexpected update type from babel server"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    :cond_24
    return-void
.end method
