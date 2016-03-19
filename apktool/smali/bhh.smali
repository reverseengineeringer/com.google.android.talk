.class public final enum Lbhh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbhh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbhh;

.field public static final enum b:Lbhh;

.field public static final enum c:Lbhh;

.field public static final enum d:Lbhh;

.field public static final enum e:Lbhh;

.field public static final enum f:Lbhh;

.field public static final enum g:Lbhh;

.field private static final synthetic h:[Lbhh;


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
    new-instance v0, Lbhh;

    const-string v1, "LOCATION_SHARING"

    invoke-direct {v0, v1, v3}, Lbhh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbhh;->a:Lbhh;

    .line 20
    new-instance v0, Lbhh;

    const-string v1, "GOOGLE_VOICE"

    invoke-direct {v0, v1, v4}, Lbhh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbhh;->b:Lbhh;

    .line 21
    new-instance v0, Lbhh;

    const-string v1, "CHANGE_INVITE_SETTINGS"

    invoke-direct {v0, v1, v5}, Lbhh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbhh;->c:Lbhh;

    .line 22
    new-instance v0, Lbhh;

    const-string v1, "HANGOUTS_ON_AIR"

    invoke-direct {v0, v1, v6}, Lbhh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbhh;->d:Lbhh;

    .line 23
    new-instance v0, Lbhh;

    const-string v1, "GOOGLE_PLUS"

    invoke-direct {v0, v1, v7}, Lbhh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbhh;->e:Lbhh;

    .line 24
    new-instance v0, Lbhh;

    const-string v1, "PHOTO_SHARING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lbhh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbhh;->f:Lbhh;

    .line 25
    new-instance v0, Lbhh;

    const-string v1, "GROUP_CONVERSATIONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lbhh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbhh;->g:Lbhh;

    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [Lbhh;

    sget-object v1, Lbhh;->a:Lbhh;

    aput-object v1, v0, v3

    sget-object v1, Lbhh;->b:Lbhh;

    aput-object v1, v0, v4

    sget-object v1, Lbhh;->c:Lbhh;

    aput-object v1, v0, v5

    sget-object v1, Lbhh;->d:Lbhh;

    aput-object v1, v0, v6

    sget-object v1, Lbhh;->e:Lbhh;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lbhh;->f:Lbhh;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbhh;->g:Lbhh;

    aput-object v2, v0, v1

    sput-object v0, Lbhh;->h:[Lbhh;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbhh;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lbhh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbhh;

    return-object v0
.end method

.method public static values()[Lbhh;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lbhh;->h:[Lbhh;

    invoke-virtual {v0}, [Lbhh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbhh;

    return-object v0
.end method
