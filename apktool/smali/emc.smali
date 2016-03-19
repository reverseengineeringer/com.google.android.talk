.class public final enum Lemc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lemc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lemc;

.field public static final enum b:Lemc;

.field public static final enum c:Lemc;

.field public static final enum d:Lemc;

.field public static final enum e:Lemc;

.field public static final enum f:Lemc;

.field public static final enum g:Lemc;

.field public static final enum h:Lemc;

.field public static final enum i:Lemc;

.field private static final synthetic j:[Lemc;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lemc;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lemc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemc;->a:Lemc;

    .line 14
    new-instance v0, Lemc;

    const-string v1, "QUEUED"

    invoke-direct {v0, v1, v4}, Lemc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemc;->b:Lemc;

    .line 18
    new-instance v0, Lemc;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v5}, Lemc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemc;->c:Lemc;

    .line 21
    new-instance v0, Lemc;

    const-string v1, "FAILED_TO_SEND"

    invoke-direct {v0, v1, v6}, Lemc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemc;->d:Lemc;

    .line 27
    new-instance v0, Lemc;

    const-string v1, "ON_SERVER"

    invoke-direct {v0, v1, v7}, Lemc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemc;->e:Lemc;

    .line 33
    new-instance v0, Lemc;

    const-string v1, "PENDING_DELETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lemc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemc;->f:Lemc;

    .line 36
    new-instance v0, Lemc;

    const-string v1, "LOCAL_SYSTEM_MESSAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lemc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemc;->g:Lemc;

    .line 39
    new-instance v0, Lemc;

    const-string v1, "UPLOADING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lemc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemc;->h:Lemc;

    .line 43
    new-instance v0, Lemc;

    const-string v1, "AWAIT_READY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lemc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lemc;->i:Lemc;

    .line 9
    const/16 v0, 0x9

    new-array v0, v0, [Lemc;

    sget-object v1, Lemc;->a:Lemc;

    aput-object v1, v0, v3

    sget-object v1, Lemc;->b:Lemc;

    aput-object v1, v0, v4

    sget-object v1, Lemc;->c:Lemc;

    aput-object v1, v0, v5

    sget-object v1, Lemc;->d:Lemc;

    aput-object v1, v0, v6

    sget-object v1, Lemc;->e:Lemc;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lemc;->f:Lemc;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lemc;->g:Lemc;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lemc;->h:Lemc;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lemc;->i:Lemc;

    aput-object v2, v0, v1

    sput-object v0, Lemc;->j:[Lemc;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lemc;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lemc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lemc;

    return-object v0
.end method

.method public static values()[Lemc;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lemc;->j:[Lemc;

    invoke-virtual {v0}, [Lemc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lemc;

    return-object v0
.end method
