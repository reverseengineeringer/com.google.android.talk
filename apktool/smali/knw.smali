.class abstract enum Lknw;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lknw;",
        ">;",
        "Lkns",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lknw;

.field public static final enum b:Lknw;

.field public static final enum c:Lknw;

.field public static final enum d:Lknw;

.field private static final synthetic e:[Lknw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 269
    new-instance v0, Lknx;

    const-string v1, "ALWAYS_TRUE"

    invoke-direct {v0, v1}, Lknx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lknw;->a:Lknw;

    .line 281
    new-instance v0, Lkny;

    const-string v1, "ALWAYS_FALSE"

    invoke-direct {v0, v1}, Lkny;-><init>(Ljava/lang/String;)V

    sput-object v0, Lknw;->b:Lknw;

    .line 293
    new-instance v0, Lknz;

    const-string v1, "IS_NULL"

    invoke-direct {v0, v1}, Lknz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lknw;->c:Lknw;

    .line 305
    new-instance v0, Lkoa;

    const-string v1, "NOT_NULL"

    invoke-direct {v0, v1}, Lkoa;-><init>(Ljava/lang/String;)V

    sput-object v0, Lknw;->d:Lknw;

    .line 267
    const/4 v0, 0x4

    new-array v0, v0, [Lknw;

    const/4 v1, 0x0

    sget-object v2, Lknw;->a:Lknw;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lknw;->b:Lknw;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lknw;->c:Lknw;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lknw;->d:Lknw;

    aput-object v2, v0, v1

    sput-object v0, Lknw;->e:[Lknw;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lknw;
    .locals 1

    .prologue
    .line 267
    const-class v0, Lknw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lknw;

    return-object v0
.end method

.method public static values()[Lknw;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lknw;->e:[Lknw;

    invoke-virtual {v0}, [Lknw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lknw;

    return-object v0
.end method


# virtual methods
.method a()Lkns;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkns",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 319
    return-object p0
.end method
