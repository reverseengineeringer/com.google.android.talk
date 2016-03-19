.class final Lidm;
.super Liej;
.source "SourceFile"


# instance fields
.field private final h:Landroid/content/Context;

.field private final i:Ljava/lang/String;

.field private final j:Lieq;

.field private final k:Liet;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private n:Lorg/chromium/net/HttpUrlRequest;

.field private o:Ljava/lang/String;

.field private p:Liep;

.field private final q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lihs;Ljava/lang/String;Lieq;Liet;Ljava/lang/String;Ljava/lang/String;Liep;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p2}, Liej;-><init>(Lihs;)V

    .line 48
    iput-object p1, p0, Lidm;->h:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lidm;->i:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lidm;->k:Liet;

    .line 51
    iput-object p4, p0, Lidm;->j:Lieq;

    .line 52
    iput-object p6, p0, Lidm;->l:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lidm;->m:Ljava/lang/String;

    .line 54
    iput-object p8, p0, Lidm;->p:Liep;

    .line 55
    iput-boolean p9, p0, Lidm;->q:Z

    .line 56
    return-void
.end method


# virtual methods
.method public a()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 60
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p0}, Lidm;->j()Lihs;

    move-result-object v0

    iget-object v4, p0, Lidm;->i:Ljava/lang/String;

    invoke-interface {v0, v4}, Lihs;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 61
    const-string v0, "X-Upload-Content-Type"

    iget-object v4, p0, Lidm;->k:Liet;

    invoke-virtual {v4}, Liet;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lidm;->k:Liet;

    invoke-virtual {v0}, Liet;->k()J

    move-result-wide v4

    .line 63
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 64
    const-string v0, "X-Upload-Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    const-string v4, "X-Goog-Hash"

    const-string v5, "sha1="

    iget-object v0, p0, Lidm;->k:Liet;

    .line 68
    invoke-virtual {v0}, Liet;->i()Lidi;

    move-result-object v0

    invoke-virtual {v0}, Lidi;->c()[B

    move-result-object v0

    .line 1117
    invoke-static {v0, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lidm;->h:Landroid/content/Context;

    iget-object v4, p0, Lidm;->i:Ljava/lang/String;

    iget-object v5, p0, Lidm;->g:Lorg/chromium/net/HttpUrlRequestListener;

    invoke-static {v0, v4, v14, v3, v5}, Liff;->a(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;

    move-result-object v0

    iput-object v0, p0, Lidm;->n:Lorg/chromium/net/HttpUrlRequest;

    .line 72
    new-instance v3, Liyx;

    invoke-direct {v3}, Liyx;-><init>()V

    .line 73
    iget-object v0, p0, Lidm;->h:Landroid/content/Context;

    const-class v4, Lidn;

    invoke-static {v0, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    iget-object v4, p0, Lidm;->h:Landroid/content/Context;

    iget-object v0, p0, Lidm;->m:Ljava/lang/String;

    iget-object v5, p0, Lidm;->j:Lieq;

    iget-object v6, p0, Lidm;->k:Liet;

    iget-object v7, p0, Lidm;->p:Liep;

    iget-boolean v8, p0, Lidm;->q:Z

    .line 2040
    new-instance v9, Lizr;

    invoke-direct {v9}, Lizr;-><init>()V

    .line 2041
    invoke-virtual {v6}, Liet;->h()Lidi;

    move-result-object v10

    invoke-virtual {v10}, Lidi;->a()Ljava/lang/String;

    move-result-object v10

    .line 2042
    iput-object v0, v9, Lizr;->a:Ljava/lang/String;

    .line 2043
    invoke-virtual {v5}, Lieq;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lizr;->b:Ljava/lang/String;

    .line 2044
    invoke-virtual {v5}, Lieq;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lizr;->e:Ljava/lang/String;

    .line 2045
    invoke-virtual {v5}, Lieq;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lizr;->c:Ljava/lang/String;

    .line 2046
    invoke-virtual {v5}, Lieq;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lizr;->l:Ljava/lang/String;

    .line 2047
    iput-object v10, v9, Lizr;->w:Ljava/lang/String;

    .line 2154
    sget-object v0, Liep;->d:Liep;

    if-eq v7, v0, :cond_9

    move v0, v1

    .line 2048
    :goto_1
    if-eqz v0, :cond_b

    .line 2049
    invoke-static {v7}, Lidn;->a(Liep;)I

    move-result v0

    iput v0, v9, Lizr;->F:I

    .line 2050
    sget-object v0, Liep;->a:Liep;

    if-ne v7, v0, :cond_a

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lizr;->g:Ljava/lang/Boolean;

    .line 2055
    :goto_3
    if-eqz v8, :cond_1

    .line 2056
    invoke-static {v4}, Lidn;->a(Landroid/content/Context;)Lizm;

    move-result-object v0

    iput-object v0, v9, Lizr;->H:Lizm;

    .line 2059
    :cond_1
    invoke-virtual {v5}, Lieq;->h()Ljava/lang/String;

    move-result-object v0

    .line 2060
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2061
    invoke-static {v10}, Lidi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2063
    :cond_2
    iput-object v0, v9, Lizr;->k:Ljava/lang/String;

    .line 2064
    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v2

    iput-object v1, v9, Lizr;->z:[Ljava/lang/String;

    .line 2065
    invoke-virtual {v6}, Liet;->j()Ljava/lang/String;

    move-result-object v0

    .line 2066
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2067
    iput-object v0, v9, Lizr;->B:Ljava/lang/String;

    .line 2070
    :cond_3
    new-instance v0, Ljad;

    invoke-direct {v0}, Ljad;-><init>()V

    iput-object v0, v9, Lizr;->y:Ljad;

    .line 2071
    iget-object v0, v9, Lizr;->y:Ljad;

    invoke-virtual {v5}, Lieq;->l()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljad;->a:Ljava/lang/Integer;

    .line 2072
    invoke-virtual {v6}, Liet;->f()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lizr;->q:Ljava/lang/Long;

    .line 2074
    invoke-virtual {v6}, Liet;->l()Llfi;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2075
    new-instance v0, Lizl;

    invoke-direct {v0}, Lizl;-><init>()V

    iput-object v0, v9, Lizr;->u:Lizl;

    .line 2076
    iget-object v0, v9, Lizr;->u:Lizl;

    new-instance v1, Ljac;

    invoke-direct {v1}, Ljac;-><init>()V

    iput-object v1, v0, Lizl;->b:Ljac;

    .line 2077
    iget-object v0, v9, Lizr;->u:Lizl;

    iget-object v0, v0, Lizl;->b:Ljac;

    invoke-virtual {v6}, Liet;->l()Llfi;

    move-result-object v1

    iput-object v1, v0, Ljac;->a:Llfi;

    .line 2085
    :cond_4
    :goto_4
    invoke-virtual {v6}, Liet;->m()Lmcq;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2086
    new-instance v0, Lizn;

    invoke-direct {v0}, Lizn;-><init>()V

    iput-object v0, v9, Lizr;->v:Lizn;

    .line 2087
    iget-object v0, v9, Lizr;->v:Lizn;

    invoke-virtual {v6}, Liet;->m()Lmcq;

    move-result-object v1

    iput-object v1, v0, Lizn;->a:Lmcq;

    .line 2090
    :cond_5
    invoke-virtual {v6}, Liet;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lizr;->h:Ljava/lang/String;

    .line 2092
    invoke-virtual {v6}, Liet;->n()Ljae;

    move-result-object v0

    .line 2093
    if-eqz v0, :cond_6

    .line 2095
    iput-object v0, v9, Lizr;->E:Ljae;

    .line 2096
    iput-object v12, v9, Lizr;->w:Ljava/lang/String;

    .line 2097
    iput-object v12, v9, Lizr;->z:[Ljava/lang/String;

    .line 2098
    sget-object v0, Liep;->c:Liep;

    invoke-static {v0}, Lidn;->a(Liep;)I

    move-result v0

    iput v0, v9, Lizr;->F:I

    .line 2099
    iput v14, v9, Lizr;->C:I

    .line 2100
    iput-object v12, v9, Lizr;->g:Ljava/lang/Boolean;

    .line 2101
    iput-object v12, v9, Lizr;->k:Ljava/lang/String;

    .line 2102
    iput-object v12, v9, Lizr;->r:Ljava/lang/Long;

    .line 2103
    iput-object v12, v9, Lizr;->h:Ljava/lang/String;

    .line 2104
    iput-object v12, v9, Lizr;->v:Lizn;

    .line 2105
    iput-object v12, v9, Lizr;->s:Ljava/lang/Long;

    .line 2106
    iput-object v12, v9, Lizr;->q:Ljava/lang/Long;

    .line 2107
    iput-object v12, v9, Lizr;->y:Ljad;

    .line 2109
    new-instance v0, Llsh;

    invoke-direct {v0}, Llsh;-><init>()V

    iput-object v0, v9, Lizr;->D:Llsh;

    .line 74
    :cond_6
    iput-object v9, v3, Liyx;->a:Lizr;

    .line 76
    iget-object v1, p0, Lidm;->h:Landroid/content/Context;

    iget-object v2, p0, Lidm;->l:Ljava/lang/String;

    iget-object v0, p0, Lidm;->j:Lieq;

    .line 77
    invoke-virtual {v0}, Lieq;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x32

    .line 76
    :goto_5
    invoke-static {v1, v3, v2, v0}, Liil;->a(Landroid/content/Context;Llyi;Ljava/lang/String;I)V

    .line 79
    invoke-static {v3}, Llyi;->a(Llyi;)[B

    move-result-object v0

    .line 80
    iget-object v1, p0, Lidm;->n:Lorg/chromium/net/HttpUrlRequest;

    const-string v2, "application/x-protobuf"

    invoke-interface {v1, v2, v0}, Lorg/chromium/net/HttpUrlRequest;->a(Ljava/lang/String;[B)V

    .line 82
    const-string v0, "MediaUploader"

    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    const-string v0, "MediaUploader"

    invoke-virtual {v3}, Liyx;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v0, v1}, Laal;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_7
    return-void

    .line 68
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 2154
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 2050
    goto/16 :goto_2

    .line 2052
    :cond_b
    invoke-virtual {v6}, Liet;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v9, Lizr;->g:Ljava/lang/Boolean;

    goto/16 :goto_3

    .line 2078
    :cond_c
    invoke-virtual {v6}, Liet;->g()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v4, v0}, Laal;->d(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2079
    new-instance v0, Lizl;

    invoke-direct {v0}, Lizl;-><init>()V

    iput-object v0, v9, Lizr;->u:Lizl;

    .line 2080
    iget-object v0, v9, Lizr;->u:Lizl;

    new-instance v1, Ljac;

    invoke-direct {v1}, Ljac;-><init>()V

    iput-object v1, v0, Lizl;->b:Ljac;

    .line 2081
    iget-object v0, v9, Lizr;->u:Lizl;

    iget-object v0, v0, Lizl;->b:Ljac;

    new-instance v1, Llfi;

    invoke-direct {v1}, Llfi;-><init>()V

    iput-object v1, v0, Ljac;->a:Llfi;

    .line 2082
    iget-object v0, v9, Lizr;->u:Lizl;

    iget-object v0, v0, Lizl;->b:Ljac;

    iget-object v0, v0, Ljac;->a:Llfi;

    const/16 v1, 0x8

    iput v1, v0, Llfi;->b:I

    goto/16 :goto_4

    .line 77
    :cond_d
    const/16 v0, 0x64

    goto :goto_5
.end method

.method protected a(Lorg/chromium/net/HttpUrlRequest;)V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lidl;

    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->m()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lidl;-><init>(Ljava/util/Map;)V

    .line 97
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Lidl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lidm;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method protected b()Lorg/chromium/net/HttpUrlRequest;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lidm;->n:Lorg/chromium/net/HttpUrlRequest;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lidm;->o:Ljava/lang/String;

    return-object v0
.end method
