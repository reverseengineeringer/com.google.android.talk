.class public final enum Lhws;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhws;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhws;

.field public static final enum b:Lhws;

.field public static final enum c:Lhws;

.field private static final synthetic d:[Lhws;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lhws;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lhws;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhws;->a:Lhws;

    .line 49
    new-instance v0, Lhws;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v3}, Lhws;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhws;->b:Lhws;

    .line 51
    new-instance v0, Lhws;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v4}, Lhws;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhws;->c:Lhws;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lhws;

    sget-object v1, Lhws;->a:Lhws;

    aput-object v1, v0, v2

    sget-object v1, Lhws;->b:Lhws;

    aput-object v1, v0, v3

    sget-object v1, Lhws;->c:Lhws;

    aput-object v1, v0, v4

    sput-object v0, Lhws;->d:[Lhws;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhws;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lhws;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhws;

    return-object v0
.end method

.method public static values()[Lhws;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lhws;->d:[Lhws;

    invoke-virtual {v0}, [Lhws;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhws;

    return-object v0
.end method
