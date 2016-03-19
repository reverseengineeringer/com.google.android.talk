.class public final Lbhm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lbhl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lbhi;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbhm;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 5

    .prologue
    .line 15
    sget-object v0, Lbhm;->b:Lbhl;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lbhl;

    invoke-direct {v0}, Lbhl;-><init>()V

    sput-object v0, Lbhm;->b:Lbhl;

    .line 18
    :cond_0
    const-class v1, Lbhi;

    .line 1020
    const-class v0, Lawo;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    .line 1021
    const/4 v2, 0x2

    new-array v2, v2, [Lbhi;

    const/4 v3, 0x0

    new-instance v4, Lbho;

    invoke-direct {v4, v0}, Lbho;-><init>(Lawo;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lbhn;

    invoke-direct {v4, v0}, Lbhn;-><init>(Lawo;)V

    aput-object v4, v2, v3

    .line 18
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 20
    return-void
.end method
