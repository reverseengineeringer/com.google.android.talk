.class public Lcom/google/android/libraries/componentview/services/internal/Graft;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lknk;

.field private static final b:Lknk;


# instance fields
.field private final c:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

.field private final d:Lcom/google/android/libraries/componentview/services/internal/Graft$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x2e

    invoke-static {v0}, Lknk;->a(C)Lknk;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/componentview/services/internal/Graft;->a:Lknk;

    .line 14
    const/16 v0, 0x3b

    invoke-static {v0}, Lknk;->a(C)Lknk;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/componentview/services/internal/Graft;->b:Lknk;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;Lcom/google/android/libraries/componentview/services/internal/Graft$Action;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/libraries/componentview/services/internal/Graft;->c:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    .line 22
    iput-object p2, p0, Lcom/google/android/libraries/componentview/services/internal/Graft;->d:Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    .line 23
    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/componentview/services/internal/Graft;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, ""

    .line 58
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/componentview/services/internal/Graft;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/services/internal/Graft;->a()Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 52
    sget-object v4, Lcom/google/android/libraries/componentview/services/internal/Graft;->a:Lknk;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/services/internal/Graft;->a()Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;->f()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/services/internal/Graft;->b()Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/componentview/services/internal/Graft$Action;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    .line 1454
    invoke-static {v7}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    new-instance v0, Lknm;

    invoke-direct {v0, v7, v5, v6}, Lknm;-><init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1217
    invoke-virtual {v4, v0}, Lknk;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 57
    :cond_2
    sget-object v0, Lcom/google/android/libraries/componentview/services/internal/Graft;->b:Lknk;

    invoke-virtual {v0, v2}, Lknk;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/internal/Graft;->c:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;

    return-object v0
.end method

.method public b()Lcom/google/android/libraries/componentview/services/internal/Graft$Action;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/internal/Graft;->d:Lcom/google/android/libraries/componentview/services/internal/Graft$Action;

    return-object v0
.end method
