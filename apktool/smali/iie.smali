.class public Liie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lihs;


# static fields
.field static final a:Limw;

.field private static g:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Limw;

    const-string v1, "debug.allowBackendOverride"

    invoke-direct {v0, v1}, Limw;-><init>(Ljava/lang/String;)V

    sput-object v0, Liie;->a:Limw;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Liie;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    .line 55
    invoke-direct/range {v0 .. v5}, Liie;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Liie;->b:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Liie;->c:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Liie;->d:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Liie;->f:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Liie;->e:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Liie;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 145
    invoke-static {p1}, Lorg/chromium/net/UserAgent;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " (gzip)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liie;->g:Ljava/lang/String;

    .line 147
    :cond_0
    sget-object v0, Liie;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v1, Lhq;

    invoke-direct {v1}, Lhq;-><init>()V

    .line 74
    const-string v0, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "User-Agent"

    iget-object v2, p0, Liie;->b:Landroid/content/Context;

    invoke-virtual {p0, v2}, Liie;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Liie;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Liie;->b:Landroid/content/Context;

    const-class v2, Liia;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liia;

    iget-object v2, p0, Liie;->d:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v2}, Liia;->a(Ljava/lang/String;)Liib;

    move-result-object v0

    .line 86
    iget-object v2, p0, Liie;->b:Landroid/content/Context;

    iget-object v3, p0, Liie;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Liib;->a(Landroid/content/Context;Ljava/lang/String;)Liic;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Liic;->a()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v0}, Liic;->b()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 95
    const-string v3, "Authorization"

    const-string v6, "Bearer "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "X-Auth-Time"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Liie;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "X-Goog-PageId"

    iget-object v2, p0, Liie;->f:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    const-string v0, "PUT"

    iget-object v2, p0, Liie;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const-string v0, "X-HTTP-Method-Override"

    const-string v2, "PUT"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_1
    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Liks;

    iget-object v2, p0, Liie;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Liks;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Liie;->b:Landroid/content/Context;

    .line 1038
    const-class v2, Lhtf;

    invoke-static {v1, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot obtain authentication token"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 95
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Liie;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    iget-object v0, p0, Liie;->b:Landroid/content/Context;

    const-class v1, Liia;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liia;

    iget-object v1, p0, Liie;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liia;->a(Ljava/lang/String;)Liib;

    move-result-object v0

    iget-object v1, p0, Liie;->b:Landroid/content/Context;

    iget-object v2, p0, Liie;->c:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1, v2}, Liib;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot invalidate authentication token"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
