.class public final enum Liep;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Liep;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Liep;

.field public static final enum b:Liep;

.field public static final enum c:Liep;

.field public static final enum d:Liep;

.field private static final synthetic e:[Liep;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Liep;

    const-string v1, "STANDARD"

    invoke-direct {v0, v1, v2}, Liep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liep;->a:Liep;

    .line 17
    new-instance v0, Liep;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v3}, Liep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liep;->b:Liep;

    .line 22
    new-instance v0, Liep;

    const-string v1, "USE_MANUAL_UPLOAD_SERVER_SETTING"

    invoke-direct {v0, v1, v4}, Liep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liep;->c:Liep;

    .line 26
    new-instance v0, Liep;

    const-string v1, "NO_POLICY"

    invoke-direct {v0, v1, v5}, Liep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liep;->d:Liep;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Liep;

    sget-object v1, Liep;->a:Liep;

    aput-object v1, v0, v2

    sget-object v1, Liep;->b:Liep;

    aput-object v1, v0, v3

    sget-object v1, Liep;->c:Liep;

    aput-object v1, v0, v4

    sget-object v1, Liep;->d:Liep;

    aput-object v1, v0, v5

    sput-object v0, Liep;->e:[Liep;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Liep;
    .locals 1

    .prologue
    .line 8
    const-class v0, Liep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Liep;

    return-object v0
.end method

.method public static values()[Liep;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Liep;->e:[Liep;

    invoke-virtual {v0}, [Liep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liep;

    return-object v0
.end method
