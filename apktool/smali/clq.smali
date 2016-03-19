.class public final enum Lclq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lclq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lclq;

.field public static final enum b:Lclq;

.field public static final enum c:Lclq;

.field public static final enum d:Lclq;

.field public static final enum e:Lclq;

.field private static final synthetic h:[Lclq;


# instance fields
.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lclq;

    const-string v1, "INVITED_ONLY"

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->dz:I

    invoke-direct {v0, v1, v4, v2}, Lclq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclq;->a:Lclq;

    .line 14
    new-instance v0, Lclq;

    const-string v1, "DOMAIN_RESTRICTED"

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->cG:I

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->cH:I

    invoke-direct {v0, v1, v5, v2, v3}, Lclq;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lclq;->b:Lclq;

    .line 19
    new-instance v0, Lclq;

    const-string v1, "DOMAIN_WITH_EXTERNAL"

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->cI:I

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->cJ:I

    invoke-direct {v0, v1, v6, v2, v3}, Lclq;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lclq;->c:Lclq;

    .line 24
    new-instance v0, Lclq;

    const-string v1, "KNOCKABLE"

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->dD:I

    invoke-direct {v0, v1, v7, v2}, Lclq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclq;->d:Lclq;

    .line 27
    new-instance v0, Lclq;

    const-string v1, "OPEN"

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->er:I

    invoke-direct {v0, v1, v8, v2}, Lclq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lclq;->e:Lclq;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lclq;

    sget-object v1, Lclq;->a:Lclq;

    aput-object v1, v0, v4

    sget-object v1, Lclq;->b:Lclq;

    aput-object v1, v0, v5

    sget-object v1, Lclq;->c:Lclq;

    aput-object v1, v0, v6

    sget-object v1, Lclq;->d:Lclq;

    aput-object v1, v0, v7

    sget-object v1, Lclq;->e:Lclq;

    aput-object v1, v0, v8

    sput-object v0, Lclq;->h:[Lclq;

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
    .line 34
    invoke-direct {p0, p1, p2, p3, p3}, Lclq;-><init>(Ljava/lang/String;III)V

    .line 35
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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lclq;->f:I

    .line 40
    iput p4, p0, Lclq;->g:I

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lclq;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lclq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lclq;

    return-object v0
.end method

.method public static values()[Lclq;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lclq;->h:[Lclq;

    invoke-virtual {v0}, [Lclq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lclq;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lclq;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lclq;->f:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
