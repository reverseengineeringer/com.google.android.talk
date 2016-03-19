.class public final enum Lbkr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbkr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbkr;

.field public static final enum b:Lbkr;

.field public static final enum c:Lbkr;

.field public static final enum d:Lbkr;

.field public static final enum e:Lbkr;

.field public static final enum f:Lbkr;

.field private static final synthetic g:[Lbkr;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lbkr;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lbkr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbkr;->a:Lbkr;

    .line 23
    new-instance v0, Lbkr;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v4}, Lbkr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbkr;->b:Lbkr;

    .line 28
    new-instance v0, Lbkr;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v5}, Lbkr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbkr;->c:Lbkr;

    .line 33
    new-instance v0, Lbkr;

    const-string v1, "STICKER"

    invoke-direct {v0, v1, v6}, Lbkr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbkr;->d:Lbkr;

    .line 38
    new-instance v0, Lbkr;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v7}, Lbkr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbkr;->e:Lbkr;

    .line 43
    new-instance v0, Lbkr;

    const-string v1, "PLUS_PHOTO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lbkr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbkr;->f:Lbkr;

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Lbkr;

    sget-object v1, Lbkr;->a:Lbkr;

    aput-object v1, v0, v3

    sget-object v1, Lbkr;->b:Lbkr;

    aput-object v1, v0, v4

    sget-object v1, Lbkr;->c:Lbkr;

    aput-object v1, v0, v5

    sget-object v1, Lbkr;->d:Lbkr;

    aput-object v1, v0, v6

    sget-object v1, Lbkr;->e:Lbkr;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lbkr;->f:Lbkr;

    aput-object v2, v0, v1

    sput-object v0, Lbkr;->g:[Lbkr;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbkr;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lbkr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbkr;

    return-object v0
.end method

.method public static values()[Lbkr;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lbkr;->g:[Lbkr;

    invoke-virtual {v0}, [Lbkr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbkr;

    return-object v0
.end method
