.class final enum Lmqh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmqh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lmqh;

.field public static final enum b:Lmqh;

.field public static final enum c:Lmqh;

.field public static final enum d:Lmqh;

.field public static final enum e:Lmqh;

.field public static final enum f:Lmqh;

.field public static final enum g:Lmqh;

.field public static final enum h:Lmqh;

.field public static final enum i:Lmqh;

.field private static final synthetic j:[Lmqh;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v0, Lmqh;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v3}, Lmqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmqh;->a:Lmqh;

    .line 105
    new-instance v0, Lmqh;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lmqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmqh;->b:Lmqh;

    .line 106
    new-instance v0, Lmqh;

    const-string v1, "REDIRECT_RECEIVED"

    invoke-direct {v0, v1, v5}, Lmqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmqh;->c:Lmqh;

    .line 107
    new-instance v0, Lmqh;

    const-string v1, "AWAITING_FOLLOW_REDIRECT"

    invoke-direct {v0, v1, v6}, Lmqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmqh;->d:Lmqh;

    .line 108
    new-instance v0, Lmqh;

    const-string v1, "AWAITING_READ"

    invoke-direct {v0, v1, v7}, Lmqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmqh;->e:Lmqh;

    .line 109
    new-instance v0, Lmqh;

    const-string v1, "READING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmqh;->f:Lmqh;

    .line 110
    new-instance v0, Lmqh;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmqh;->g:Lmqh;

    .line 111
    new-instance v0, Lmqh;

    const-string v1, "COMPLETE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lmqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmqh;->h:Lmqh;

    .line 112
    new-instance v0, Lmqh;

    const-string v1, "CANCELLED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmqh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmqh;->i:Lmqh;

    .line 103
    const/16 v0, 0x9

    new-array v0, v0, [Lmqh;

    sget-object v1, Lmqh;->a:Lmqh;

    aput-object v1, v0, v3

    sget-object v1, Lmqh;->b:Lmqh;

    aput-object v1, v0, v4

    sget-object v1, Lmqh;->c:Lmqh;

    aput-object v1, v0, v5

    sget-object v1, Lmqh;->d:Lmqh;

    aput-object v1, v0, v6

    sget-object v1, Lmqh;->e:Lmqh;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmqh;->f:Lmqh;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmqh;->g:Lmqh;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmqh;->h:Lmqh;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lmqh;->i:Lmqh;

    aput-object v2, v0, v1

    sput-object v0, Lmqh;->j:[Lmqh;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmqh;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lmqh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmqh;

    return-object v0
.end method

.method public static values()[Lmqh;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lmqh;->j:[Lmqh;

    invoke-virtual {v0}, [Lmqh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmqh;

    return-object v0
.end method
