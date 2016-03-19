.class public final enum Lhke;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhke;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhke;

.field public static final enum b:Lhke;

.field public static final enum c:Lhke;

.field public static final enum d:Lhke;

.field public static final enum e:Lhke;

.field public static final enum f:Lhke;

.field private static final synthetic g:[Lhke;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lhke;

    const-string v1, "SPEAKERPHONE_ON"

    invoke-direct {v0, v1, v3}, Lhke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhke;->a:Lhke;

    .line 62
    new-instance v0, Lhke;

    const-string v1, "EARPIECE_ON"

    invoke-direct {v0, v1, v4}, Lhke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhke;->b:Lhke;

    .line 64
    new-instance v0, Lhke;

    const-string v1, "WIRED_HEADSET_ON"

    invoke-direct {v0, v1, v5}, Lhke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhke;->c:Lhke;

    .line 66
    new-instance v0, Lhke;

    const-string v1, "BLUETOOTH_ON"

    invoke-direct {v0, v1, v6}, Lhke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhke;->d:Lhke;

    .line 71
    new-instance v0, Lhke;

    const-string v1, "BLUETOOTH_TURNING_ON"

    invoke-direct {v0, v1, v7}, Lhke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhke;->e:Lhke;

    .line 76
    new-instance v0, Lhke;

    const-string v1, "BLUETOOTH_TURNING_OFF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lhke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhke;->f:Lhke;

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [Lhke;

    sget-object v1, Lhke;->a:Lhke;

    aput-object v1, v0, v3

    sget-object v1, Lhke;->b:Lhke;

    aput-object v1, v0, v4

    sget-object v1, Lhke;->c:Lhke;

    aput-object v1, v0, v5

    sget-object v1, Lhke;->d:Lhke;

    aput-object v1, v0, v6

    sget-object v1, Lhke;->e:Lhke;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lhke;->f:Lhke;

    aput-object v2, v0, v1

    sput-object v0, Lhke;->g:[Lhke;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhke;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lhke;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhke;

    return-object v0
.end method

.method public static values()[Lhke;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lhke;->g:[Lhke;

    invoke-virtual {v0}, [Lhke;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhke;

    return-object v0
.end method
