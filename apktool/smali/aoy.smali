.class public final Laoy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Laow;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Laow;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 103
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoy;->a:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 114
    sget-object v1, Laoy;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const-string v1, "User-Agent"

    new-instance v2, Laoz;

    sget-object v3, Laoy;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Laoz;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    const-string v1, "Accept-Encoding"

    new-instance v2, Laoz;

    const-string v3, "identity"

    invoke-direct {v2, v3}, Laoz;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 119
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Laoy;->b:Ljava/util/Map;

    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v1, p0, Laoy;->c:Z

    .line 126
    sget-object v0, Laoy;->b:Ljava/util/Map;

    iput-object v0, p0, Laoy;->d:Ljava/util/Map;

    .line 127
    iput-boolean v1, p0, Laoy;->e:Z

    .line 128
    iput-boolean v1, p0, Laoy;->f:Z

    return-void
.end method


# virtual methods
.method public a()Laox;
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoy;->c:Z

    .line 224
    new-instance v0, Laox;

    iget-object v1, p0, Laoy;->d:Ljava/util/Map;

    invoke-direct {v0, v1}, Laox;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
