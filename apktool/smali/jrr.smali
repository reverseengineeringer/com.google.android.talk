.class public final enum Ljrr;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljrr;",
        ">;",
        "Lkog;"
    }
.end annotation


# static fields
.field public static final enum a:Ljrr;

.field private static final synthetic b:[Ljrr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Ljrr;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Ljrr;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljrr;->a:Ljrr;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Ljrr;

    const/4 v1, 0x0

    sget-object v2, Ljrr;->a:Ljrr;

    aput-object v2, v0, v1

    sput-object v0, Ljrr;->b:[Ljrr;

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

.method public static valueOf(Ljava/lang/String;)Ljrr;
    .locals 1

    .prologue
    .line 7
    const-class v0, Ljrr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljrr;

    return-object v0
.end method

.method public static values()[Ljrr;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Ljrr;->b:[Ljrr;

    invoke-virtual {v0}, [Ljrr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljrr;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1033
    new-instance v0, Llbm;

    invoke-direct {v0}, Llbm;-><init>()V

    .line 1037
    invoke-virtual {v0}, Llbm;->a()Llbm;

    move-result-object v0

    const-string v1, "Blocking Thread #%d"

    .line 1038
    invoke-virtual {v0, v1}, Llbm;->a(Ljava/lang/String;)Llbm;

    move-result-object v0

    new-instance v1, Ljrp;

    invoke-direct {v1}, Ljrp;-><init>()V

    .line 1039
    invoke-virtual {v0, v1}, Llbm;->a(Ljava/util/concurrent/ThreadFactory;)Llbm;

    move-result-object v0

    .line 1053
    invoke-virtual {v0}, Llbm;->b()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 1035
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1033
    invoke-static {v0}, Laal;->a(Ljava/util/concurrent/ExecutorService;)Llbd;

    move-result-object v0

    .line 1016
    if-nez v0, :cond_0

    .line 1017
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    return-object v0
.end method
