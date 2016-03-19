.class public Lhcb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhca;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhcb;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lhca;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lhcb;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhca;

    .line 18
    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lhca;

    invoke-direct {v0, p1}, Lhca;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0}, Lhcb;->a(Lhca;)V

    .line 22
    :cond_0
    return-object v0
.end method

.method public a(Lhca;)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lhcb;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lhca;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method
