.class public Lihi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Limw;

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final c:Limw;

.field private static volatile d:Ljava/lang/String;

.field public static final f:Limw;


# instance fields
.field private A:Liim;

.field private B:Lorg/chromium/net/CronetEngine;

.field private final e:Ljava/lang/String;

.field public final g:Landroid/content/Context;

.field public final h:Lihw;

.field public final i:I

.field j:Lihp;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Exception;

.field n:I

.field o:Ljava/nio/channels/WritableByteChannel;

.field p:Z

.field public final q:Liht;

.field r:Ljava/lang/String;

.field s:Z

.field private final t:Ljava/lang/String;

.field private final u:Lihs;

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lihh;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Lorg/chromium/net/UrlRequest;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Limw;

    const-string v1, "debug.rpc.dogfood"

    invoke-direct {v0, v1}, Limw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lihi;->f:Limw;

    .line 55
    new-instance v0, Limw;

    const-string v1, "debug.rpc.metrics"

    invoke-direct {v0, v1}, Limw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lihi;->a:Limw;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lihi;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Limw;

    const-string v1, "debug.rpc.use_obscura_nonce"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Limw;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lihi;->c:Limw;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lihi;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lihw;Ljava/lang/String;Lihs;)V
    .locals 6

    .prologue
    .line 110
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lihi;-><init>(Landroid/content/Context;Lihw;Ljava/lang/String;Lihs;B)V

    .line 111
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lihw;Ljava/lang/String;Lihs;B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lihi;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lihi;->i:I

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lihi;->k:I

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Lihi;->n:I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lihi;->s:Z

    .line 125
    iput-object p1, p0, Lihi;->g:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lihi;->h:Lihw;

    .line 127
    iput-object p3, p0, Lihi;->t:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Lihi;->u:Lihs;

    .line 129
    iput-object v1, p0, Lihi;->e:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lihi;->w:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lihi;->g:Landroid/content/Context;

    const-class v1, Lihh;

    invoke-static {v0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lihi;->v:Ljava/util/List;

    .line 132
    iget-object v0, p0, Lihi;->g:Landroid/content/Context;

    const-class v1, Liim;

    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liim;

    iput-object v0, p0, Lihi;->A:Liim;

    .line 133
    new-instance v0, Liht;

    invoke-direct {v0}, Liht;-><init>()V

    iput-object v0, p0, Lihi;->q:Liht;

    .line 134
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public a(ILjava/io/IOException;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xc8

    .line 707
    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 708
    const/4 p1, 0x0

    .line 713
    :cond_0
    :goto_0
    iput p1, p0, Lihi;->k:I

    .line 714
    iput-object v1, p0, Lihi;->l:Ljava/lang/String;

    .line 715
    iput-object p2, p0, Lihi;->m:Ljava/lang/Exception;

    .line 717
    iget-object v0, p0, Lihi;->A:Liim;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 721
    invoke-virtual {p0}, Lihi;->j()Ljava/lang/String;

    invoke-virtual {p0}, Lihi;->i()Ljava/lang/String;

    .line 723
    :cond_1
    return-void

    .line 709
    :cond_2
    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 710
    new-instance p2, Lihf;

    invoke-direct {p2, p1, v1}, Lihf;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lihi;->b(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lihi;->b(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lihi;->w:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 890
    const/4 v0, 0x0

    iget-object v1, p0, Lihi;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 892
    :try_start_0
    iget-object v0, p0, Lihi;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lihh;

    .line 893
    invoke-virtual {p0}, Lihi;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lihh;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 894
    invoke-virtual {p0}, Lihi;->i()Ljava/lang/String;

    invoke-interface {v0, p1}, Lihh;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    const-string v3, "HttpOperation"

    const-string v4, "Couldn\'t log request"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 901
    :cond_1
    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 904
    const/4 v0, 0x0

    iget-object v1, p0, Lihi;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 906
    :try_start_0
    iget-object v0, p0, Lihi;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lihh;

    .line 907
    invoke-virtual {p0}, Lihi;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lihh;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 908
    invoke-virtual {p0}, Lihi;->i()Ljava/lang/String;

    .line 912
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 908
    invoke-interface {v0, p2}, Lihh;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 915
    :catch_0
    move-exception v0

    .line 916
    const-string v3, "HttpOperation"

    const-string v4, "Couldn\'t log response"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 919
    :cond_1
    return-void
.end method

.method protected b(Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0, p1}, Lihi;->c(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 739
    instance-of v0, p1, Lihf;

    if-eqz v0, :cond_0

    .line 740
    check-cast p1, Lihf;

    .line 741
    invoke-virtual {p1}, Lihf;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 746
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 743
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 741
    nop

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
    .end packed-switch
.end method

.method public c()[B
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lihi;->g:Landroid/content/Context;

    const-class v1, Lihg;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lihg;

    .line 156
    invoke-interface {v0, p0}, Lihg;->a(Lihi;)V

    .line 157
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lihi;->p:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lihi;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lihi;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lihi;->k:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lihi;->m:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 528
    :try_start_0
    invoke-virtual {p0}, Lihi;->a()V

    .line 530
    iget-object v0, p0, Lihi;->q:Liht;

    invoke-virtual {v0}, Liht;->h()V

    .line 532
    iget-object v0, p0, Lihi;->u:Lihs;

    invoke-virtual {p0}, Lihi;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lihs;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 533
    sget-object v0, Lihi;->d:Ljava/lang/String;

    .line 1860
    const-string v0, "HttpOperation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1864
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "HTTP headers:\n"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1865
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1866
    const-string v1, "Authorization"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1867
    const-string v0, "Authorization: <removed>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    :goto_1
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1, v0}, Lihi;->a(ILjava/io/IOException;)V

    .line 609
    invoke-virtual {p0}, Lihi;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    iput-object v3, p0, Lihi;->y:Lorg/chromium/net/UrlRequest;

    .line 612
    :goto_2
    return-void

    .line 1869
    :cond_0
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ": "

    .line 1870
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1871
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 611
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lihi;->y:Lorg/chromium/net/UrlRequest;

    throw v0

    .line 541
    :cond_1
    :try_start_3
    new-instance v7, Liho;

    .line 1957
    invoke-direct {v7}, Liho;-><init>()V

    .line 544
    iget-object v0, p0, Lihi;->o:Ljava/nio/channels/WritableByteChannel;

    if-nez v0, :cond_2

    .line 545
    new-instance v1, Lihl;

    .line 2491
    invoke-direct {v1}, Lihl;-><init>()V

    .line 546
    new-instance v0, Lihk;

    .line 3450
    invoke-direct {v0, p0, v1}, Lihk;-><init>(Lihi;Lihl;)V

    move-object v4, v0

    move-object v5, v1

    .line 551
    :goto_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 552
    :try_start_4
    invoke-virtual {p0}, Lihi;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 611
    iput-object v3, p0, Lihi;->y:Lorg/chromium/net/UrlRequest;

    goto :goto_2

    .line 549
    :cond_2
    :try_start_5
    new-instance v0, Lihn;

    iget-object v1, p0, Lihi;->o:Ljava/nio/channels/WritableByteChannel;

    .line 3473
    invoke-direct {v0, p0, v1}, Lihn;-><init>(Lihi;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v4, v0

    move-object v5, v3

    .line 549
    goto :goto_3

    .line 555
    :cond_3
    :try_start_6
    iget-object v0, p0, Lihi;->B:Lorg/chromium/net/CronetEngine;

    if-nez v0, :cond_4

    .line 556
    iget-object v0, p0, Lihi;->g:Landroid/content/Context;

    const-class v1, Lorg/chromium/net/CronetEngine;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/CronetEngine;

    iput-object v0, p0, Lihi;->B:Lorg/chromium/net/CronetEngine;

    .line 559
    :cond_4
    new-instance v0, Lorg/chromium/net/UrlRequest$Builder;

    invoke-virtual {p0}, Lihi;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lihi;->B:Lorg/chromium/net/CronetEngine;

    invoke-direct {v0, v1, v4, v7, v8}, Lorg/chromium/net/UrlRequest$Builder;-><init>(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;Lorg/chromium/net/CronetEngine;)V

    iget v1, p0, Lihi;->n:I

    .line 560
    invoke-virtual {v0, v1}, Lorg/chromium/net/UrlRequest$Builder;->a(I)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v8

    .line 561
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 562
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v1, v0}, Lorg/chromium/net/UrlRequest$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    goto :goto_4

    .line 567
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 566
    :cond_5
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lihi;->s:Z

    .line 567
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 569
    :try_start_9
    iget-object v0, p0, Lihi;->q:Liht;

    invoke-virtual {v0}, Liht;->d()V

    .line 571
    invoke-virtual {p0}, Lihi;->c()[B

    move-result-object v0

    .line 572
    if-eqz v0, :cond_6

    .line 573
    const-string v1, "Content-Type"

    invoke-virtual {p0}, Lihi;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Lorg/chromium/net/UrlRequest$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 574
    new-instance v1, Lihm;

    .line 4030
    invoke-direct {v1, v0}, Lihm;-><init>([B)V

    .line 574
    invoke-virtual {v8, v1, v7}, Lorg/chromium/net/UrlRequest$Builder;->a(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    .line 575
    iget-object v1, p0, Lihi;->q:Liht;

    array-length v0, v0

    int-to-long v10, v0

    invoke-virtual {v1, v10, v11}, Liht;->a(J)V

    .line 577
    invoke-virtual {p0}, Lihi;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 578
    invoke-virtual {p0}, Lihi;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lihi;->b(Ljava/lang/String;)V

    .line 597
    :cond_6
    invoke-virtual {v8}, Lorg/chromium/net/UrlRequest$Builder;->a()Lorg/chromium/net/UrlRequest;

    move-result-object v0

    iput-object v0, p0, Lihi;->y:Lorg/chromium/net/UrlRequest;

    .line 598
    iget-object v0, p0, Lihi;->y:Lorg/chromium/net/UrlRequest;

    invoke-interface {v0}, Lorg/chromium/net/UrlRequest;->a()V

    .line 599
    :goto_5
    iget-boolean v0, p0, Lihi;->s:Z

    if-nez v0, :cond_7

    .line 600
    invoke-virtual {v7}, Liho;->a()V

    goto :goto_5

    .line 604
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lihi;->y:Lorg/chromium/net/UrlRequest;

    .line 605
    if-nez v5, :cond_c

    move-object v1, v3

    .line 4412
    :goto_6
    iget-object v5, v4, Lihj;->b:Lorg/chromium/net/UrlResponseInfo;

    .line 5412
    iget-object v4, v4, Lihj;->a:Lorg/chromium/net/UrlRequestException;

    .line 5617
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lorg/chromium/net/UrlResponseInfo;->b()Ljava/util/Map;

    move-result-object v0

    const-string v6, "Content-Type"

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5618
    invoke-virtual {v5}, Lorg/chromium/net/UrlResponseInfo;->b()Ljava/util/Map;

    move-result-object v0

    const-string v6, "Content-Type"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lihi;->x:Ljava/lang/String;

    .line 5620
    :cond_8
    if-nez v5, :cond_d

    move v0, v2

    :goto_7
    invoke-virtual {p0, v0, v4}, Lihi;->a(ILjava/io/IOException;)V

    .line 5621
    iget v0, p0, Lihi;->k:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_e

    .line 5622
    iget-object v0, p0, Lihi;->j:Lihp;

    if-eqz v0, :cond_9

    .line 5623
    iget-object v0, p0, Lihi;->j:Lihp;

    invoke-virtual {v0}, Lihp;->c()V

    .line 5626
    :cond_9
    if-eqz v1, :cond_a

    iget-object v0, p0, Lihi;->q:Liht;

    invoke-virtual {v0}, Liht;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_a

    .line 5629
    iget-object v0, p0, Lihi;->q:Liht;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Liht;->b(J)V

    .line 5631
    :cond_a
    invoke-virtual {p0, v1}, Lihi;->a(Ljava/nio/ByteBuffer;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 611
    :cond_b
    :goto_8
    iput-object v3, p0, Lihi;->y:Lorg/chromium/net/UrlRequest;

    goto/16 :goto_2

    .line 605
    :cond_c
    :try_start_a
    invoke-virtual {v5}, Lihl;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    goto :goto_6

    .line 5620
    :cond_d
    invoke-virtual {v5}, Lorg/chromium/net/UrlResponseInfo;->a()I

    move-result v0

    goto :goto_7

    .line 5632
    :cond_e
    invoke-virtual {p0}, Lihi;->h()Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lihi;->k:I

    const/16 v2, 0x191

    if-eq v0, v2, :cond_b

    .line 5633
    iget-object v0, p0, Lihi;->x:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lihi;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_8
.end method

.method o()V
    .locals 2

    .prologue
    .line 652
    iget v0, p0, Lihi;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lihi;->z:I

    .line 653
    iget-object v0, p0, Lihi;->m:Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lihi;->b(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lihi;->z:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 655
    :try_start_0
    iget-object v0, p0, Lihi;->m:Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lihi;->c(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lihi;->u:Lihs;

    invoke-interface {v0}, Lihs;->a()V

    .line 660
    :cond_0
    invoke-virtual {p0}, Lihi;->n()V

    .line 661
    invoke-virtual {p0}, Lihi;->o()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lihi;->a(ILjava/io/IOException;)V

    .line 669
    :cond_1
    iget v0, p0, Lihi;->k:I

    iget-object v1, p0, Lihi;->m:Ljava/lang/Exception;

    invoke-virtual {p0, v0, v1}, Lihi;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method protected p()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 854
    iget-object v0, p0, Lihi;->m:Ljava/lang/Exception;

    .line 5757
    if-nez v0, :cond_1

    move v0, v1

    .line 854
    :goto_0
    if-nez v0, :cond_0

    .line 855
    const-string v0, "HttpOperation"

    invoke-virtual {p0}, Lihi;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Unexpected exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lihi;->m:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    :cond_0
    return-void

    .line 5759
    :cond_1
    instance-of v2, v0, Ljava/net/SocketException;

    if-eqz v2, :cond_2

    move v0, v1

    .line 5760
    goto :goto_0

    .line 5761
    :cond_2
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_3

    move v0, v1

    .line 5762
    goto :goto_0

    .line 5763
    :cond_3
    instance-of v2, v0, Ljavax/net/ssl/SSLException;

    if-eqz v2, :cond_4

    move v0, v1

    .line 5764
    goto :goto_0

    .line 5765
    :cond_4
    instance-of v2, v0, Lihf;

    if-eqz v2, :cond_5

    .line 5766
    check-cast v0, Lihf;

    invoke-virtual {v0}, Lihf;->a()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_5

    move v0, v1

    .line 5767
    goto :goto_0

    .line 5772
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q()V
    .locals 7

    .prologue
    .line 879
    const/4 v0, 0x0

    iget-object v1, p0, Lihi;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 881
    :try_start_0
    iget-object v0, p0, Lihi;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lihh;

    iget-object v3, p0, Lihi;->h:Lihw;

    invoke-virtual {v3}, Lihw;->b()Ljava/lang/String;

    move-result-object v3

    .line 882
    invoke-virtual {p0}, Lihi;->i()Ljava/lang/String;

    iget-object v4, p0, Lihi;->j:Lihp;

    iget v5, p0, Lihi;->k:I

    iget-object v6, p0, Lihi;->r:Ljava/lang/String;

    .line 881
    invoke-interface {v0, v3, v4, v5, v6}, Lihh;->a(Ljava/lang/String;Lihp;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 883
    :catch_0
    move-exception v0

    .line 884
    const-string v3, "HttpOperation"

    const-string v4, "Couldn\'t save network data"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 887
    :cond_0
    return-void
.end method

.method protected r()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 922
    iget-object v0, p0, Lihi;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 923
    iget-object v0, p0, Lihi;->v:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lihh;

    invoke-virtual {p0}, Lihi;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lihh;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    const/4 v0, 0x1

    .line 927
    :goto_1
    return v0

    .line 922
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 927
    goto :goto_1
.end method

.method public s()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 931
    iget-object v0, p0, Lihi;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 932
    iget-object v0, p0, Lihi;->v:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lihh;

    invoke-virtual {p0}, Lihi;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lihh;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    const/4 v0, 0x1

    .line 936
    :goto_1
    return v0

    .line 931
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 936
    goto :goto_1
.end method
