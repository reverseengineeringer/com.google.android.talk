.class final enum Lcic;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcic;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcic;

.field public static final enum b:Lcic;

.field public static final enum c:Lcic;

.field private static final synthetic d:[Lcic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    new-instance v0, Lcic;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcic;->a:Lcic;

    .line 128
    new-instance v0, Lcic;

    const-string v1, "SELF_MENU"

    invoke-direct {v0, v1, v3}, Lcic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcic;->b:Lcic;

    .line 129
    new-instance v0, Lcic;

    const-string v1, "PARTICIPANT_TRAY"

    invoke-direct {v0, v1, v4}, Lcic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcic;->c:Lcic;

    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [Lcic;

    sget-object v1, Lcic;->a:Lcic;

    aput-object v1, v0, v2

    sget-object v1, Lcic;->b:Lcic;

    aput-object v1, v0, v3

    sget-object v1, Lcic;->c:Lcic;

    aput-object v1, v0, v4

    sput-object v0, Lcic;->d:[Lcic;

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
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcic;
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcic;

    return-object v0
.end method

.method public static values()[Lcic;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcic;->d:[Lcic;

    invoke-virtual {v0}, [Lcic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcic;

    return-object v0
.end method
