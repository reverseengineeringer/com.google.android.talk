.class public final enum Leqh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leqh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Leqh;

.field public static final enum b:Leqh;

.field public static final enum c:Leqh;

.field public static final enum d:Leqh;

.field public static final enum e:Leqh;

.field private static final synthetic f:[Leqh;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Leqh;

    const-string v1, "CONTAIN"

    invoke-direct {v0, v1, v2}, Leqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqh;->a:Leqh;

    .line 28
    new-instance v0, Leqh;

    const-string v1, "COVER"

    invoke-direct {v0, v1, v3}, Leqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqh;->b:Leqh;

    .line 29
    new-instance v0, Leqh;

    const-string v1, "DEVICE"

    invoke-direct {v0, v1, v4}, Leqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqh;->c:Leqh;

    .line 30
    new-instance v0, Leqh;

    const-string v1, "HEIGHT"

    invoke-direct {v0, v1, v5}, Leqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqh;->d:Leqh;

    .line 31
    new-instance v0, Leqh;

    const-string v1, "WIDTH"

    invoke-direct {v0, v1, v6}, Leqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqh;->e:Leqh;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Leqh;

    sget-object v1, Leqh;->a:Leqh;

    aput-object v1, v0, v2

    sget-object v1, Leqh;->b:Leqh;

    aput-object v1, v0, v3

    sget-object v1, Leqh;->c:Leqh;

    aput-object v1, v0, v4

    sget-object v1, Leqh;->d:Leqh;

    aput-object v1, v0, v5

    sget-object v1, Leqh;->e:Leqh;

    aput-object v1, v0, v6

    sput-object v0, Leqh;->f:[Leqh;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leqh;
    .locals 1

    .prologue
    .line 26
    const-class v0, Leqh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leqh;

    return-object v0
.end method

.method public static values()[Leqh;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Leqh;->f:[Leqh;

    invoke-virtual {v0}, [Leqh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leqh;

    return-object v0
.end method
