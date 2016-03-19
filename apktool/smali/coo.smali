.class public final enum Lcoo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcoo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcoo;

.field public static final enum b:Lcoo;

.field public static final enum c:Lcoo;

.field private static final synthetic f:[Lcoo;


# instance fields
.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-instance v0, Lcoo;

    const-string v1, "CALL_JOINED"

    const/16 v2, 0xa22

    const/16 v3, 0xa26

    invoke-direct {v0, v1, v4, v2, v3}, Lcoo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcoo;->a:Lcoo;

    .line 23
    new-instance v0, Lcoo;

    const-string v1, "MESSAGE_RECEIVED"

    const/16 v2, 0xa21

    const/16 v3, 0xa25

    invoke-direct {v0, v1, v5, v2, v3}, Lcoo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcoo;->b:Lcoo;

    .line 27
    new-instance v0, Lcoo;

    const-string v1, "MESSAGE_SENT"

    const/16 v2, 0xa20

    const/16 v3, 0xa24

    invoke-direct {v0, v1, v6, v2, v3}, Lcoo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcoo;->c:Lcoo;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcoo;

    sget-object v1, Lcoo;->a:Lcoo;

    aput-object v1, v0, v4

    sget-object v1, Lcoo;->b:Lcoo;

    aput-object v1, v0, v5

    sget-object v1, Lcoo;->c:Lcoo;

    aput-object v1, v0, v6

    sput-object v0, Lcoo;->f:[Lcoo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcoo;->d:I

    .line 37
    iput p4, p0, Lcoo;->e:I

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcoo;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcoo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcoo;

    return-object v0
.end method

.method public static values()[Lcoo;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcoo;->f:[Lcoo;

    invoke-virtual {v0}, [Lcoo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcoo;

    return-object v0
.end method
