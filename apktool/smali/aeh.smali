.class public final Laeh;
.super Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.source "SourceFile"


# static fields
.field private static final a:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Laeh;->a:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 36
    iput-boolean p2, p0, Laeh;->b:Z

    .line 37
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 49
    iget-boolean v5, p0, Laeh;->b:Z

    if-eqz v5, :cond_1

    instance-of v5, v4, Ljava/net/Inet6Address;

    if-eqz v5, :cond_1

    .line 50
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    iget-boolean v5, p0, Laeh;->b:Z

    if-nez v5, :cond_0

    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    :cond_2
    return-object v1
.end method


# virtual methods
.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 14

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Connection must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_0
    if-nez p2, :cond_1

    .line 70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Target host must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_1
    if-nez p5, :cond_2

    .line 76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parameters must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Connection must not be open."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_3
    iget-object v2, p0, Laeh;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v12

    .line 85
    invoke-virtual {v12}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v9

    .line 88
    instance-of v2, v9, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v2, :cond_7

    .line 89
    sget-object v3, Laeh;->a:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-object v2, v9

    .line 90
    check-cast v2, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-object v10, v2

    move-object v2, v3

    .line 96
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Laeh;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 98
    const/4 v3, 0x0

    move v11, v3

    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_6

    .line 99
    invoke-interface {v2}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    .line 100
    move-object/from16 v0, p2

    invoke-interface {p1, v3, v0}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 104
    :try_start_0
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-virtual {v12, v5}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v5

    const/4 v7, 0x0

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    .line 103
    invoke-interface/range {v2 .. v8}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v4

    .line 107
    if-eq v3, v4, :cond_4

    .line 109
    move-object/from16 v0, p2

    invoke-interface {p1, v4, v0}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    move-object v3, v4

    .line 122
    :cond_4
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v3, v0, v1}, Laeh;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 123
    if-eqz v10, :cond_8

    .line 125
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-virtual {v12, v5}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v5

    const/4 v6, 0x1

    .line 124
    invoke-interface {v10, v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    .line 128
    if-eq v4, v3, :cond_5

    .line 129
    move-object/from16 v0, p2

    invoke-interface {p1, v4, v0}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 131
    :cond_5
    invoke-interface {v9, v4}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v3

    move-object/from16 v0, p5

    invoke-interface {p1, v3, v0}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    .line 153
    :cond_6
    :goto_2
    return-void

    .line 93
    :cond_7
    const/4 v2, 0x0

    move-object v10, v2

    move-object v2, v9

    goto :goto_0

    .line 133
    :cond_8
    invoke-interface {v9, v3}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v3

    move-object/from16 v0, p5

    invoke-interface {p1, v3, v0}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 138
    :catch_0
    move-exception v3

    .line 139
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v11, v4, :cond_a

    .line 140
    instance-of v2, v3, Ljava/net/ConnectException;

    if-eqz v2, :cond_9

    move-object v2, v3

    .line 141
    check-cast v2, Ljava/net/ConnectException;

    .line 144
    :goto_3
    new-instance v3, Lorg/apache/http/conn/HttpHostConnectException;

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v2}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v3

    .line 142
    :cond_9
    new-instance v2, Ljava/net/ConnectException;

    .line 143
    invoke-virtual {v3}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/net/ConnectException;

    goto :goto_3

    .line 147
    :catch_1
    move-exception v3

    .line 148
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v11, v4, :cond_a

    .line 149
    throw v3

    .line 98
    :cond_a
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto/16 :goto_1
.end method
