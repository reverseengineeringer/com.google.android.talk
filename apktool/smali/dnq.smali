.class public final enum Ldnq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldnq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldnq;

.field public static final enum b:Ldnq;

.field public static final enum c:Ldnq;

.field public static final enum d:Ldnq;

.field private static final synthetic e:[Ldnq;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Ldnq;

    const-string v1, "PHONE_ACL"

    invoke-direct {v0, v1, v2}, Ldnq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldnq;->a:Ldnq;

    .line 122
    new-instance v0, Ldnq;

    const-string v1, "EMAIL_ACL"

    invoke-direct {v0, v1, v3}, Ldnq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldnq;->b:Ldnq;

    .line 124
    new-instance v0, Ldnq;

    const-string v1, "PUBLIC_ACL"

    invoke-direct {v0, v1, v4}, Ldnq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldnq;->c:Ldnq;

    .line 126
    new-instance v0, Ldnq;

    const-string v1, "CIRCLE_ACL"

    invoke-direct {v0, v1, v5}, Ldnq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldnq;->d:Ldnq;

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [Ldnq;

    sget-object v1, Ldnq;->a:Ldnq;

    aput-object v1, v0, v2

    sget-object v1, Ldnq;->b:Ldnq;

    aput-object v1, v0, v3

    sget-object v1, Ldnq;->c:Ldnq;

    aput-object v1, v0, v4

    sget-object v1, Ldnq;->d:Ldnq;

    aput-object v1, v0, v5

    sput-object v0, Ldnq;->e:[Ldnq;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldnq;
    .locals 1

    .prologue
    .line 118
    const-class v0, Ldnq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldnq;

    return-object v0
.end method

.method public static values()[Ldnq;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Ldnq;->e:[Ldnq;

    invoke-virtual {v0}, [Ldnq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldnq;

    return-object v0
.end method
