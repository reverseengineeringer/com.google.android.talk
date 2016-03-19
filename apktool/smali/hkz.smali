.class public final enum Lhkz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhkz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhkz;

.field public static final enum b:Lhkz;

.field public static final enum c:Lhkz;

.field private static final synthetic d:[Lhkz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lhkz;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lhkz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhkz;->a:Lhkz;

    .line 23
    new-instance v0, Lhkz;

    const-string v1, "INSUFFICIENT_BANDWIDTH_FOR_VIDEO"

    invoke-direct {v0, v1, v3}, Lhkz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhkz;->b:Lhkz;

    .line 28
    new-instance v0, Lhkz;

    const-string v1, "SUFFICIENT_BANDWIDTH_FOR_VIDEO"

    invoke-direct {v0, v1, v4}, Lhkz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhkz;->c:Lhkz;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lhkz;

    sget-object v1, Lhkz;->a:Lhkz;

    aput-object v1, v0, v2

    sget-object v1, Lhkz;->b:Lhkz;

    aput-object v1, v0, v3

    sget-object v1, Lhkz;->c:Lhkz;

    aput-object v1, v0, v4

    sput-object v0, Lhkz;->d:[Lhkz;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhkz;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lhkz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhkz;

    return-object v0
.end method

.method public static values()[Lhkz;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lhkz;->d:[Lhkz;

    invoke-virtual {v0}, [Lhkz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhkz;

    return-object v0
.end method
