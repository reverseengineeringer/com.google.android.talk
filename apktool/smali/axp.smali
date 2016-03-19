.class public final enum Laxp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laxp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Laxp;

.field public static final enum b:Laxp;

.field public static final enum c:Laxp;

.field public static final enum d:Laxp;

.field public static final enum e:Laxp;

.field public static final enum f:Laxp;

.field public static final enum g:Laxp;

.field public static final enum h:Laxp;

.field public static final enum i:Laxp;

.field public static final enum j:Laxp;

.field public static final enum k:Laxp;

.field private static final synthetic m:[Laxp;


# instance fields
.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 19
    new-instance v0, Laxp;

    const-string v1, "PERSONAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Laxp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxp;->a:Laxp;

    .line 20
    new-instance v0, Laxp;

    const-string v1, "PRIVATE_SHARED"

    invoke-direct {v0, v1, v4, v5}, Laxp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxp;->b:Laxp;

    .line 21
    new-instance v0, Laxp;

    const-string v1, "PUBLIC_SHARED"

    invoke-direct {v0, v1, v5, v6}, Laxp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxp;->c:Laxp;

    .line 22
    new-instance v0, Laxp;

    const-string v1, "FOLLOWING"

    invoke-direct {v0, v1, v6, v7}, Laxp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxp;->d:Laxp;

    .line 23
    new-instance v0, Laxp;

    const-string v1, "MY_CIRCLES"

    invoke-direct {v0, v1, v7, v8}, Laxp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxp;->e:Laxp;

    .line 24
    new-instance v0, Laxp;

    const-string v1, "VISIBLE_CIRCLE_MEMBERS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Laxp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxp;->f:Laxp;

    .line 25
    new-instance v0, Laxp;

    const-string v1, "EXTENDED"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Laxp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxp;->g:Laxp;

    .line 26
    new-instance v0, Laxp;

    const-string v1, "DOMAIN"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Laxp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxp;->h:Laxp;

    .line 27
    new-instance v0, Laxp;

    const-string v1, "PUBLIC"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Laxp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxp;->i:Laxp;

    .line 28
    new-instance v0, Laxp;

    const-string v1, "BLOCKED"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Laxp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxp;->j:Laxp;

    .line 29
    new-instance v0, Laxp;

    const-string v1, "ALL_CIRCLES"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Laxp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laxp;->k:Laxp;

    .line 18
    const/16 v0, 0xb

    new-array v0, v0, [Laxp;

    const/4 v1, 0x0

    sget-object v2, Laxp;->a:Laxp;

    aput-object v2, v0, v1

    sget-object v1, Laxp;->b:Laxp;

    aput-object v1, v0, v4

    sget-object v1, Laxp;->c:Laxp;

    aput-object v1, v0, v5

    sget-object v1, Laxp;->d:Laxp;

    aput-object v1, v0, v6

    sget-object v1, Laxp;->e:Laxp;

    aput-object v1, v0, v7

    sget-object v1, Laxp;->f:Laxp;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Laxp;->g:Laxp;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Laxp;->h:Laxp;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Laxp;->i:Laxp;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Laxp;->j:Laxp;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Laxp;->k:Laxp;

    aput-object v2, v0, v1

    sput-object v0, Laxp;->m:[Laxp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Laxp;->l:I

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laxp;
    .locals 1

    .prologue
    .line 18
    const-class v0, Laxp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laxp;

    return-object v0
.end method

.method public static values()[Laxp;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Laxp;->m:[Laxp;

    invoke-virtual {v0}, [Laxp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laxp;

    return-object v0
.end method
