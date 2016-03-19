.class public final enum Ldhm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldhm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldhm;

.field public static final enum b:Ldhm;

.field public static final enum c:Ldhm;

.field public static final enum d:Ldhm;

.field public static final enum e:Ldhm;

.field public static final enum f:Ldhm;

.field public static final enum g:Ldhm;

.field public static final enum h:Ldhm;

.field private static final synthetic i:[Ldhm;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Ldhm;

    const-string v1, "CREATE_NEW_GROUP_CONVERSATION"

    invoke-direct {v0, v1, v3}, Ldhm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldhm;->a:Ldhm;

    .line 10
    new-instance v0, Ldhm;

    const-string v1, "FORK_CONVERSATION"

    invoke-direct {v0, v1, v4}, Ldhm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldhm;->b:Ldhm;

    .line 12
    new-instance v0, Ldhm;

    const-string v1, "UPGRADE_TO_GROUPCHAT"

    invoke-direct {v0, v1, v5}, Ldhm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldhm;->c:Ldhm;

    .line 14
    new-instance v0, Ldhm;

    const-string v1, "INVITE_MORE_TO_GROUPCHAT"

    invoke-direct {v0, v1, v6}, Ldhm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldhm;->d:Ldhm;

    .line 16
    new-instance v0, Ldhm;

    const-string v1, "INVITE_MORE_TO_HANGOUT"

    invoke-direct {v0, v1, v7}, Ldhm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldhm;->e:Ldhm;

    .line 18
    new-instance v0, Ldhm;

    const-string v1, "INVITE_GAIA_IDS_TO_HANGOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ldhm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldhm;->f:Ldhm;

    .line 20
    new-instance v0, Ldhm;

    const-string v1, "CREATE_NEW_HANGOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ldhm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldhm;->g:Ldhm;

    .line 22
    new-instance v0, Ldhm;

    const-string v1, "CREATE_NEW_ONE_ON_ONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ldhm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldhm;->h:Ldhm;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Ldhm;

    sget-object v1, Ldhm;->a:Ldhm;

    aput-object v1, v0, v3

    sget-object v1, Ldhm;->b:Ldhm;

    aput-object v1, v0, v4

    sget-object v1, Ldhm;->c:Ldhm;

    aput-object v1, v0, v5

    sget-object v1, Ldhm;->d:Ldhm;

    aput-object v1, v0, v6

    sget-object v1, Ldhm;->e:Ldhm;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ldhm;->f:Ldhm;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ldhm;->g:Ldhm;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ldhm;->h:Ldhm;

    aput-object v2, v0, v1

    sput-object v0, Ldhm;->i:[Ldhm;

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

.method public static valueOf(Ljava/lang/String;)Ldhm;
    .locals 1

    .prologue
    .line 6
    const-class v0, Ldhm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldhm;

    return-object v0
.end method

.method public static values()[Ldhm;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Ldhm;->i:[Ldhm;

    invoke-virtual {v0}, [Ldhm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldhm;

    return-object v0
.end method
