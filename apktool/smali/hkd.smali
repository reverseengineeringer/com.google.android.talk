.class public final enum Lhkd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhkd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhkd;

.field public static final enum b:Lhkd;

.field public static final enum c:Lhkd;

.field public static final enum d:Lhkd;

.field private static final synthetic e:[Lhkd;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lhkd;

    const-string v1, "SPEAKERPHONE"

    invoke-direct {v0, v1, v2}, Lhkd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhkd;->a:Lhkd;

    .line 49
    new-instance v0, Lhkd;

    const-string v1, "EARPIECE"

    invoke-direct {v0, v1, v3}, Lhkd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhkd;->b:Lhkd;

    .line 50
    new-instance v0, Lhkd;

    const-string v1, "BLUETOOTH_HEADSET"

    invoke-direct {v0, v1, v4}, Lhkd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhkd;->c:Lhkd;

    .line 51
    new-instance v0, Lhkd;

    const-string v1, "WIRED_HEADSET"

    invoke-direct {v0, v1, v5}, Lhkd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhkd;->d:Lhkd;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lhkd;

    sget-object v1, Lhkd;->a:Lhkd;

    aput-object v1, v0, v2

    sget-object v1, Lhkd;->b:Lhkd;

    aput-object v1, v0, v3

    sget-object v1, Lhkd;->c:Lhkd;

    aput-object v1, v0, v4

    sget-object v1, Lhkd;->d:Lhkd;

    aput-object v1, v0, v5

    sput-object v0, Lhkd;->e:[Lhkd;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhkd;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lhkd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhkd;

    return-object v0
.end method

.method public static values()[Lhkd;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lhkd;->e:[Lhkd;

    invoke-virtual {v0}, [Lhkd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhkd;

    return-object v0
.end method
