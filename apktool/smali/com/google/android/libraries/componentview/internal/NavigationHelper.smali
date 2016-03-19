.class public Lcom/google/android/libraries/componentview/internal/NavigationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/libraries/componentview/services/application/Navigator;

.field private final b:Lcom/google/android/libraries/componentview/services/application/Logger;

.field private final c:Lcom/google/android/libraries/componentview/services/application/Notification;

.field private final d:Lcom/google/android/libraries/componentview/services/application/Fetcher;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/componentview/services/application/Navigator;Lcom/google/android/libraries/componentview/services/application/Logger;Lcom/google/android/libraries/componentview/services/application/Notification;Lcom/google/android/libraries/componentview/services/application/Fetcher;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation runtime Lcom/google/android/libraries/componentview/inject/annotations/ExecutorType$UI;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->a:Lcom/google/android/libraries/componentview/services/application/Navigator;

    .line 55
    iput-object p2, p0, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->b:Lcom/google/android/libraries/componentview/services/application/Logger;

    .line 56
    iput-object p3, p0, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->c:Lcom/google/android/libraries/componentview/services/application/Notification;

    .line 57
    iput-object p4, p0, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->d:Lcom/google/android/libraries/componentview/services/application/Fetcher;

    .line 58
    iput-object p5, p0, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->e:Ljava/util/concurrent/Executor;

    .line 59
    return-void
.end method


# virtual methods
.method a(Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;)V
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->g()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    const-string v1, "action_type"

    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;)V
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->h()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1112
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    iget-object v1, p0, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->d:Lcom/google/android/libraries/componentview/services/application/Fetcher;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/libraries/componentview/services/application/Fetcher;->a(Ljava/net/URI;Z)Llbb;

    move-result-object v0

    .line 1119
    new-instance v1, Lcom/google/android/libraries/componentview/internal/NavigationHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/componentview/internal/NavigationHelper$1;-><init>(Lcom/google/android/libraries/componentview/internal/NavigationHelper;Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;)V

    iget-object v2, p0, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Llau;->a(Llbb;Llat;Ljava/util/concurrent/Executor;)V

    .line 1115
    :goto_0
    return-void

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    const-string v1, "NavigationHelper"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2072
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2088
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2089
    iget-object v0, p0, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->a:Lcom/google/android/libraries/componentview/services/application/Navigator;

    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/componentview/services/application/Navigator;->a(Ljava/lang/String;)V

    .line 67
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->a(Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;)V

    goto :goto_0

    .line 2076
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2077
    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2078
    const-string v1, "ved"

    invoke-virtual {p2}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2079
    iget-object v1, p0, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->b:Lcom/google/android/libraries/componentview/services/application/Logger;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/libraries/componentview/services/application/Logger;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 2080
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2081
    iget-object v0, p0, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->b:Lcom/google/android/libraries/componentview/services/application/Logger;

    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/libraries/componentview/services/application/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2083
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->b:Lcom/google/android/libraries/componentview/services/application/Logger;

    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$LogInfo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/libraries/componentview/services/application/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2090
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2091
    iget-object v0, p0, Lcom/google/android/libraries/componentview/internal/NavigationHelper;->a:Lcom/google/android/libraries/componentview/services/application/Navigator;

    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/componentview/services/application/Navigator;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 2095
    :cond_6
    const-string v1, "NavigationHelper"

    const-string v2, "No way to handle action: "

    invoke-virtual {p1}, Lcom/google/android/libraries/componentview/components/base/api/nano/ActionProto$Action;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method
