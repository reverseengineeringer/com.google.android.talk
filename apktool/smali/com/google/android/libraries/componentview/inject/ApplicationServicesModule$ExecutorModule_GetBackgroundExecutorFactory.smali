.class public final enum Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;",
        ">;",
        "Lkog;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;

.field private static final synthetic b:[Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;->a:Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;->a:Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;->b:[Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;

    return-object v0
.end method

.method public static values()[Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;->b:[Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;

    invoke-virtual {v0}, [Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/componentview/inject/ApplicationServicesModule$ExecutorModule_GetBackgroundExecutorFactory;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1079
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1015
    if-nez v0, :cond_0

    .line 1016
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    return-object v0
.end method
