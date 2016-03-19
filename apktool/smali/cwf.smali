.class public final Lcwf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Z


# instance fields
.field public a:Lcwk;

.field private final c:Lcwi;

.field private d:[B

.field private e:I

.field private f:Lcwl;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lezi;->j:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcwf;->b:Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IIIJLcwi;)V
    .locals 13

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v3, Lcwk;

    move-wide v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-direct/range {v3 .. v11}, Lcwk;-><init>(JLjava/lang/String;IIIJ)V

    iput-object v3, p0, Lcwf;->a:Lcwk;

    .line 48
    move-object/from16 v0, p9

    iput-object v0, p0, Lcwf;->c:Lcwi;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcwi;)V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 41
    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v7, v6

    move-object v10, p3

    invoke-direct/range {v1 .. v10}, Lcwf;-><init>(JLjava/lang/String;IIIJLcwi;)V

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcwe;Lcwl;)I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcwf;->a:Lcwk;

    iget v0, v0, Lcwk;->c:I

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 82
    const-string v0, "Babel_NetworkQueue"

    iget-object v1, p0, Lcwf;->a:Lcwk;

    iget v1, v1, Lcwk;->c:I

    .line 83
    invoke-virtual {p0}, Lcwf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Account does not exist on device, removing request from the queue for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", request: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 82
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    sget-object v0, Ldvn;->a:Ldvn;

    invoke-virtual {p2, v0}, Lcwl;->a(Ldvn;)V

    .line 85
    sget v0, Lcwj;->d:I

    .line 115
    :goto_0
    return v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcwf;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Ldvn;->a:Ldvn;

    invoke-virtual {p2, v0}, Lcwl;->a(Ldvn;)V

    .line 90
    sget v0, Lcwj;->d:I

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcwf;->a()Lcwi;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Lcwi;->F_()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcwe;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    new-instance v0, Ldvn;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Ldvn;-><init>(I)V

    invoke-virtual {p2, v0}, Lcwl;->a(Ldvn;)V

    .line 103
    sget v0, Lcwj;->c:I

    goto :goto_0

    .line 104
    :cond_2
    invoke-interface {p1}, Lcwe;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    new-instance v1, Ldvn;

    const/16 v2, 0x66

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v7, v3

    invoke-direct/range {v1 .. v7}, Ldvn;-><init>(ILjava/lang/Exception;JZLjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcwl;->a(Ldvn;)V

    .line 112
    sget v0, Lcwj;->c:I

    goto :goto_0

    .line 115
    :cond_3
    sget v0, Lcwj;->a:I

    goto :goto_0
.end method

.method public a()Lcwi;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcwf;->c:Lcwi;

    return-object v0
.end method

.method a(Lcwe;Lcwl;Llbd;)Llbb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcwe;",
            "Lcwl;",
            "Llbd;",
            ")",
            "Llbb",
            "<",
            "Lcwf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lcwg;

    invoke-direct {v0, p0, p1, p2}, Lcwg;-><init>(Lcwf;Lcwe;Lcwl;)V

    .line 161
    invoke-interface {p3, v0}, Llbd;->a(Ljava/util/concurrent/Callable;)Llbb;

    move-result-object v0

    .line 168
    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lcwh;

    invoke-direct {v2, p0}, Lcwh;-><init>(Lcwf;)V

    invoke-static {v0, v1, v2, p3}, Llau;->a(Llbb;Ljava/lang/Class;Llap;Ljava/util/concurrent/Executor;)Llbb;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldvn;)V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcwf;->a()Lcwi;

    move-result-object v0

    iget-object v1, p0, Lcwf;->a:Lcwk;

    iget v1, v1, Lcwk;->c:I

    invoke-interface {v0, v1, p1}, Lcwi;->b(ILdvn;)V

    .line 179
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcwf;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcwl;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcwf;->a:Lcwk;

    iget v2, v0, Lcwk;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcwk;->d:I

    .line 188
    invoke-virtual {p1}, Lcwl;->a()I

    move-result v0

    .line 2121
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 188
    :goto_0
    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcwf;->a:Lcwk;

    iget v2, v0, Lcwk;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcwk;->e:I

    .line 195
    :cond_0
    iget-object v0, p0, Lcwf;->a:Lcwk;

    iget v0, v0, Lcwk;->d:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    .line 196
    const-string v0, "Babel_NetworkQueue"

    iget-object v2, p0, Lcwf;->a:Lcwk;

    iget v2, v2, Lcwk;->d:I

    .line 197
    invoke-virtual {p1}, Lcwl;->a()I

    move-result v3

    iget-object v4, p0, Lcwf;->c:Lcwi;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcwf;->a:Lcwk;

    iget-wide v6, v5, Lcwk;->g:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x53

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Retried: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " errorCode: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 196
    invoke-static {v0, v2, v1}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_1
    iget-object v0, p0, Lcwf;->c:Lcwi;

    iget-object v1, p0, Lcwf;->a:Lcwk;

    invoke-virtual {p1}, Lcwl;->c()Ldvn;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcwi;->a(Lcwk;Ldvn;)Z

    move-result v0

    return v0

    .line 2125
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2121
    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcwf;->c:Lcwi;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcwf;->c:Lcwi;

    invoke-interface {v0, p2}, Lcwi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcwf;->e:I

    return v0
.end method

.method public b(Lcwe;Lcwl;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 126
    sget-boolean v0, Lcwf;->b:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcwf;->a:Lcwk;

    iget-wide v2, v0, Lcwk;->a:J

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Processing "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcwf;->a()Lcwi;

    move-result-object v0

    .line 131
    :try_start_0
    invoke-interface {p1}, Lcwe;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcwf;->a:Lcwk;

    .line 132
    invoke-interface {p1}, Lcwe;->c()Lcwm;

    move-result-object v4

    .line 131
    invoke-interface {v0, v2, v3, v4}, Lcwi;->a(Landroid/content/Context;Lcwk;Lcwm;)V

    .line 133
    sget v0, Lcwj;->b:I
    :try_end_0
    .catch Ldvn; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {p2, v0}, Lcwl;->a(Ldvn;)V

    .line 136
    invoke-virtual {v0}, Ldvn;->a()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcwl;->a(J)V

    .line 137
    invoke-virtual {v0}, Ldvn;->c()I

    move-result v0

    invoke-virtual {p2, v0}, Lcwl;->a(I)V

    .line 138
    invoke-virtual {p2}, Lcwl;->a()I

    move-result v0

    .line 1133
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 138
    :goto_1
    if-eqz v0, :cond_1

    .line 139
    sget v0, Lcwj;->c:I

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1139
    goto :goto_1

    .line 1155
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_1

    .line 141
    :cond_1
    sget v0, Lcwj;->d:I

    goto :goto_0

    .line 1133
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method declared-synchronized c(Lcwe;Lcwl;)Lcwf;
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcwf;->a(Lcwe;Lcwl;)I

    move-result v0

    iput v0, p0, Lcwf;->e:I

    .line 149
    iget v0, p0, Lcwf;->e:I

    sget v1, Lcwj;->a:I

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p0, p1, p2}, Lcwf;->b(Lcwe;Lcwl;)I

    move-result v0

    iput v0, p0, Lcwf;->e:I

    .line 152
    :cond_0
    iput-object p2, p0, Lcwf;->f:Lcwl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-object p0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcwl;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcwf;->f:Lcwl;

    return-object v0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcwf;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 209
    iget-object v1, p0, Lcwf;->c:Lcwi;

    invoke-interface {v1}, Lcwi;->b()J

    move-result-wide v2

    .line 210
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcwf;->a:Lcwk;

    iget-wide v6, v1, Lcwk;->g:J

    add-long/2addr v2, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()J
    .locals 7

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 226
    iget-object v4, p0, Lcwf;->c:Lcwi;

    invoke-interface {v4}, Lcwi;->b()J

    move-result-wide v4

    .line 227
    cmp-long v6, v4, v0

    if-nez v6, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-wide v0

    .line 229
    :cond_1
    cmp-long v6, v4, v2

    if-nez v6, :cond_2

    move-wide v0, v2

    .line 232
    goto :goto_0

    .line 233
    :cond_2
    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    .line 237
    iget-object v0, p0, Lcwf;->a:Lcwk;

    iget-wide v0, v0, Lcwk;->g:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcwf;->a:Lcwk;

    iget-wide v0, v0, Lcwk;->f:J

    return-wide v0
.end method

.method public h()[B
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcwf;->d:[B

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcwf;->c:Lcwi;

    invoke-static {v0}, Lefc;->a(Lcwi;)[B

    move-result-object v0

    iput-object v0, p0, Lcwf;->d:[B

    .line 265
    :cond_0
    iget-object v0, p0, Lcwf;->d:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 245
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "REQUEST[id:%d; fc:%d; create:%d; type:%s]"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lcwf;->a:Lcwk;

    iget-wide v4, v4, Lcwk;->a:J

    .line 246
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lcwf;->a:Lcwk;

    iget v4, v4, Lcwk;->d:I

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcwf;->a:Lcwk;

    iget-wide v4, v4, Lcwk;->g:J

    .line 248
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x3

    iget-object v0, p0, Lcwf;->c:Lcwi;

    if-nez v0, :cond_0

    .line 249
    const-string v0, "null"

    :goto_0
    aput-object v0, v3, v4

    .line 245
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcwf;->c:Lcwi;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
