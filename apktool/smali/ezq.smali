.class public final Lezq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Z

.field static final b:Lezs;

.field static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lezv;",
            ">;"
        }
    .end annotation
.end field

.field static d:Ljava/lang/Runnable;

.field private static final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    sget-object v0, Lezi;->t:Limx;

    sput-boolean v1, Lezq;->e:Z

    .line 43
    sget-object v0, Lezi;->x:Limx;

    sput-boolean v1, Lezq;->a:Z

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lezq;->e:Z

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lezt;

    invoke-direct {v0}, Lezt;-><init>()V

    sput-object v0, Lezq;->b:Lezs;

    .line 66
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lezq;->c:Ljava/util/Map;

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lezq;->d:Ljava/lang/Runnable;

    return-void

    .line 61
    :cond_0
    new-instance v0, Lezu;

    .line 1226
    invoke-direct {v0}, Lezu;-><init>()V

    .line 61
    sput-object v0, Lezq;->b:Lezs;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Lezv;
    .locals 3

    .prologue
    .line 73
    sget-object v1, Lezq;->c:Ljava/util/Map;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lezq;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezv;

    .line 75
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lezv;

    invoke-direct {v0, p0}, Lezv;-><init>(Ljava/lang/String;)V

    .line 77
    sget-object v2, Lezq;->c:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 137
    sget-object v1, Lezq;->c:Ljava/util/Map;

    monitor-enter v1

    .line 139
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lezq;->d:Ljava/lang/Runnable;

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lezq;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    sget-object v0, Lezq;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    invoke-static {v0}, Lezq;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezv;

    .line 149
    invoke-virtual {v0}, Lezv;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    invoke-virtual {v0}, Lezv;->b()Lezx;

    move-result-object v0

    .line 151
    iget-object v4, v0, Lezx;->a:Ljava/lang/String;

    iget-wide v6, v0, Lezx;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 160
    :cond_2
    sget-boolean v0, Lezq;->a:Z

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method
