.class public final Lckg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lckf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcin;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lckg;->a:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 16
    sget-object v0, Lckg;->b:Lckf;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lckf;

    invoke-direct {v0}, Lckf;-><init>()V

    sput-object v0, Lckg;->b:Lckf;

    .line 19
    :cond_0
    const-class v0, Lcin;

    .line 1016
    const/4 v1, 0x1

    new-array v1, v1, [Lcin;

    const/4 v2, 0x0

    new-instance v3, Lckh;

    invoke-direct {v3}, Lckh;-><init>()V

    aput-object v3, v1, v2

    .line 19
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 21
    return-void
.end method
