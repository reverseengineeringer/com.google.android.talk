.class public final enum Ljte;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljte;",
        ">;",
        "Lkog;"
    }
.end annotation


# static fields
.field public static final enum a:Ljte;

.field private static final synthetic b:[Ljte;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Ljte;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Ljte;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljte;->a:Ljte;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Ljte;

    const/4 v1, 0x0

    sget-object v2, Ljte;->a:Ljte;

    aput-object v2, v0, v1

    sput-object v0, Ljte;->b:[Ljte;

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

.method public static valueOf(Ljava/lang/String;)Ljte;
    .locals 1

    .prologue
    .line 7
    const-class v0, Ljte;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljte;

    return-object v0
.end method

.method public static values()[Ljte;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Ljte;->b:[Ljte;

    invoke-virtual {v0}, [Ljte;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljte;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1036
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 1014
    if-nez v0, :cond_0

    .line 1015
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    return-object v0
.end method
