.class final Lhyo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lhya;

.field final b:Lhye;

.field c:J

.field d:Ljava/lang/String;

.field e:I

.field f:J

.field g:Lorg/chromium/net/HttpUrlRequest;

.field h:Lifg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lifg",
            "<",
            "Lorg/chromium/net/ChunkedWritableByteChannel;",
            ">;"
        }
    .end annotation
.end field

.field i:Z

.field j:Ljava/io/File;

.field private k:J

.field private l:J

.field private m:Ljava/lang/String;

.field private final n:Lorg/chromium/net/HttpUrlRequestListener;


# direct methods
.method constructor <init>(Lhya;Lhye;)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lhyo;->e:I

    .line 65
    new-instance v0, Lhyp;

    invoke-direct {v0, p0}, Lhyp;-><init>(Lhyo;)V

    iput-object v0, p0, Lhyo;->n:Lorg/chromium/net/HttpUrlRequestListener;

    .line 155
    iput-object p1, p0, Lhyo;->a:Lhya;

    .line 156
    iput-object p2, p0, Lhyo;->b:Lhye;

    .line 157
    return-void
.end method

.method private b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 281
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lipr;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 283
    :catch_0
    move-exception v0

    iget-object v0, p0, Lhyo;->a:Lhya;

    invoke-virtual {v0}, Lhya;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :catch_1
    move-exception v0

    .line 285
    iget-object v1, p0, Lhyo;->a:Lhya;

    const-string v2, "Cannot obtain download URL for partial file"

    invoke-virtual {v1, v2, v0}, Lhya;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    if-eqz p2, :cond_0

    .line 287
    iget-object v0, p0, Lhyo;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 288
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 290
    :cond_0
    iget-object v0, p0, Lhyo;->a:Lhya;

    invoke-virtual {v0}, Lhya;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lhyo;->m:Ljava/lang/String;

    .line 352
    return-void
.end method

.method a()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lhyo;->e:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    .line 355
    if-eqz p2, :cond_0

    iget-object v0, p0, Lhyo;->b:Lhye;

    invoke-interface {v0}, Lhye;->c()Lhxm;

    move-result-object v0

    .line 359
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhxm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    :try_start_0
    iget-object v2, p0, Lhyo;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lipr;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    const/4 v0, 0x1

    .line 367
    :goto_1
    return v0

    .line 355
    :cond_0
    iget-object v0, p0, Lhyo;->b:Lhye;

    invoke-interface {v0}, Lhye;->b()Lhxm;

    move-result-object v0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    iget-object v2, p0, Lhyo;->a:Lhya;

    const-string v3, "Cannot save download URL"

    invoke-virtual {v2, v3, v1}, Lhya;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0, p1}, Lhxm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 367
    const/4 v0, 0x0

    goto :goto_1
.end method

.method b()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lhyo;->a:Lhya;

    invoke-virtual {v0}, Lhya;->l()Ligq;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ligq;

    .line 166
    iget-object v0, p0, Lhyo;->a:Lhya;

    invoke-virtual {v0}, Lhya;->e()Ljava/lang/String;

    move-result-object v1

    .line 167
    iget v0, v6, Ligq;->i:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lhyo;->b:Lhye;

    invoke-interface {v0}, Lhye;->c()Lhxm;

    move-result-object v0

    .line 169
    :goto_0
    invoke-virtual {v0, v1}, Lhxm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lhyo;->j:Ljava/io/File;

    .line 171
    iget-object v1, p0, Lhyo;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-direct {p0, v0, v2}, Lhyo;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhyo;->m:Ljava/lang/String;

    .line 175
    :cond_0
    iget-object v0, p0, Lhyo;->a:Lhya;

    invoke-virtual {v0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lhyo;->m:Ljava/lang/String;

    iget-object v1, p0, Lhyo;->a:Lhya;

    .line 177
    invoke-virtual {v1}, Lhya;->l()Ligq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Downloading using URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " resource: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_1
    iget-object v0, p0, Lhyo;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 186
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lhyo;->j:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 193
    iget-object v0, p0, Lhyo;->m:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Download URL is null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_3
    iget-object v0, p0, Lhyo;->b:Lhye;

    invoke-interface {v0}, Lhye;->b()Lhxm;

    move-result-object v0

    goto/16 :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    iget-object v1, p0, Lhyo;->a:Lhya;

    const-string v2, "Cannot open cache file"

    invoke-virtual {v1, v2, v0}, Lhya;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    iget-object v0, p0, Lhyo;->a:Lhya;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lhya;->a(I)V

    .line 211
    :goto_1
    return-void

    .line 197
    :cond_4
    iget-object v0, p0, Lhyo;->b:Lhye;

    invoke-interface {v0}, Lhye;->l()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lhyo;->m:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lhyo;->n:Lorg/chromium/net/HttpUrlRequestListener;

    invoke-static/range {v0 .. v5}, Liff;->a(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;

    move-result-object v3

    .line 200
    iget-object v0, p0, Lhyo;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-interface {v3, v0, v1}, Lorg/chromium/net/HttpUrlRequest;->a(J)V

    .line 201
    iget v0, v6, Ligq;->i:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_6

    .line 203
    iget-object v0, p0, Lhyo;->b:Lhye;

    invoke-interface {v0}, Lhye;->g()J

    move-result-wide v0

    .line 205
    :goto_2
    iget v4, v6, Ligq;->i:I

    and-int/lit16 v4, v4, 0x800

    if-nez v4, :cond_5

    move v2, v7

    :cond_5
    invoke-interface {v3, v0, v1, v2}, Lorg/chromium/net/HttpUrlRequest;->a(JZ)V

    .line 207
    monitor-enter p0

    .line 208
    :try_start_1
    iput-object v3, p0, Lhyo;->g:Lorg/chromium/net/HttpUrlRequest;

    .line 209
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    invoke-interface {v3}, Lorg/chromium/net/HttpUrlRequest;->h()V

    goto :goto_1

    .line 204
    :cond_6
    iget-object v0, p0, Lhyo;->b:Lhye;

    invoke-interface {v0}, Lhye;->h()J

    move-result-wide v0

    goto :goto_2

    .line 209
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method c()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 214
    iget-object v0, p0, Lhyo;->b:Lhye;

    invoke-interface {v0}, Lhye;->h()J

    move-result-wide v6

    .line 215
    iput-wide v12, p0, Lhyo;->f:J

    .line 216
    iget-object v0, p0, Lhyo;->a:Lhya;

    invoke-virtual {v0}, Lhya;->e()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lhyo;->b:Lhye;

    invoke-interface {v1}, Lhye;->b()Lhxm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhxm;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lhyo;->j:Ljava/io/File;

    .line 218
    iget-object v1, p0, Lhyo;->j:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lhyo;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v11}, Lhyo;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhyo;->m:Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lhyo;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    iput-object v3, p0, Lhyo;->j:Ljava/io/File;

    .line 226
    :cond_0
    iget-object v1, p0, Lhyo;->a:Lhya;

    invoke-virtual {v1}, Lhya;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lhyo;->m:Ljava/lang/String;

    iget-object v4, p0, Lhyo;->a:Lhya;

    .line 228
    invoke-virtual {v4}, Lhya;->l()Ligq;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x22

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Downloading using URL: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " resource: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_1
    new-instance v1, Lifg;

    new-instance v4, Lorg/chromium/net/ChunkedWritableByteChannel;

    invoke-direct {v4}, Lorg/chromium/net/ChunkedWritableByteChannel;-><init>()V

    iget-object v5, p0, Lhyo;->a:Lhya;

    invoke-direct {v1, v4, v5}, Lifg;-><init>(Ljava/nio/channels/WritableByteChannel;Lifa;)V

    iput-object v1, p0, Lhyo;->h:Lifg;

    .line 232
    iget-object v1, p0, Lhyo;->j:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 234
    :try_start_0
    iget-object v1, p0, Lhyo;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lhyo;->f:J

    .line 236
    iget-object v1, p0, Lhyo;->a:Lhya;

    invoke-virtual {v1}, Lhya;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    iget-wide v4, p0, Lhyo;->f:J

    iget-object v1, p0, Lhyo;->a:Lhya;

    .line 238
    invoke-virtual {v1}, Lhya;->l()Ligq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x44

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Continuing download to file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " ("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " bytes) resource: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_2
    iget-object v0, p0, Lhyo;->j:Ljava/io/File;

    const/4 v1, 0x1

    .line 241
    invoke-static {v0, v1}, Laal;->a(Ljava/io/File;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lhyo;->h:Lifg;

    invoke-virtual {v1, v0}, Lifg;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_3
    :goto_0
    iget-object v0, p0, Lhyo;->b:Lhye;

    .line 252
    invoke-interface {v0}, Lhye;->l()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lhxz;

    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxz;

    .line 253
    if-eqz v0, :cond_4

    .line 254
    invoke-interface {v0}, Lhxz;->a()Ljava/util/Map;

    move-result-object v3

    .line 256
    iget-object v0, p0, Lhyo;->a:Lhya;

    invoke-virtual {v0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 257
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhyo;->a:Lhya;

    .line 258
    invoke-virtual {v1}, Lhya;->l()Ligq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x21

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Adding image headers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " resource: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_4
    iget-object v0, p0, Lhyo;->h:Lifg;

    if-eqz v0, :cond_5

    .line 264
    iget-object v0, p0, Lhyo;->b:Lhye;

    invoke-interface {v0}, Lhye;->l()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lhyo;->m:Ljava/lang/String;

    iget-object v4, p0, Lhyo;->h:Lifg;

    iget-object v5, p0, Lhyo;->n:Lorg/chromium/net/HttpUrlRequestListener;

    invoke-static/range {v0 .. v5}, Liff;->a(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;

    move-result-object v0

    .line 266
    iget-wide v2, p0, Lhyo;->f:J

    invoke-interface {v0, v2, v3}, Lorg/chromium/net/HttpUrlRequest;->a(J)V

    .line 272
    :goto_1
    invoke-interface {v0, v6, v7, v11}, Lorg/chromium/net/HttpUrlRequest;->a(JZ)V

    .line 273
    monitor-enter p0

    .line 274
    :try_start_1
    iput-object v0, p0, Lhyo;->g:Lorg/chromium/net/HttpUrlRequest;

    .line 275
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    invoke-interface {v0}, Lorg/chromium/net/HttpUrlRequest;->h()V

    .line 277
    return-void

    .line 244
    :catch_0
    move-exception v0

    iput-object v3, p0, Lhyo;->h:Lifg;

    .line 245
    iput-wide v12, p0, Lhyo;->f:J

    goto/16 :goto_0

    .line 268
    :cond_5
    iget-object v0, p0, Lhyo;->b:Lhye;

    invoke-interface {v0}, Lhye;->l()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lhyo;->m:Ljava/lang/String;

    iget-object v4, p0, Lhyo;->n:Lorg/chromium/net/HttpUrlRequestListener;

    invoke-static {v0, v1, v2, v3, v4}, Liff;->a(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;

    move-result-object v0

    goto :goto_1

    .line 275
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method d()Ljava/io/File;
    .locals 3

    .prologue
    .line 298
    iget-boolean v0, p0, Lhyo;->i:Z

    if-eqz v0, :cond_1

    .line 299
    iget-object v1, p0, Lhyo;->j:Ljava/io/File;

    .line 300
    iget-object v0, p0, Lhyo;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lhyo;->a:Lhya;

    .line 301
    invoke-virtual {v0}, Lhya;->l()Ligq;

    move-result-object v0

    check-cast v0, Ligq;

    iget v0, v0, Ligq;->i:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 300
    :goto_0
    invoke-virtual {p0, v2, v0}, Lhyo;->a(Ljava/lang/String;Z)Z

    move-object v0, v1

    .line 307
    :goto_1
    return-object v0

    .line 301
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Lhyo;->a:Lhya;

    invoke-virtual {v0}, Lhya;->f()Ljava/io/File;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lhyo;->j:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1
.end method

.method e()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lhyo;->a:Lhya;

    .line 1034
    iget-boolean v0, v0, Ligp;->n:Z

    .line 311
    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v0, p0, Lhyo;->g:Lorg/chromium/net/HttpUrlRequest;

    .line 321
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Lorg/chromium/net/HttpUrlRequest;->i()V

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method f()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lhyo;->a:Lhya;

    .line 2030
    const/4 v1, 0x1

    iput-boolean v1, v0, Ligp;->n:Z

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhyo;->k:J

    .line 330
    iget-object v0, p0, Lhyo;->b:Lhye;

    iget-object v1, p0, Lhyo;->a:Lhya;

    invoke-interface {v0, v1}, Lhye;->a(Lhya;)V

    .line 331
    return-void
.end method

.method g()V
    .locals 5

    .prologue
    .line 334
    iget-object v0, p0, Lhyo;->a:Lhya;

    .line 2034
    iget-boolean v0, v0, Ligp;->n:Z

    .line 334
    if-nez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lhyo;->a:Lhya;

    .line 3030
    const/4 v1, 0x0

    iput-boolean v1, v0, Ligp;->n:Z

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhyo;->l:J

    .line 340
    iget-object v0, p0, Lhyo;->b:Lhye;

    iget-object v1, p0, Lhyo;->a:Lhya;

    invoke-interface {v0, v1}, Lhye;->b(Lhya;)V

    .line 341
    iget-object v0, p0, Lhyo;->a:Lhya;

    invoke-virtual {v0}, Lhya;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lhyo;->a:Lhya;

    .line 344
    invoke-virtual {v0}, Lhya;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhyo;->a:Lhya;

    .line 346
    invoke-virtual {v1}, Lhya;->l()Ligq;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Download completed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method h()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lhyo;->j:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lhyo;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 375
    :cond_0
    return-void
.end method

.method i()J
    .locals 2

    .prologue
    .line 378
    iget-wide v0, p0, Lhyo;->k:J

    return-wide v0
.end method

.method j()J
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p0, Lhyo;->f:J

    return-wide v0
.end method

.method k()J
    .locals 2

    .prologue
    .line 386
    iget-wide v0, p0, Lhyo;->l:J

    return-wide v0
.end method
