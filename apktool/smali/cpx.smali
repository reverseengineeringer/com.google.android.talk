.class public final enum Lcpx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcpx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcpx;

.field public static final enum b:Lcpx;

.field public static final enum c:Lcpx;

.field public static final enum d:Lcpx;

.field public static final enum e:Lcpx;

.field public static final enum f:Lcpx;

.field private static final synthetic g:[Lcpx;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcpx;

    const-string v1, "INVITE"

    invoke-direct {v0, v1, v3}, Lcpx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcpx;->a:Lcpx;

    .line 24
    new-instance v0, Lcpx;

    const-string v1, "VIDEO_CALL"

    invoke-direct {v0, v1, v4}, Lcpx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcpx;->b:Lcpx;

    .line 25
    new-instance v0, Lcpx;

    const-string v1, "AUDIO_CALL"

    invoke-direct {v0, v1, v5}, Lcpx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcpx;->c:Lcpx;

    .line 26
    new-instance v0, Lcpx;

    const-string v1, "STICKER"

    invoke-direct {v0, v1, v6}, Lcpx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcpx;->d:Lcpx;

    .line 27
    new-instance v0, Lcpx;

    const-string v1, "EDIT_PARTICIPANTS"

    invoke-direct {v0, v1, v7}, Lcpx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcpx;->e:Lcpx;

    .line 28
    new-instance v0, Lcpx;

    const-string v1, "PEOPLE_LIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcpx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcpx;->f:Lcpx;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lcpx;

    sget-object v1, Lcpx;->a:Lcpx;

    aput-object v1, v0, v3

    sget-object v1, Lcpx;->b:Lcpx;

    aput-object v1, v0, v4

    sget-object v1, Lcpx;->c:Lcpx;

    aput-object v1, v0, v5

    sget-object v1, Lcpx;->d:Lcpx;

    aput-object v1, v0, v6

    sget-object v1, Lcpx;->e:Lcpx;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcpx;->f:Lcpx;

    aput-object v2, v0, v1

    sput-object v0, Lcpx;->g:[Lcpx;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcpx;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcpx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcpx;

    return-object v0
.end method

.method public static values()[Lcpx;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcpx;->g:[Lcpx;

    invoke-virtual {v0}, [Lcpx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcpx;

    return-object v0
.end method
