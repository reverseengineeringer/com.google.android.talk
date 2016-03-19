.class public final Lexr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final p:Ljava/text/SimpleDateFormat;


# instance fields
.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field f:J

.field g:Z

.field h:Ljava/lang/String;

.field i:I

.field j:Z

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexr;->a:Ljava/lang/String;

    .line 74
    const-string v0, "date,logType,extraData,messageTime,screenOn,activity,activeClient,notificationLevel,conversationId,sizeInBytes,accountName,accountID"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lexr;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lexr;->b:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSSZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lexr;->p:Ljava/text/SimpleDateFormat;

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0}, Lexr;->a()Lexr;

    .line 99
    return-void
.end method


# virtual methods
.method public a()Lexr;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lexr;->c:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lexr;->d:Ljava/lang/String;

    .line 107
    iput-wide v4, p0, Lexr;->e:J

    .line 108
    iput-wide v4, p0, Lexr;->f:J

    .line 109
    iput-boolean v1, p0, Lexr;->g:Z

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lexr;->h:Ljava/lang/String;

    .line 111
    iput v2, p0, Lexr;->i:I

    .line 112
    iput-boolean v1, p0, Lexr;->j:Z

    .line 113
    iput v2, p0, Lexr;->k:I

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lexr;->l:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lexr;->m:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lexr;->n:Ljava/lang/String;

    .line 117
    iput v1, p0, Lexr;->o:I

    .line 118
    return-object p0
.end method

.method public a(I)Lexr;
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lexr;->i:I

    .line 147
    return-object p0
.end method

.method public a(J)Lexr;
    .locals 1

    .prologue
    .line 136
    iput-wide p1, p0, Lexr;->e:J

    .line 137
    return-object p0
.end method

.method public a(Lbfd;)Lexr;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p1}, Lbfd;->b()Lczb;

    move-result-object v0

    invoke-virtual {v0}, Lczb;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexr;->m:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexr;->n:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public a(Lczb;)Lexr;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p1}, Lczb;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexr;->m:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lexr;
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lexr;->c:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public a(Z)Lexr;
    .locals 0

    .prologue
    .line 151
    iput-boolean p1, p0, Lexr;->j:Z

    .line 152
    return-object p0
.end method

.method public b(I)Lexr;
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lexr;->k:I

    .line 157
    return-object p0
.end method

.method public b(J)Lexr;
    .locals 1

    .prologue
    .line 141
    iput-wide p1, p0, Lexr;->f:J

    .line 142
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lexr;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lexr;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iput-object p1, p0, Lexr;->d:Ljava/lang/String;

    .line 132
    :goto_0
    return-object p0

    .line 130
    :cond_0
    iget-object v0, p0, Lexr;->d:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexr;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()V
    .locals 8

    .prologue
    .line 1335
    sget-object v1, Lexo;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1336
    :try_start_0
    sget-boolean v0, Lexo;->b:Z

    if-nez v0, :cond_0

    .line 1337
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    :goto_0
    return-void

    .line 1340
    :cond_0
    :try_start_1
    sget-object v2, Lexo;->c:Ljava/io/BufferedOutputStream;

    .line 3032
    sget-object v0, Lexo;->d:Landroid/os/PowerManager;

    .line 2191
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lexr;->g:Z

    .line 4032
    sget-object v0, Lexo;->e:Ljava/lang/String;

    .line 2192
    if-eqz v0, :cond_3

    .line 5032
    sget-object v0, Lexo;->e:Ljava/lang/String;

    .line 2192
    :goto_1
    iput-object v0, p0, Lexr;->h:Ljava/lang/String;

    .line 2193
    iget-wide v4, p0, Lexr;->e:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 2194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lexr;->e:J

    .line 2196
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2197
    iget-object v3, p0, Lexr;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 2198
    const-string v3, "Babel"

    const-string v4, "null datatype in DataLog.build"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2199
    const-string v3, "(unknown)"

    iput-object v3, p0, Lexr;->c:Ljava/lang/String;

    .line 2201
    :cond_2
    sget-object v3, Lexr;->p:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lexr;->e:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    .line 2202
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lexr;->e:J

    .line 2203
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "),"

    .line 2204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lexr;->c:Ljava/lang/String;

    .line 2205
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    .line 2206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lexr;->d:Ljava/lang/String;

    .line 2207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    .line 2208
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lexr;->f:J

    .line 2209
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    .line 2210
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lexr;->g:Z

    .line 2211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    .line 2212
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lexr;->h:Ljava/lang/String;

    .line 2213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    .line 2214
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lexr;->i:I

    .line 2215
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    .line 2216
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lexr;->j:Z

    .line 2217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    .line 2218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lexr;->k:I

    .line 2219
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    .line 2220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lexr;->l:Ljava/lang/String;

    .line 2221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    .line 2222
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lexr;->o:I

    .line 2223
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    .line 2224
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lexr;->n:Ljava/lang/String;

    .line 2225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    .line 2226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lexr;->m:Ljava/lang/String;

    .line 2227
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lexr;->a:Ljava/lang/String;

    .line 2228
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1340
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1341
    sget-object v0, Lexo;->c:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1345
    :goto_2
    :try_start_2
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2192
    :cond_3
    :try_start_3
    const-string v0, "--"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1342
    :catch_0
    move-exception v0

    .line 1343
    :try_start_4
    const-string v2, "Babel"

    const-string v3, "error writing to datalog output stream"

    invoke-static {v2, v3, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public c(I)Lexr;
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lexr;->o:I

    .line 183
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lexr;
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lexr;->l:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lexr;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lexr;->n:Ljava/lang/String;

    .line 172
    return-object p0
.end method
