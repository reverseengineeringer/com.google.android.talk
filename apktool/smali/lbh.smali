.class public final enum Llbh;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llbh;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum a:Llbh;

.field private static final synthetic b:[Llbh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 453
    new-instance v0, Llbh;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Llbh;-><init>(Ljava/lang/String;)V

    sput-object v0, Llbh;->a:Llbh;

    .line 452
    const/4 v0, 0x1

    new-array v0, v0, [Llbh;

    const/4 v1, 0x0

    sget-object v2, Llbh;->a:Llbh;

    aput-object v2, v0, v1

    sput-object v0, Llbh;->b:[Llbh;

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
    .line 452
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llbh;
    .locals 1

    .prologue
    .line 452
    const-class v0, Llbh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llbh;

    return-object v0
.end method

.method public static values()[Llbh;
    .locals 1

    .prologue
    .line 452
    sget-object v0, Llbh;->b:[Llbh;

    invoke-virtual {v0}, [Llbh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llbh;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 455
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 456
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
