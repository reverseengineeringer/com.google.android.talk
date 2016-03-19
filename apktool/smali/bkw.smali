.class public final enum Lbkw;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbkw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbkw;

.field public static final enum b:Lbkw;

.field public static final enum c:Lbkw;

.field public static final enum d:Lbkw;

.field private static final synthetic e:[Lbkw;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lbkw;

    const-string v1, "HANGOUTS_MESSAGE"

    invoke-direct {v0, v1, v2}, Lbkw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbkw;->a:Lbkw;

    .line 8
    new-instance v0, Lbkw;

    const-string v1, "SMS_MESSAGE"

    invoke-direct {v0, v1, v3}, Lbkw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbkw;->b:Lbkw;

    .line 9
    new-instance v0, Lbkw;

    const-string v1, "AUDIO_CALL"

    invoke-direct {v0, v1, v4}, Lbkw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbkw;->c:Lbkw;

    .line 10
    new-instance v0, Lbkw;

    const-string v1, "VIDEO_CALL"

    invoke-direct {v0, v1, v5}, Lbkw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbkw;->d:Lbkw;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lbkw;

    sget-object v1, Lbkw;->a:Lbkw;

    aput-object v1, v0, v2

    sget-object v1, Lbkw;->b:Lbkw;

    aput-object v1, v0, v3

    sget-object v1, Lbkw;->c:Lbkw;

    aput-object v1, v0, v4

    sget-object v1, Lbkw;->d:Lbkw;

    aput-object v1, v0, v5

    sput-object v0, Lbkw;->e:[Lbkw;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbkw;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lbkw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbkw;

    return-object v0
.end method

.method public static values()[Lbkw;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lbkw;->e:[Lbkw;

    invoke-virtual {v0}, [Lbkw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbkw;

    return-object v0
.end method
