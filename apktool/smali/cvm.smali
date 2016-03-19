.class public final Lcvm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcvn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    sput-object v0, Lcvm;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcvn;
    .locals 3

    .prologue
    .line 181
    sget-object v1, Lcvm;->a:Ljava/util/Map;

    monitor-enter v1

    .line 182
    :try_start_0
    sget-object v0, Lcvm;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvn;

    .line 183
    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcvn;

    invoke-direct {v0, p0}, Lcvn;-><init>(Ljava/lang/String;)V

    .line 185
    sget-object v2, Lcvm;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    monitor-exit v1

    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
