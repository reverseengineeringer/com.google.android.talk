.class final enum Lmqg;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmqg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lmqg;

.field public static final enum b:Lmqg;

.field public static final enum c:Lmqg;

.field public static final enum d:Lmqg;

.field private static final synthetic e:[Lmqg;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    new-instance v0, Lmqg;

    const-string v1, "AWAITING_READ_RESULT"

    invoke-direct {v0, v1, v2}, Lmqg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmqg;->a:Lmqg;

    .line 242
    new-instance v0, Lmqg;

    const-string v1, "AWAITING_REWIND_RESULT"

    invoke-direct {v0, v1, v3}, Lmqg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmqg;->b:Lmqg;

    .line 243
    new-instance v0, Lmqg;

    const-string v1, "UPLOADING"

    invoke-direct {v0, v1, v4}, Lmqg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmqg;->c:Lmqg;

    .line 244
    new-instance v0, Lmqg;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v5}, Lmqg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmqg;->d:Lmqg;

    .line 240
    const/4 v0, 0x4

    new-array v0, v0, [Lmqg;

    sget-object v1, Lmqg;->a:Lmqg;

    aput-object v1, v0, v2

    sget-object v1, Lmqg;->b:Lmqg;

    aput-object v1, v0, v3

    sget-object v1, Lmqg;->c:Lmqg;

    aput-object v1, v0, v4

    sget-object v1, Lmqg;->d:Lmqg;

    aput-object v1, v0, v5

    sput-object v0, Lmqg;->e:[Lmqg;

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
    .line 240
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmqg;
    .locals 1

    .prologue
    .line 240
    const-class v0, Lmqg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmqg;

    return-object v0
.end method

.method public static values()[Lmqg;
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lmqg;->e:[Lmqg;

    invoke-virtual {v0}, [Lmqg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmqg;

    return-object v0
.end method
