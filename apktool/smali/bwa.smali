.class public final Lbwa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lbvz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lbvg;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbwa;->a:Ljava/lang/String;

    .line 13
    const-class v0, Lbcr;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbwa;->b:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lbwa;->c:Lbvz;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lbvz;

    invoke-direct {v0}, Lbvz;-><init>()V

    sput-object v0, Lbwa;->c:Lbvz;

    .line 22
    :cond_0
    const-class v0, Lbvg;

    .line 1021
    new-instance v1, Lbvh;

    invoke-direct {v1, p0}, Lbvh;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 24
    return-void
.end method

.method public static a(Lilh;)V
    .locals 5

    .prologue
    .line 27
    sget-object v0, Lbwa;->c:Lbvz;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lbvz;

    invoke-direct {v0}, Lbvz;-><init>()V

    sput-object v0, Lbwa;->c:Lbvz;

    .line 30
    :cond_0
    const-class v0, Lbcr;

    .line 1030
    const/4 v1, 0x2

    new-array v1, v1, [Lbcr;

    const/4 v2, 0x0

    new-instance v3, Lbcr;

    const-class v4, Lbvr;

    invoke-direct {v3, v4}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lbcr;

    const-class v4, Lbvo;

    invoke-direct {v3, v4}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    .line 30
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 32
    return-void
.end method
